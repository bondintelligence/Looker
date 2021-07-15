view: risk_predicted_muni_source {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT * FROM `bi-model-development.looker_FINAL.risk_muni_dataset`
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: CUSIP {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }
}
