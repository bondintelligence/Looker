view: bond_data1_mili {
  sql_table_name: `bqtest.bondData1Mili`
    ;;

  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
  }

  dimension: alternative_trading_system_ats_indicator {
    type: string
    sql: ${TABLE}.Alternative_Trading_System_ATS_Indicator ;;
  }

  dimension: assumed_settlement_date {
    type: string
    sql: ${TABLE}.Assumed_Settlement_Date ;;
  }

  dimension: broker_s_broker_indicator {
    type: string
    sql: ${TABLE}.Broker_s_Broker_Indicator ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.COUNTY ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: dated_date_of_the_issue_traded {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Dated_date_of_the_issue_traded ;;
  }

  dimension: dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: interest_rate_of_the_issue_traded {
    type: number
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }

  dimension: list_offering_price_takedown_indicator {
    type: yesno
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
  }

  dimension_group: maturity_date_of_the_issue_traded {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Maturity_date_of_the_issue_traded ;;
  }

  dimension: non_transaction_based_compensation_arrangement_ntbc_indicator {
    type: string
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator ;;
  }

  dimension: rtrs_control_number {
    type: string
    sql: ${TABLE}.RTRS_Control_Number ;;
  }

  dimension_group: rtrs_publish {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RTRS_Publish_Date ;;
  }

  dimension: rtrs_publish_time {
    type: string
    sql: ${TABLE}.RTRS_Publish_Time ;;
  }

  dimension: security_description {
    type: string
    sql: ${TABLE}.Security_Description ;;
  }

  dimension_group: settlement {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Settlement_Date ;;
  }

  dimension: shortstate {
    type: string
    sql: ${TABLE}.SHORTSTATE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: the_yield_of_the_trade {
    type: number
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension_group: time_of_trade {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Time_of_Trade ;;
  }

  dimension_group: trade {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Trade_Date ;;
  }

  dimension: trade_type_indicator {
    type: string
    sql: ${TABLE}.Trade_Type_Indicator ;;
  }

  dimension: unable_to_verify_dollar_price_indicator_if_applicable {
    type: yesno
    sql: ${TABLE}.Unable_to_Verify_Dollar_Price_Indicator_if_applicable ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.Version_Number ;;
  }

  dimension: weighted_price_indicator {
    type: string
    sql: ${TABLE}.Weighted_Price_Indicator ;;
  }

  dimension: when_issued_indicator {
    type: yesno
    sql: ${TABLE}.When_Issued_Indicator ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
