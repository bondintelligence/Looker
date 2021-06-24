view: comparabletrades_temp {

  derived_table: {
    sql: SELECT CUSIP,Issue_Date,LastTradePrice, YieldatIssue,IssueType
            FROM `bi-model-development.looker_FINAL.bloomberg1`
            ORDER BY RAND() Limit 10
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
