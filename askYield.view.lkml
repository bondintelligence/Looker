  view: askYield {

    derived_table: {

      sql: WITH original AS

        (SELECT CUSIP, Date, Date2,

        [

        STRUCT('MidYTM' AS Category, MidYTM AS Yield),

        STRUCT('BidYTM' AS Category, BidYTM AS Yield),

        STRUCT('AskYTM' AS Category, AskYTM AS Yield)]

        AS Yield_Data FROM (SELECT CAST(BidYTM AS FLOAT64) AS BidYTM,

        CAST(AskYTM AS FLOAT64) AS AskYTM,

        CUSIP,Date,Date2,LastPrice,MidPrice,MidYTM

        FROM `bi-model-development.looker_FINAL.bloomberg2`

        WHERE BidYTM != "#N/A N/A" AND AskYTM != "#N/A N/A"))

        SELECT CUSIP, CAST(Date AS TIMESTAMP) as `Date`, Yield_Data_.Category as `Category`, Yield_Data_.Yield as `Yield` FROM original

        CROSS JOIN UNNEST (original.Yield_Data) AS Yield_Data_ WHERE Category = 'AskYTM'

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

      dimension: ask_yield {

        type: number

        sql: ${TABLE}.Yield ;;

      }

      set: detail {

        fields: [cusip, date_time, category, ask_yield]

      }}
