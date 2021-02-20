view: bloomberg2_pivot2 {
  sql_table_name: `bi-model-development.looker_FINAL.bloomberg2_pivot2`
    ;;

  dimension: ask_ytm {
    type: number
    sql: ${TABLE}.AskYTM ;;
  }

  dimension: bid_ytm {
    type: number
    sql: ${TABLE}.BidYTM ;;
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

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
