view: bloomberg2 {
  sql_table_name: `bi-model-development.looker_FINAL.Bloomberg10Muni10CorpTimeseries`
    ;;

  dimension: ask_ytm {
    type: number
    label: "Ask Yield to Maturity"
    sql: CAST(${TABLE}.Yield_to_Maturity_Ask AS FLOAT64) ;;
  }

  dimension: bid_ytm {
    type: string
    label: "Bid Yield to Maturity"
    sql: ${TABLE}.Yield_to_Maturity_Bid ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: date {
    label: ""
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
    sql: ${TABLE}.Date ;;
  }



  dimension: last_price {
    type: number
    sql: ${TABLE}.Last_Price ;;
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.Mid_Price ;;
  }

  dimension: mid_ytm {
    type: number
    label: "Mid Yield to Maturity"
    sql: ${TABLE}.Yield_to_Maturity_Mid ;;
  }

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.CUSIP, ' ', ${TABLE}.Date) ;;
  }


  measure: count {
    type: count
    drill_fields: []
    label: "Count"
  }

  measure: Average_Last_Price {
    type:  average
    sql: ${last_price} ;;
    value_format_name: usd
  }

  measure: Average_Mid_Price {
    type:  average
    sql: ${last_price} ;;
    value_format_name: usd
  }



  # measure: ask_ytm_ {
  #   type:  number
  #   sql: CAST(${ask_ytm} AS FLOAT64) + 0;;
  # }

  # measure: bid_ytm_ {
  #   type: number
  #   sql: CAST(${bid_ytm} AS FLOAT64) + 0 ;;
  # }

  # measure: mid_ytm_ {
  #   type: number
  #   sql: CAST(${mid_ytm} AS FLOAT64)+ 0;;
  # }


  # measure: last_price_ {
  #   type: number
  #   sql: CAST(${last_price} AS FLOAT64) + 0 ;;
  # }

  # measure: mid_price_ {
  #   type: number
  #   sql: CAST(${mid_price} AS FLOAT64) + 0 ;;
  # }


}
