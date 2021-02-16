view: yieldgraphsv3 {
  derived_table: {
    sql: WITH original AS
      (SELECT CUSIP, Date, Date2,
      [STRUCT('Yield' AS Category, [MidYTM, BidYTM, AskYTM] AS Yield)]
       AS Yield_Data FROM (SELECT CAST(BidYTM AS FLOAT64) AS BidYTM,
        CAST(AskYTM AS FLOAT64) AS AskYTM,
        CUSIP,Date,Date2,LastPrice,MidPrice,MidYTM
      FROM `bi-model-development.looker_FINAL.bloomberg2`
      WHERE BidYTM != "#N/A N/A" AND  AskYTM != "#N/A N/A"))

      SELECT CUSIP, CAST(Date AS TIMESTAMP) as `Date`, Yield_Data_.Category as `Category`, Yield_Data_.Yield[ORDINAL(1)] as `MidY`,Yield_Data_.Yield[ORDINAL(2)] as `BidY`,Yield_Data_.Yield[ORDINAL(3)] as `AskY`  FROM original
      CROSS JOIN UNNEST (original.Yield_Data) AS Yield_Data_
 ;;
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

  dimension: bidyield {
    type: number
    sql: ${TABLE}.BidY ;;
  }

  dimension: midyield {
    type: number
    sql: ${TABLE}.MidY ;;
  }

  dimension: askyield {
    type: number
    sql: ${TABLE}.AskY ;;
  }

  measure: midyield_value {
    type: number
    sql: ${TABLE}.MidY ;;
  }

  measure: bidyield_value {
    type: number
    sql: ${TABLE}.BidY ;;
  }

  measure: askyield_value {
    type: number
    sql: ${TABLE}.AskY ;;
  }

  set: detail {
    fields: [cusip, date_time, category, bidyield, askyield, midyield]
  }
}
