view: yieldgraphv1 {
  derived_table: {
    sql: WITH original AS
      (SELECT CUSIP, Date, Date2,
      [
      STRUCT('MidYTM' AS Category, MidYTM AS Yield),
      STRUCT('BidYTM' AS Category, BidYTM AS Yield),
      STRUCT('AskYTM' AS Category, AskYTM AS Yield)]
       AS Yield_Data FROM `bi-model-development.looker_FINAL.bloomberg2`)



      SELECT CUSIP, CAST(Date AS TIMESTAMP) as `Date`, Yield_Data_.Category, Yield_Data_.Yield FROM original
      CROSS JOIN UNNEST (original.Yield_Data) AS Yield_Data_
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
   measure: yield_value{
     type:number
    sql: ${TABLE}.Yield ;;
   }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: yield {
    type: number
    sql: ${TABLE}.Yield ;;
  }

  set: detail {
    fields: [cusip, date, category, yield]
  }
}
