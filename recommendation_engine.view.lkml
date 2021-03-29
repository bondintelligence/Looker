view: recommendation_engine {
  derived_table: {
    persist_for: "0 seconds"
    sql: SELECT Maturity AS Maturity, CUSIP AS CUSIP, The_yield_of_the_trade AS Yield,
        full_clusters AS Industry, Rating_Aggregate AS Risk FROM (
        SELECT Cluster, Maturity, CUSIP, The_yield_of_the_trade, full_clusters, Rating_Aggregate FROM (
        SELECT Cluster, Maturity, CUSIP, The_yield_of_the_trade, full_clusters, Rating_Aggregate,  ROW_NUMBER() OVER(PARTITION BY CUSIP ORDER BY row_num ASC) AS rn
        FROM `bi-model-development.rec_engine.muni_sklearn_clusters`) AS source
        WHERE source.Cluster = (
        SELECT
        CASE
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'High' AND form_input.Yield < 1.5 THEN 0
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'High' AND form_input.Yield <= 3.5 AND form_input.Yield >= 1.5 THEN 2
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'High' AND form_input.Yield > 3.5 THEN 1
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'Medium' AND form_input.Yield < 1.2 THEN 6
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'Medium' AND form_input.Yield <= 3 AND form_input.Yield >= 1.2 THEN 3
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'Medium' AND form_input.Yield > 3 THEN 5
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'Low' AND form_input.Yield < 2.5 THEN 7
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'Low' AND form_input.Yield <= 3.2 AND form_input.Yield >= 2.5 THEN 4
        WHEN form_input.Type = 'Municipal' AND form_input.Risk = 'Low' AND form_input.Yield > 3.2 THEN 8
        ELSE 3
        END AS Cluster
        FROM `bi-model-development.rec_engine.survey_responses` AS form_input
        WHERE form_input.Email = "{{_user_attributes['email'] }}"
        ORDER BY form_input.Timestamp DESC
        LIMIT 1) AND rn = 1
        ORDER BY (ABS((source.Maturity/42)
        - (SELECT Maturity FROM `bi-model-development.rec_engine.survey_responses` AS form_input
        WHERE form_input.Email = "{{_user_attributes['email'] }}" ORDER BY form_input.Timestamp DESC LIMIT 1)/42)
        + ABS((source.The_yield_of_the_trade/7)
        - (SELECT Yield FROM `bi-model-development.rec_engine.survey_responses` AS form_input
        WHERE form_input.Email = "{{_user_attributes['email'] }}" ORDER BY form_input.Timestamp DESC LIMIT 1)/7)
        + (CASE WHEN source.full_clusters = (SELECT Muni_Industry FROM `bi-model-development.rec_engine.survey_responses` AS form_input
        WHERE form_input.Email = "{{_user_attributes['email'] }}" ORDER BY form_input.Timestamp DESC LIMIT 1) THEN 0 ELSE 10 END)) ASC
        LIMIT 10)
        WHERE ((SELECT Type FROM `bi-model-development.rec_engine.survey_responses` AS form_input
        WHERE form_input.Email = "{{_user_attributes['email'] }}" ORDER BY form_input.Timestamp DESC LIMIT 1) = "Municipal")
        UNION ALL
        SELECT MATURITY AS Maturity, CUSIP AS CUSIP, YIELD AS Yield,
        BOND_TYPE AS Industry, RISK AS Risk FROM(SELECT
    a.CUSIP, c.BOND_TYPE, c.YIELD, c.RISK, c.MATURITY
FROM (
    WITH
        clusters AS (
            WITH
                hs AS (
                    SELECT
                    h.BOND_ID,
                    h.CUSIP,
                    h.BOND_TYPE,
                    h.MATURITY,
                    CAST(h.YIELD AS FLOAT64) AS YIELD,
                    CAST(h.RISK AS FLOAT64) AS RISK
                    FROM `bi-model-development.rec_engine.corp_clusters` AS h
                ),
                corpstats AS (
                    SELECT
                    AVG(yield) AS avg_yield,
                    STDDEV(yield) AS stddev_yield,
                    AVG(risk) AS avg_risk,
                    STDDEV(risk) AS stddev_risk,
                    APPROX_QUANTILES(risk, 100)[OFFSET(25)] AS q1_risk,
                    APPROX_QUANTILES(risk, 100)[OFFSET(50)] AS med_risk,
                    APPROX_QUANTILES(risk, 100)[OFFSET(75)] AS q3_risk,
                    AVG(maturity) AS avg_maturity,
                    STDDEV(maturity) AS stddev_maturity
                    FROM hs
                ),
                responses AS (
                    SELECT
                    Email,
                    Yield,
                    CASE
                        WHEN Risk = 'Low' THEN q1_risk
                        WHEN Risk = 'Medium' THEN med_risk
                        ELSE q3_risk
                    END AS Risk,
                    Maturity,
                    Corp_Type
                    FROM corpstats, `bi-model-development.rec_engine.survey_responses`
                    WHERE Email = "{{_user_attributes['email']}}"
                    ORDER BY Timestamp DESC
                    LIMIT 1
                ),
                prediction AS (
                    SELECT
                    Email,
                    (Yield - avg_yield) / stddev_yield AS Yield,
                    (Risk - avg_risk) / stddev_risk AS Risk,
                    (Maturity - avg_maturity) / stddev_maturity AS Maturity,
                    CASE
                        WHEN Corp_Type = 'Debenture' THEN 'CDEB'
                        WHEN Corp_Type = 'MTN Zero' THEN 'CMTZ'
                        ELSE 'CMTN'
                    END AS Corp_Type
                    FROM corpstats, responses
                )
            SELECT
                * EXCEPT(nearest_centroids_distance)
            FROM
                ML.PREDICT(MODEL `bi-model-development.rec_engine.corp_kmeans`,
                (
                SELECT
                    *
                FROM
                    prediction))
        )
    SELECT
        responses.*,
        clusters.CENTROID_ID,
        types.DATE,
        types.CUSIP,
        results.BOND_ID,
        POWER(POWER(clusters.Risk - results.risk, 2) + POWER(clusters.Yield - results.Yield, 2) + POWER(clusters.Maturity - results.MATURITY, 2), 0.5) AS Distance
    FROM
        clusters, `bi-model-development.rec_engine.corp_results` AS results
    JOIN
        (SELECT * FROM `bi-model-development.rec_engine.survey_responses` WHERE Email = "{{_user_attributes['email']}}" ORDER BY Timestamp DESC LIMIT 1) AS responses
    ON
        clusters.Email = responses.Email
    JOIN
        `bi-model-development.rec_engine.corp_clusters` AS types
    ON
        results.BOND_ID = types.BOND_ID
    WHERE
        clusters.CENTROID_ID = results.CENTROID_ID
        AND
        clusters.Corp_Type = types.BOND_TYPE
    ORDER BY
        DATE DESC
    ) AS a
JOIN
    (
        SELECT
            CUSIP,
            MAX(DATE) AS DATE
        FROM
            `bi-model-development.rec_engine.corp_clusters`
        GROUP BY
            CUSIP
        ORDER BY
            DATE DESC
    ) AS b
ON
    a.CUSIP = b.CUSIP AND a.DATE = b.DATE
JOIN
    `bi-model-development.rec_engine.corp_clusters` AS c
ON
    a.BOND_ID = c.BOND_ID
ORDER BY
    Distance
LIMIT 10)
        WHERE ((SELECT Type FROM `bi-model-development.rec_engine.survey_responses` AS form_input
        WHERE form_input.Email = "{{_user_attributes['email'] }}" ORDER BY form_input.Timestamp DESC LIMIT 1) = "Corporate" )
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: maturity {
    type: number
    sql: ${TABLE}.Maturity ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: yield {
    type: number
    sql: ${TABLE}.Yield ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: risk {
    type: number
    sql: ${TABLE}.Risk ;;
  }

  set: detail {
    fields: [maturity, cusip, yield, industry, risk]
  }
}
