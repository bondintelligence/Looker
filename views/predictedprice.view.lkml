view: predictedprice {
  derived_table: {
    sql: SELECT *
          FROM ML.PREDICT(MODEL looker_FINAL.price_muni,
              (
              SELECT Poverty_Rate_eco,
      Unemployment_Rate_eco,
      Average_Daily_PM2_5,
      Income_Ratio,
      Population,
      _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted,
      Interest_rate_of_the_issue_traded,
      The_par_value_of_the_trade,
      Issue_Size,
      MaturitySize,
      Price_At_Issue,
      Yield_at_Issue,
      Dollar_Price_of_the_trade,
      CAST(Issuer_Type AS string) AS Issuer_Type,
      CAST(Trade_Type_Indicator AS string) AS Trade_Type_Indicator,
      CAST(Issuer_Industry AS string) AS Issuer_Industry,
      CAST(Presence_of_violation_poll AS string) AS Presence_of_violation_poll
              FROM `bqtest.Final_Data`
              LIMIT 1
              )
      )
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: predicted_dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.predicted_Dollar_Price_of_the_trade ;;
  }

  dimension: poverty_rate_eco {
    type: number
    sql: ${TABLE}.Poverty_Rate_eco ;;
  }

  dimension: unemployment_rate_eco {
    type: number
    sql: ${TABLE}.Unemployment_Rate_eco ;;
  }

  dimension: average_daily_pm2_5 {
    type: number
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
  }

  dimension: income_ratio {
    type: number
    sql: ${TABLE}.Income_Ratio ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
  }

  dimension: interest_rate_of_the_issue_traded {
    type: number
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: issue_size {
    type: number
    sql: ${TABLE}.Issue_Size ;;
  }

  dimension: maturity_size {
    type: number
    sql: ${TABLE}.MaturitySize ;;
  }

  dimension: price_at_issue {
    type: number
    sql: ${TABLE}.Price_At_Issue ;;
  }

  dimension: yield_at_issue {
    type: number
    sql: ${TABLE}.Yield_at_Issue ;;
  }

  dimension: dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: issuer_type {
    type: string
    sql: ${TABLE}.Issuer_Type ;;
  }

  dimension: trade_type_indicator {
    type: string
    sql: ${TABLE}.Trade_Type_Indicator ;;
  }

  dimension: issuer_industry {
    type: string
    sql: ${TABLE}.Issuer_Industry ;;
  }

  dimension: presence_of_violation_poll {
    type: string
    sql: ${TABLE}.Presence_of_violation_poll ;;
  }

  set: detail {
    fields: [
      predicted_dollar_price_of_the_trade,
      poverty_rate_eco,
      unemployment_rate_eco,
      average_daily_pm2_5,
      income_ratio,
      population,
      _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted,
      interest_rate_of_the_issue_traded,
      the_par_value_of_the_trade,
      issue_size,
      maturity_size,
      price_at_issue,
      yield_at_issue,
      dollar_price_of_the_trade,
      issuer_type,
      trade_type_indicator,
      issuer_industry,
      presence_of_violation_poll
    ]
  }
}
