view: comparable_trades {

  derived_table: {

    sql: SELECT CUSIP,Issue_Date,LastTradePrice, YieldatIssue,IssueType

                      FROM `bi-model-development.looker_FINAL.bloomberg1`

                      WHERE RAND() < 10/(SELECT COUNT(*) FROM `bi-model-development.looker_FINAL.bloomberg1` )

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



    dimension: issue_date {

      type: date

      datatype: date

      sql: ${TABLE}.Issue_Date ;;

    }



    dimension: last_trade_price {

      type: number

      sql: ${TABLE}.LastTradePrice ;;

    }



    dimension: yieldat_issue {

      type: number

      sql: ${TABLE}.YieldatIssue ;;

    }



    dimension: issue_type {

      type: string

      sql: ${TABLE}.IssueType ;;

    }



    set: detail {

      fields: [cusip, issue_date, last_trade_price, yieldat_issue, issue_type]

    }

  }
