view: bloomberg2 {
  sql_table_name: `bi-model-development.looker_FINAL.bloomberg2`
    ;;

  dimension: ask_ytm {
    type: string
    sql: ${TABLE}.AskYTM ;;
    group_label: "Yield"
  }

  dimension: bid_ytm {
    type: string
    sql: ${TABLE}.BidYTM ;;
    group_label: "Yield"
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
    group_label: "Price"
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.MidPrice ;;
    group_label: "Price"
  }

  dimension: mid_ytm {
    type: number
    sql: ${TABLE}.MidYTM ;;
    group_label: "Yield"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
