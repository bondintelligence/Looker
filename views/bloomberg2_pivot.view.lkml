view: bloomberg2_pivot {
  sql_table_name: `bi-model-development.looker_FINAL.bloomberg2_pivot`
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

  dimension: yield_data_ {
    hidden: yes
    sql: ${TABLE}.Yield_Data_ ;;
  }

  dimension: yield_type {
    type: string
    sql: ${yield_data_}.type ;;
  }
  dimension: yield_amount {
    type: number
    sql: ${yield_data_}.yield[ORDINAL(1)] ;;
  }

  measure: yield_type_ {
    type: string
    sql: ${yield_data_}.type ;;
  }
  measure: yield_amount_ {
    type: number
    sql: ${yield_data_}.yield[ORDINAL(1)] ;;
  }

  measure: date_ {
    type:  date
    sql: ${TABLE}.Date ;;
  }

}

view: bloomberg2_pivot__yield_data_ {
  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: yield {
    type: number
    sql: ${TABLE}.Yield ;;
  }
}

view: bloomberg2_pivot__price_data {
  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
}
