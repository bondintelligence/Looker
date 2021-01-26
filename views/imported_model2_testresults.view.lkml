view: imported_model2_testresults {
  sql_table_name: `bqtest.imported_model2_testresults`
    ;;

  dimension: input_1 {
    type: number
    sql: ${TABLE}.input_1 ;;
  }

  dimension: output_1 {
    type: number
    sql: ${TABLE}.output_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
