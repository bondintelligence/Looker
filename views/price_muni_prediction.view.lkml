view: price_muni_prediction {
  sql_table_name: `bi-model-development.looker_FINAL.price_muni_prediction`
    ;;

  dimension: predicted_dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.predicted_Dollar_Price_of_the_trade ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
