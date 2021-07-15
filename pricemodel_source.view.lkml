view: pricemodel_source {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT * FROM `bi-model-development.looker_FINAL.price_muni_boosted_training`
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: CUSIP {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }
}
