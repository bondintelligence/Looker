view: bond_data1_mili_processed {
  sql_table_name: `bqtest.bondData1MiliProcessed`
    ;;

  dimension: double_field_1 {
    type: number
    sql: ${TABLE}.double_field_1 ;;
  }

  dimension: double_field_10 {
    type: number
    sql: ${TABLE}.double_field_10 ;;
  }

  dimension: double_field_11 {
    type: number
    sql: ${TABLE}.double_field_11 ;;
  }

  dimension: double_field_12 {
    type: number
    sql: ${TABLE}.double_field_12 ;;
  }

  dimension: double_field_13 {
    type: number
    sql: ${TABLE}.double_field_13 ;;
  }

  dimension: double_field_14 {
    type: number
    sql: ${TABLE}.double_field_14 ;;
  }

  dimension: double_field_2 {
    type: number
    sql: ${TABLE}.double_field_2 ;;
  }

  dimension: double_field_3 {
    type: number
    sql: ${TABLE}.double_field_3 ;;
  }

  dimension: double_field_4 {
    type: number
    sql: ${TABLE}.double_field_4 ;;
  }

  dimension: double_field_5 {
    type: number
    sql: ${TABLE}.double_field_5 ;;
  }

  dimension: double_field_6 {
    type: number
    sql: ${TABLE}.double_field_6 ;;
  }

  dimension: double_field_7 {
    type: number
    sql: ${TABLE}.double_field_7 ;;
  }

  dimension: double_field_8 {
    type: number
    sql: ${TABLE}.double_field_8 ;;
  }

  dimension: double_field_9 {
    type: number
    sql: ${TABLE}.double_field_9 ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
