view: bloomberg1 {
  sql_table_name: `bi-model-development.looker_FINAL.bloomberg1`
    ;;

  dimension: amount_outstanding {
    type: number
    sql: ${TABLE}.AmountOutstanding ;;
  }



  dimension: ask_current_yield {
    type: number
    sql: ${TABLE}.AskCurrentYield ;;
  }

  dimension: ask_price {
    type: number
    sql: ${TABLE}.AskPrice ;;
  }




  dimension: bid_current_yield {
    type: number
    sql: ${TABLE}.BidCurrentYield ;;
  }

  dimension: bid_price {
    type: number
    sql: ${TABLE}.BidPrice ;;
  }


  dimension: borrower {
    type: string
    sql: ${TABLE}.Borrower ;;
  }

  dimension: callable {
    type: yesno
    sql: ${TABLE}.Callable ;;
  }

  dimension: closing_ask_price {
    type: number
    sql: ${TABLE}.Closing_Ask_Price ;;
  }

  dimension: closing_bid_price {
    type: number
    sql: ${TABLE}.Closing_Bid_Price ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: coupon {
    type: number
    sql: ${TABLE}.Coupon ;;
  }

  dimension: coupon_frequency {
    type: number
    sql: ${TABLE}.CouponFrequency ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: dateof_last_close {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateofLastClose ;;
  }

  dimension: day_count {
    type: number
    sql: ${TABLE}.DayCount ;;
  }

  dimension: default {
    type: yesno
    sql: ${TABLE}.`Default` ;;
  }

  dimension: fitch {
    type: string
    sql: ${TABLE}.Fitch ;;
  }

  dimension_group: issue {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Issue_Date ;;
  }

  dimension: issue_price {
    type: number
    sql: ${TABLE}.IssuePrice ;;
  }

  dimension: issue_size {
    type: number
    sql: ${TABLE}.IssueSize ;;
  }

  dimension: issue_type {
    type: string
    sql: ${TABLE}.IssueType ;;
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}.Issuer ;;
  }

  dimension: issuer_industry {
    type: string
    sql: ${TABLE}.IssuerIndustry ;;
  }

  dimension: last_trade_price {
    type: number
    sql: ${TABLE}.LastTradePrice ;;
  }

  dimension_group: maturity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Maturity ;;
  }

  dimension: maturity_size {
    type: number
    sql: ${TABLE}.MaturitySize ;;
  }

  dimension: maturity_type {
    type: string
    sql: ${TABLE}.MaturityType ;;
  }


  dimension: mid_annual_yield {
    type: number
    sql: ${TABLE}.Mid_Annual_Yield ;;
  }

  dimension: mid_current_yield {
    type: number
    sql: ${TABLE}.MidCurrentYield ;;
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.Mid_Price ;;
  }



  dimension: mid_ytm {
    type: number
    sql: ${TABLE}.MidYTM ;;
  }

  dimension: moodys {
    type: string
    sql: ${TABLE}.Moodys ;;
  }

  dimension: net_yieldtoworst {
    type: number
    sql: ${TABLE}.NetYieldtoworst ;;
  }

  dimension: offering_type {
    type: string
    sql: ${TABLE}.OfferingType ;;
  }

  dimension: original_issue_discount {
    type: yesno
    sql: ${TABLE}.Original_Issue_Discount ;;
  }

  dimension: previousclosing_value {
    type: number
    sql: ${TABLE}.PreviousclosingValue ;;
  }



  dimension: price_changeon_day {
    type: number
    sql: ${TABLE}.PriceChangeonDay ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.Purpose ;;
  }



  dimension: series {
    type: string
    sql: ${TABLE}.Series ;;
  }

  dimension: sinkable {
    type: yesno
    sql: ${TABLE}.Sinkable ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: sp {
    type: string
    sql: ${TABLE}.SP ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: tax_provision {
    type: string
    sql: ${TABLE}.TaxProvision ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: total_volume {
    type: number
    sql: ${TABLE}.TotalVolume ;;
  }

  dimension: underwriter {
    type: string
    sql: ${TABLE}.Underwriter ;;
  }

  dimension: yieldat_issue {
    type: number
    sql: ${TABLE}.YieldatIssue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
