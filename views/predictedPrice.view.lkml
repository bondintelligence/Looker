view: predictedPrice {
  derived_table: {
    sql: SELECT
        bloombergprice.Price_Data.Price[ORDINAL(1)]  AS bloombergprice_price,
        bloombergprice.Date2  AS bloombergprice_date2,
        bloombergprice.Price_Data.Type  AS bloombergprice_type
      FROM `bi-model-development.bqml_ann_corp.bloombergprice`
           AS bloombergprice
      WHERE CUSIP = '048339TD7'

      GROUP BY 1,2,3
      ORDER BY 1
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: bloombergprice_price {
    type: number
    sql: ${TABLE}.bloombergprice_price ;;
  }

  dimension: bloombergprice_date2 {
    type: string
    sql: ${TABLE}.bloombergprice_date2 ;;
  }

  dimension: bloombergprice_type {
    type: string
    sql: ${TABLE}.bloombergprice_type ;;
  }

  set: detail {
    fields: [bloombergprice_price, bloombergprice_date2, bloombergprice_type]
  }
}
