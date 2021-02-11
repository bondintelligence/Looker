view: bloombergcopy {
  sql_table_name: `bi-model-development.looker_FINAL.bloombergcopy`
    ;;

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

  dimension: price_data {
    hidden: no
    sql: ${TABLE}.Price_Data ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price_Data.price ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Price_Data.type ;;
  }
}
