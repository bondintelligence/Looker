view: bloomberg1 {
  sql_table_name: `bi-model-development.looker_FINAL.bloomberg1`
    ;;

  dimension: amount_outstanding {
    type: number
    sql: ${TABLE}.AmountOutstanding ;;
    value_format: "$#,##0.00"
  }

  dimension: ask_current_yield {
    type: number
    sql: ${TABLE}.AskCurrentYield ;;
    group_label: "yield"
    value_format: "0.00\%"
  }

  dimension: ask_price {
    type: number
    sql: ${TABLE}.AskPrice ;;
    group_label: "price"
    value_format: "$#,##0.00"
  }

  dimension: bid_current_yield {
    type: number
    sql: ${TABLE}.BidCurrentYield ;;
    group_label: "yield"
    value_format: "0.00\%"
  }

  dimension: bid_price {
    type: number
    sql: ${TABLE}.BidPrice ;;
    group_label: "price"
    value_format: "$#,##0.00"
  }

  dimension: borrower {
    type: string
    sql: ${TABLE}.Borrower ;;
    group_label: "issuance"
  }

  dimension: callable {
    type: yesno
    sql: ${TABLE}.Callable ;;
    group_label: "issuance"
  }

  dimension: closing_ask_price {
    type: number
    sql: ${TABLE}.Closing_Ask_Price ;;
    group_label: "price"
    value_format: "$#,##0.00"
  }

  dimension: closing_bid_price {
    type: number
    sql: ${TABLE}.Closing_Bid_Price ;;
    group_label: "price"
    value_format: "$#,##0.00"
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: coupon {
    type: number
    sql: ${TABLE}.Coupon ;;
    value_format: "0%"
  }

  dimension: coupon_frequency {
    type: number
    sql: ${TABLE}.CouponFrequency ;;
    group_label: "issuance"
  }

  dimension: cusip {
    type: string
    primary_key: yes
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
    group_label: "ratings"
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
    group_label: "price"
    value_format: "$#,##0.00"
  }

  dimension: issue_size {
    type: number
    sql: ${TABLE}.IssueSize ;;
    group_label: "issuance"
    value_format: "$#,##0.00"
  }

  dimension: issue_type {
    type: string
    sql: ${TABLE}.IssueType ;;
    group_label: "issuance"
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}.Issuer ;;
    group_label: "issuance"
  }

  dimension: issuer_industry {
    type: string
    sql: ${TABLE}.IssuerIndustry ;;
    group_label: "issuance"
  }

  dimension: last_trade_price {
    type: number
    sql: ${TABLE}.LastTradePrice ;;
    group_label: "price"
    value_format: "$#,##0.00"
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
    group_label: "issuance"
    value_format: "$#,##0.00"
  }

  dimension: maturity_type {
    type: string
    sql: ${TABLE}.MaturityType ;;
    group_label: "issuance"
  }

  dimension: mid_annual_yield {
    type: number
    sql: ${TABLE}.Mid_Annual_Yield ;;
    group_label: "yield"
    value_format: "0.00\%"
  }

  dimension: mid_current_yield {
    type: number
    sql: ${TABLE}.MidCurrentYield ;;
    group_label: "yield"
    value_format: "0.00\%"
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.Mid_Price ;;
    group_label: "price"
    value_format: "$#,##0.00"
  }


  dimension: mid_ytm {
    type: number
    sql: ${TABLE}.MidYTM ;;
    group_label: "yield"
    value_format: "0.00%"
  }

  dimension: moodys {
    type: string
    sql: ${TABLE}.Moodys ;;
    group_label: "ratings"
  }

  dimension: net_yieldtoworst {
    type: number
    sql: ${TABLE}.NetYieldtoworst ;;
    group_label: "yield"
    label: "net_yield_to_worst"
    value_format: "0.00%"
  }

  dimension: offering_type {
    type: string
    sql: ${TABLE}.OfferingType ;;
    group_label: "issuance"
  }

  dimension: original_issue_discount {
    type: yesno
    sql: ${TABLE}.Original_Issue_Discount ;;
    group_label: "issuance"
  }

  dimension: previousclosing_value {
    type: number
    sql: ${TABLE}.PreviousclosingValue ;;
    group_label: "price"
    label: "previous_closing_value"
    value_format: "$#,##0.00"
  }

  dimension: price_changeon_day {
    type: number
    sql: ${TABLE}.PriceChangeonDay ;;
    group_label: "price"
    value_format: "$#,##0.00"
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.Purpose ;;
    group_label: "issuance"
  }



  dimension: series {
    type: string
    sql: ${TABLE}.Series ;;
    group_label: "issuance"
  }

  dimension: sinkable {
    type: yesno
    sql: ${TABLE}.Sinkable ;;
    group_label: "issuance"
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
    group_label: "issuance"
  }

  dimension: sp {
    type: string
    label: "s&p"
    sql: ${TABLE}.SP ;;
    group_label: "ratings"
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: tax_provision {
    type: string
    sql: ${TABLE}.TaxProvision ;;
    group_label: "issuance"
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
    group_label: "issuance"
  }

  dimension: total_volume {
    type: number
    sql: ${TABLE}.TotalVolume ;;
    group_label: "issuance"
  }

  dimension: underwriter {
    type: string
    sql: ${TABLE}.Underwriter ;;
    group_label: "issuance"
  }

  dimension: yieldat_issue {
    type: number
    sql: ${TABLE}.YieldatIssue ;;
    group_label: "yield"
    label: "yield_at_issue"
    value_format: "0.00%"
  }

  measure: count {
    type: count
    drill_fields: []
  }


  measure: sum {
    type: sum
    drill_fields: []

  }

  measure: measure_amount_outstanding {
    type: number
    sql: ${amount_outstanding} ;;
  }



  measure: measure_ask_current_yield {
    type: number
    sql: ${ask_current_yield} ;;
  }

  measure: measure_ask_price {
    type: number
    sql: ${ask_price} ;;
  }




  measure: measure_bid_current_yield {
    type: number
    sql: ${bid_current_yield} ;;
  }

  measure: measure_bid_price {
    type: number
    sql: ${bid_price} ;;
  }


  measure: measure_borrower {
    type: string
    sql: ${borrower} ;;
  }

  measure: measure_callable {
    type: yesno
    sql: ${callable} ;;
  }

  measure: measure_closing_ask_price {
    type: number
    sql: ${closing_ask_price} ;;
  }

  measure: measure_closing_bid_price {
    type: number
    sql: ${closing_bid_price} ;;
  }

  measure: measure_county {
    type: string
    sql: ${county} ;;
  }

  measure: measure_coupon {
    type: number
    sql: ${coupon} ;;
  }

  measure: measure_coupon_frequency {
    type: number
    sql: ${coupon_frequency} ;;
  }

  measure: measure_cusip {
    type: string
    sql: ${cusip} ;;
  }

  measure: measure_dateof_last_close {
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
    sql: ${dateof_last_close_date} ;;
  }

  measure: measure_day_count {
    type: number
    sql: ${day_count} ;;
  }

  measure: measure_default {
    type: yesno
    sql: ${default} ;;
  }

  measure: measure_fitch {
    type: string
    sql: ${fitch} ;;
  }

  measure: measure_issue {
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
    sql: ${issue_date} ;;
  }

  measure: measure_issue_price {
    type: number
    sql: ${issue_price} ;;
  }

  measure: measure_issue_size {
    type: number
    sql: ${issue_size} ;;
  }

  measure: measure_issue_type {
    type: string
    sql: ${issue_type} ;;
  }

  measure: measure_issuer {
    type: string
    sql: ${issuer} ;;
  }

  measure: measure_issuer_industry {
    type: string
    sql: ${issuer_industry} ;;
  }

  measure: measure_last_trade_price {
    type: number
    sql: ${last_trade_price} ;;
  }

  measure: measure_maturity {
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
    sql: ${maturity_date} ;;
  }

  measure: measure_maturity_size {
    type: number
    sql: ${maturity_size} ;;
  }

  measure: measure_maturity_type {
    type: string
    sql: ${maturity_type} ;;
  }


  measure: measure_mid_annual_yield {
    type: number
    sql: ${mid_annual_yield} ;;
  }

  measure: measure_mid_current_yield {
    type: number
    sql: ${mid_current_yield} ;;
  }

  measure: measure_mid_price {
    type: number
    sql: ${mid_price} ;;
  }



  measure: measure_mid_ytm {
    type: number
    sql: ${mid_ytm};;
  }

  measure: measure_moodys {
    type: string
    sql: ${moodys} ;;
  }

  measure: measure_net_yieldtoworst {
    type: number
    sql: ${net_yieldtoworst} ;;
  }

  measure: measure_offering_type {
    type: string
    sql: ${offering_type} ;;
  }

  measure: measure_original_issue_discount {
    type: yesno
    sql: ${original_issue_discount} ;;
  }

  measure: measure_previousclosing_value {
    type: number
    sql: ${previousclosing_value} ;;
  }



  measure: measure_price_changeon_day {
    type: number
    sql: ${price_changeon_day} ;;
  }

  measure: measure_purpose {
    type: string
    sql: ${purpose} ;;
  }



  measure: measure_series {
    type: string
    sql: ${series} ;;
  }

  measure: measure_sinkable {
    type: yesno
    sql: ${sinkable} ;;
  }

  measure: measure_source {
    type: string
    sql: ${source} ;;
  }

  measure: measure_sp {
    type: string
    sql: ${sp} ;;
  }

  measure: measure_state {
    type: string
    sql: ${state} ;;
  }

  measure: measure_tax_provision {
    type: string
    sql: ${tax_provision} ;;
  }

  measure: measure_title {
    type: string
    sql: ${title} ;;
  }

  measure: measure_total_volume {
    type: number
    sql: ${total_volume} ;;
  }

  measure: measure_underwriter {
    type: string
    sql: ${underwriter} ;;
  }

  measure: measure_yieldat_issue {
    type: number
    sql: ${yieldat_issue} ;;
  }


}
