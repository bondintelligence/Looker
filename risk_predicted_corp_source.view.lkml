view: risk_predicted_corp_source {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT * FROM `bi-model-development.looker_FINAL.risk_corp_dataset`
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: CUSIP {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }
}
