view: imported_model2_test {
  derived_table: {
    sql: SELECT *
         FROM ML.PREDICT(MODEL bqtest.imported_model2,
           (
            SELECT [double_field_1, double_field_2, double_field_3, double_field_4, double_field_5, double_field_6, double_field_7, double_field_8, double_field_9, double_field_10, double_field_11, double_field_12, double_field_13] AS input_1
            FROM `bi-model-development.bqtest.bondData1MiliProcessed`

           )

         )
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: output_1 {
    type: number
    sql: ${TABLE}.output_1 ;;
  }

  dimension: input_1 {
    type: number
    sql: ${TABLE}.input_1 ;;
  }

  set: detail {
    fields: [output_1, input_1]
  }
}
