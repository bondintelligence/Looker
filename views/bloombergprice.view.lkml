view: bloombergprice {
  sql_table_name: `bi-model-development.bqml_ann_corp.bloombergprice`
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
    hidden: yes
    sql: ${TABLE}.Price_Data ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price_Data.Price ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Price_Data.Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
