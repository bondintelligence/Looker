view: corp_pricemodel_source {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT CUSIP
          FROM `bi-model-development.corp_price_models.Price_corp_coupon_0_dataset`
          UNION ALL
          SELECT CUSIP
          FROM `bi-model-development.corp_price_models.Price_corp_positive_coupon_dataset`
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: CUSIP {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }
}
