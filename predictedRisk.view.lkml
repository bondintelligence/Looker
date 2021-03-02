view: predictedrisk {
  derived_table: {
    sql: SELECT CENTROID_ID as nearestCentroidID, NEAREST_CENTROIDS_DISTANCE[ORDINAL(CENTROID_ID)].DISTANCE AS nearestCentroidDistance, _20th_Percentile_Income,
      Days_between_maturity_date_and_trade_date, Median_Gross_Rent_dollars_MH,__Non_Hispanic_White,
      Percent_bachelor_s_degree_or_higher_dem, Poverty_Rate_eco, Ratings1, Ratings2, Ratings3, Trade_Date,
      Unemployment_Rate_eco, Yield_at_Issue, _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted
    FROM ML.PREDICT(MODEL `bi-model-development.looker_FINAL.risk_muni_model`,
      (
      SELECT
      CASE WHEN {% parameter _20th_Percentile_Income %} IS NULL THEN ((_20th_Percentile_Income * POWER(4.08144607e+07, 0.5)) + 2.40765872e+04)
          ELSE {% parameter _20th_Percentile_Income%}
          END AS _20th_Percentile_Income - 2.40765872e+04/POWER(4.08144607e+07, 0.5),
      CASE WHEN {% parameter Days_between_maturity_date_and_trade_date %} IS NULL THEN ((Days_between_maturity_date_and_trade_date * POWER(8.81677773e+06, 0.5)) + 4.29082934e+03)
          ELSE {% parameter Days_between_maturity_date_and_trade_date %}
          END AS Days_between_maturity_date_and_trade_date - 4.29082934e+03/POWER(8.81677773e+06, 0.5)),
      CASE WHEN {% parameter Median_Gross_Rent_dollars_MH%} IS NULL THEN ((Median_Gross_Rent_dollars_MH * POWER(7.37373826e+04 , 0.5)) +  9.93629670e+02)
        ELSE {% parameter Median_Gross_Rent_dollars_MH%}
        END AS Median_Gross_Rent_dollars_MH - 9.93629670e+02/POWER(7.37373826e+04, 0.5),
      __Non_Hispanic_White AS __Non_Hispanic_White,
      percent_bachelor_s_degree_or_higher_dem AS Percent_bachelor_s_degree_or_higher_dem,
      CASE WHEN {% parameter Poverty_Rate_eco%} IS NULL THEN ((Poverty_Rate_eco * POWER(2.05444267e+01 , 0.5)) + 1.30039056e+01)
        ELSE {% parameter Poverty_Rate_eco%}
        END AS Poverty_Rate_eco - 1.30039056e+01/POWER(2.05444267e+01, 0.5),
      Ratings1 AS Ratings1,Ratings2 AS Ratings2,Ratings3 AS Ratings3,
      Trade_Date AS Trade_Date,
      CASE WHEN {% parameter Unemployment_Rate_eco %} IS NULL THEN ((Unemployment_Rate_eco * POWER(3.04280246e+00 , 0.5)) + 5.37110987e+00)
        ELSE {% parameter Unemployment_Rate_eco %}
        END AS Unemployment_Rate_eco - 5.37110987e+00/POWER(3.04280246e+00, 0.5),
     Yield_at_Issue AS Yield_at_Issue,
      CASE WHEN {% parameter _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted %} IS NULL THEN ((_10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted * POWER(2.27818760e-01 , 0.5)) + 2.39064800e+00)
        ELSE {% parameter _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted%}
        END AS _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted - 2.39064800e+00/POWER(2.27818760e-01, 0.5),
      FROM `bi-model-development.looker_FINAL.Muni_Risk_Model_Input`
      WHERE CUSIP = "{% parameter CUSIP %}"
      LIMIT 1
      )
      )
 ;;
  }

  parameter: CUSIP {
    type: unquoted
  }

  parameter: Days_between_maturity_date_and_trade_date {
    type: number
  }

  parameter: _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted {
    type: number
  }

  parameter: Unemployment_Rate_eco {
    type: number
  }

  parameter: Poverty_Rate_eco {
    type:  number
  }

  parameter: Median_Gross_Rent_dollars_MH {
    type: number
  }

  parameter: _20th_Percentile_Income {
    type: number
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nearest_centroid_distance {
    type: number
    sql: ${TABLE}.nearestCentroidDistance ;;
  }

  dimension: nearest_centroid_id {
    type: number
    sql: ${TABLE}.nearestCentroidID;;
  }

  dimension: _20th_percentile_income {
    type: number
    sql: ${TABLE}._20th_Percentile_Income ;;
  }

  dimension: days_between_maturity_date_and_trade_date {
    type: number
    sql: ${TABLE}.Days_between_maturity_date_and_trade_date ;;
  }

  dimension: median_gross_rent_dollars_mh {
    type: number
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
  }

  dimension: __non_hispanic_white {
    type: number
    sql: ${TABLE}.__Non_Hispanic_White ;;
  }

  dimension: percent_bachelor_s_degree_or_higher_dem {
    type: number
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
  }

  dimension: poverty_rate_eco {
    type: number
    sql: ${TABLE}.Poverty_Rate_eco ;;
  }

  dimension: ratings1 {
    type: number
    sql: ${TABLE}.Ratings1 ;;
  }

  dimension: ratings2 {
    type: number
    sql: ${TABLE}.Ratings2 ;;
  }

  dimension: ratings3 {
    type: number
    sql: ${TABLE}.Ratings3 ;;
  }

  dimension: trade_date {
    type: number
    sql: ${TABLE}.Trade_Date ;;
  }

  dimension: unemployment_rate_eco {
    type: number
    sql: ${TABLE}.Unemployment_Rate_eco ;;
  }

  dimension: yield_at_issue {
    type: number
    sql: ${TABLE}.Yield_at_Issue ;;
  }

  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
  }

  measure: yield_at_issue_ {
    type: number
    sql: ${TABLE}.Yield_at_Issue ;;
  }


  measure: nearest_centroid_distance_ {
    type: number
    sql: ${nearest_centroid_distance} ;;
  }

  measure: nearest_centroid_id_ {
    type: number
    sql: ${nearest_centroid_id};;
  }

  measure: evaluated_risk {
    type: string
    sql:
    CASE WHEN ${nearest_centroid_id} = 3 OR ${nearest_centroid_id} = 6 THEN "Low"
    WHEN ${nearest_centroid_id} = 2 OR ${nearest_centroid_id} = 4 OR ${nearest_centroid_id} = 6 THEN "Medium"
    WHEN ${nearest_centroid_id} = 1 THEN "High"
    ELSE NULL END
    ;;
  }


  set: detail {
    fields: [
      nearest_centroid_id,
      _20th_percentile_income,
      days_between_maturity_date_and_trade_date,
      median_gross_rent_dollars_mh,
      __non_hispanic_white,
      percent_bachelor_s_degree_or_higher_dem,
      poverty_rate_eco,
      ratings1,
      ratings2,
      ratings3,
      trade_date,
      unemployment_rate_eco,
      yield_at_issue,
      _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted
    ]
  }
}
