view: price_corp_prediction {
  sql_table_name: `bi-model-development.looker_FINAL.price_corp_prediction`
    ;;

  dimension: dense_4 {
    type: number
    sql: ${TABLE}.dense_4 ;;
  }

  dimension: dense_input {
    type: number
    sql: ${TABLE}.dense_input ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
