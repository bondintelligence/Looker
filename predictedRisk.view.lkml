view: predictedrisk {
  derived_table: {
    sql: SELECT * FROM ML.PREDICT(MODEL `bi-model-development.looker_FINAL.risk_muni`,
      (
      SELECT
      _20th_Percentile_Income AS C_20th_Percentile_Income,
      Days_between_maturity_date_and_trade_date AS
      Days_between_maturity_date_and_trade_date,
      Median_Gross_Rent_dollars_MH AS Median_Gross_Rent_dollars_MH,
      __Non_Hispanic_White AS Percent_Non_Hispanic_White,
      percent_bachelor_s_degree_or_higher_dem AS
      Percent_bachelor_s_degree_or_higher_dem,
      Poverty_Rate_eco AS Poverty_Rate_eco,
      Ratings1 AS Ratings1,Ratings2 AS Ratings2,Ratings3 AS Ratings3,
      Trade_Date AS Trade_Date,
      Unemployment_Rate_eco AS Unemployment_Rate_eco,
      Yield_at_Issue AS Yield_at_Issue,
      _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted AS
      _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted
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
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  dimension: centroid_distances {
    type: number
    sql: ${TABLE}.centroid_distances ;;
  }
  dimension: centroid_ids {
    type: number
    sql: ${TABLE}.centroid_ids ;;
  }
  dimension: nearest_centroid_id {
    type: number
    sql: ${TABLE}.nearest_centroid_id ;;
  }
  dimension: c_20th_percentile_income {
    type: number
    sql: ${TABLE}.C_20th_Percentile_Income ;;
  }
  dimension: days_between_maturity_date_and_trade_date {

    type: number
    sql: ${TABLE}.Days_between_maturity_date_and_trade_date ;;
  }
  dimension: median_gross_rent_dollars_mh {
    type: number
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
  }
  dimension: percent_non_hispanic_white {
    type: number
    sql: ${TABLE}.Percent_Non_Hispanic_White ;;
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
  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted
  {
    type: number

    sql:
    ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted
    ;;
  }
  measure: centroid_distances_ {
    sql: ${centroid_distances} ;;
  }
  measure: centroid_ids_ {
    type: number
    sql: ${centroid_ids} ;;
  }
  measure: nearest_centroid_id_ {
    type: number
    sql: ${nearest_centroid_id} ;;
  }
  measure: nearest_Centroid_Distance {
    type: number
    sql: ${centroid_distances}[ORDINAL(${nearest_centroid_id})] ;;
  }
  measure: evaluated_risk {
    type: string
    sql:
    CASE WHEN ${nearest_centroid_id} = 3 OR ${nearest_centroid_id} = 5 THEN "Low"
    WHEN ${nearest_centroid_id} = 1 OR ${nearest_centroid_id} = 4 OR ${nearest_centroid_id} =
    6 THEN "Medium"
    WHEN ${nearest_centroid_id} = 2 THEN "High"
    ELSE NULL END
    ;;
  }

  set: detail {
    fields: [
      centroid_distances,
      centroid_ids,
      nearest_centroid_id,
      c_20th_percentile_income,
      days_between_maturity_date_and_trade_date,
      median_gross_rent_dollars_mh,
      percent_non_hispanic_white,
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
