view: sql_runner_query {
  derived_table: {
    sql: WITH original AS
      (SELECT CUSIP, Date, Date2,
      [
      STRUCT('MidPrice' AS Type, [MidPrice] AS Price),
      STRUCT('LastPrice' AS Type, [LastPrice] AS Price)]
       AS Price_Data FROM `bi-model-development.looker_FINAL.bloomberg2`)

      SELECT CAST(Date AS TIMESTAMP) as `Date`, Price_Data_.type,Price_Data_.Price[ORDINAL(1)] AS `Price`  FROM original
      CROSS JOIN UNNEST (original.Price_Data) AS Price_Data_

      WHERE CUSIP = 'P1910WNY1'

      ORDER BY 1 ASC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: date {
    type: time
    sql: ${TABLE}.Date ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Price_Data_.type ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  set: detail {
    fields: [date_time, type, price]
  }
}
