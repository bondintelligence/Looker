view: lastPrice {
  derived_table: {
    sql: WITH original AS
      (SELECT CUSIP, Date, Date2,
      [
      STRUCT('MidPrice' AS Category, MidPrice AS Price),
      STRUCT('LastPrice' AS Category, LastPrice AS Price)]
      AS Price_Data FROM `bi-model-development.looker_FINAL.bloomberg2`)

       SELECT CUSIP, CAST(Date AS TIMESTAMP) as `Date`, Price_Data_.Category as `Category`,Price_Data_.Price as `Price` FROM original
      CROSS JOIN UNNEST (original.Price_Data) AS Price_Data_ WHERE Category = "LastPrice"

       ORDER BY 1 ASC  ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }
  dimension_group: date {
    type: time
    sql: ${TABLE}.Date ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: last_price {
    type: number
    sql: ${TABLE}.Price ;;
  }
  set: detail {
    fields: [cusip, date_time, category, last_price]
  }
}
