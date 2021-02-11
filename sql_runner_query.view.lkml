view: sql_runner_query {
  derived_table: {
    sql: CREATE OR REPLACE TABLE bqtest.imported_model2_testresults1
      OPTIONS() AS
        SELECT *
          FROM ML.PREDICT(MODEL bqtest.imported_model2,
             (
              SELECT [double_field_1, double_field_2, double_field_3, double_field_4, double_field_5, double_field_6, double_field_7, double_field_8,   double_field_9, double_field_10, double_field_11, double_field_12, double_field_13] AS input_1
              FROM `bi-model-development.bqtest.bondData1MiliProcessed`
          )
       );

      SELECT
        imported_model2_testresults1.output_1  AS imported_model2_testresults1_output_1,
        COUNT(*) AS imported_model2_testresults1_count
      FROM `bi-model-development.bqtest.imported_model2_testresults1`
            AS imported_model2_testresults1

      GROUP BY 1
      ORDER BY 1
      LIMIT 50
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: imported_model2_testresults1_output_1 {
    type: number
    sql: ${TABLE}.imported_model2_testresults1_output_1 ;;
  }

  dimension: imported_model2_testresults1_count {
    type: number
    sql: ${TABLE}.imported_model2_testresults1_count ;;
  }

  set: detail {
    fields: [imported_model2_testresults1_output_1, imported_model2_testresults1_count]
  }
}
