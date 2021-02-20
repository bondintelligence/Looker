view: bloomberg2_table {
  derived_table: {
    sql: WITH original AS
      (SELECT CUSIP, Date, Date2,
      [
      STRUCT('MidYTM' AS Type, [MidYTM] AS Yield),
      STRUCT('BidYTM' AS Type, [BidYTM] AS Yield),
      STRUCT('AskYTM' AS Type, [AskYTM] AS Yield)]
       AS Yield_Data FROM (SELECT CAST(BidYTM AS FLOAT64) AS BidYTM,
        CAST(AskYTM AS FLOAT64) AS AskYTM,
        CUSIP,Date,Date2,LastPrice,MidPrice,MidYTM
      FROM `bi-model-development.looker_FINAL.bloomberg2`
      WHERE BidYTM != "#N/A N/A" AND  AskYTM != "#N/A N/A"))

      SELECT Date, Yield_Data_.type, Yield_Data_.Yield[ORDINAL(1)] AS `Yield` FROM original
      CROSS JOIN UNNEST (original.Yield_Data) AS Yield_Data_

      WHERE CUSIP = 'P1910WNY1'

      ORDER BY 1 ASC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: yield {
    type: number
    sql: ${TABLE}.Yield ;;
  }

  set: detail {
    fields: [date, type, yield]
  }
}
