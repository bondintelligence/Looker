view: quantstats_cusips {
  # You can specify the table name if it's different from the view name:
  sql_table_name: `bi-model-development.looker_FINAL.Quantstats_API_CUSIPs` ;;
  # Define your dimensions and measures here, like this:
  dimension: id {
    type: number
    hidden:  yes
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: Strategy_CUSIP{
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: Benchmark_CUSIP {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

}
