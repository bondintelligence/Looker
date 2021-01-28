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

  dimension: date2 {
    type: string
    sql: ${TABLE}.Date2 ;;
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
}
