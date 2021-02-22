view: bloomberg2 {
  sql_table_name: `bi-model-development.looker_FINAL.bloomberg2`
    ;;

  dimension: ask_ytm {
    type: string
    sql: ${TABLE}.AskYTM ;;
  }

  dimension: bid_ytm {
    type: string
    sql: ${TABLE}.BidYTM ;;
  }

  dimension: cusip {
    type: string
    primary_key: yes
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.LastPrice ;;
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.MidPrice ;;
  }

  dimension: mid_ytm {
    type: number
    sql: ${TABLE}.MidYTM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: last_price_ {
    type: number
    sql: ${TABLE}.LastPrice ;;
  }

  measure: mid_price_ {
    type: number
    sql: ${TABLE}.MidPrice ;;
  }

  measure: mid_ytm_ {
    type: number
    sql: ${TABLE}.MidYTM ;;
  }

  measure: ask_ytm_ {
    type: number
    sql: CAST(${TABLE}.AskYTM AS float64) ;;
  }

  measure: bid_ytm_ {
    type: number
    sql: CAST(${TABLE}.BidYTM AS float64) ;;
  }

}
