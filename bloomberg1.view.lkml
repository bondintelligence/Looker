view: bloomberg1 {
  # sql_table_name: `bi-model-development.looker_FINAL.bloomberg1`
   sql_table_name: `bi-model-development.looker_FINAL.Bloomberg10Muni10Corp`
    ;;

  drill_fields: [cusip, sp, fitch, moodys, maturity_date, ask_price, bid_price]

  dimension: amount_outstanding {
    type: number
    sql: ${TABLE}.Amount_Outstanding ;;
    value_format: "$#,##0.00"
  }

  dimension: ask_current_yield {
    type: number
    sql: ${TABLE}.Ask_Current_Yield ;;
    group_label: "Yield"
    value_format: "0.00\%"
  }

  dimension: ask_price {
    type: number
    sql: ${TABLE}.Ask_Price ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }

  dimension: bid_current_yield {
    type: number
    sql: ${TABLE}.Bid_Current_Yield ;;
    group_label: "Yield"
    value_format: "0.00\%"
  }

  dimension: bid_price {
    type: number
    sql: ${TABLE}.Bid_Price ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }

  dimension: borrower {
    type: string
    sql: ${TABLE}.Borrower ;;
    group_label: "Issuance"
  }

  dimension: callable {
    type: yesno
    sql: ${TABLE}.Callable ;;
    group_label: "Issuance"
  }

  dimension: closing_ask_price {
    type: number
    sql: ${TABLE}.Closing_Ask_Price ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }

  dimension: closing_bid_price {
    type: number
    sql: ${TABLE}.Closing_Bid_Price ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: coupon {
    type: number
    sql: ${TABLE}.Coupon__ ;;
    value_format: "0\%"
  }

  dimension: coupon_frequency {
    type: number
    sql: ${TABLE}.Coupon_Frequency ;;
    group_label: "Issuance"
  }

  dimension: cusip {
    type: string
    primary_key: yes
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: date_of_last_close {
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
    sql: ${TABLE}.Date_of_Last_Close ;;
  }

  dimension: day_count {
    type: number
    sql: ${TABLE}.Day_Count ;;
  }

  dimension: default {
    type: yesno
    sql: ${TABLE}.`Default` ;;
  }

  dimension: fitch {
    type: string
    sql: ${TABLE}.Fitch_Issue_Rating ;;
    group_label: "Rating"
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
    sql: ${TABLE}.Issue_Date_ ;;
  }

  dimension: issue_price {
    type: number
    sql: ${TABLE}.Issue_Price ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }

  dimension: issue_size {
    type: number
    sql: ${TABLE}.Issue_Size_ ;;
    group_label: "Issuance"
    value_format: "$#,##0.00"
  }

  dimension: issue_type {
    type: string
    sql: ${TABLE}.Issue_Type ;;
    group_label: "Issuance"
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}.Issuer ;;
    group_label: "Issuance"
  }

  dimension: issuer_industry {
    type: string
    sql: ${TABLE}.Issuer_Industry_ ;;
    group_label: "Issuance"
  }

  dimension: last_trade_price {
    type: number
    sql: ${TABLE}.Last_Trade_Price ;;
    group_label: "Price"
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
    sql: ${TABLE}.Maturity_Size_ ;;
    group_label: "Issuance"
    value_format: "$#,##0.00"
  }

  dimension: maturity_type {
    type: string
    sql: ${TABLE}.Maturity_Type ;;
    group_label: "Issuance"
  }

  dimension: mid_annual_yield {
    type: number
    sql: ${TABLE}.Mid_Annual_Yield ;;
    group_label: "Yield"
    value_format: "0.00\%"
  }

  dimension: mid_current_yield {
    type: number
    sql: ${TABLE}.Mid_Current_Yield ;;
    group_label: "Yield"
    value_format: "0.00\%"
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.Mid_Price ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }


  dimension: mid_ytm {
    type: number
    sql: ${TABLE}.Mid_Yield_to_Maturity ;;
    group_label: "Yield"
    value_format: "0.00%"
  }

  dimension: moodys {
    type: string
    sql: ${TABLE}.Moodys_Issue_Rating_ ;;
    label: "Moody's"
    group_label: "Rating"
  }

  dimension: net_yieldtoworst {
    type: number
    sql: ${TABLE}.Net_Yield_to_worst ;;
    group_label: "Yield"
    label: "Net Yield to Worst"
    value_format: "0.00%"
  }

  dimension: offering_type {
    type: string
    sql: ${TABLE}.Offering_Type ;;
    group_label: "Issuance"
  }

  dimension: original_issue_discount {
    type: yesno
    sql: ${TABLE}.Original_Issue_Discount ;;
    group_label: "Issuance"
  }

  dimension: previousclosing_value {
    type: number
    sql: ${TABLE}.Previous_closing_Value_ ;;
    group_label: "Price"
    label: "previous_closing_value"
    value_format: "$#,##0.00"
  }

  dimension: price_change_on_day {
    type: number
    sql: ${TABLE}.Price_Change_on_Day  ;;
    group_label: "Price"
    value_format: "$#,##0.00"
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.Purpose_ ;;
    group_label: "Issuance"
  }



  dimension: series {
    type: string
    sql: ${TABLE}.Series ;;
    group_label: "Issuance"
  }

  dimension: sinkable {
    type: yesno
    sql: ${TABLE}.Sinkable ;;
    group_label: "Issuance"
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
    group_label: "Issuance"
  }

  dimension: sp {
    type: string
    label: "S&P"
    sql: ${TABLE}.S_P_Issue_Rating ;;
    group_label: "Rating"
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: tax_provision {
    type: string
    sql: ${TABLE}.Tax_Provision ;;
    group_label: "Issuance"
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Issuer ;;
    group_label: "Issuance"
  }

  dimension: total_volume {
    type: number
    sql: ${TABLE}.Total_Volume ;;
    group_label: "Issuance"
  }

  dimension: underwriter {
    type: string
    sql: ${TABLE}.Underwriter ;;
    group_label: "Issuance"
  }

  dimension: yieldat_issue {
    type: number
    sql: ${TABLE}.Yield_at_Issue ;;
    group_label: "Yield"
    label: "Yield at Issue"
    value_format: "0.00%"
  }


  dimension: Trade {
    type: string
    # html: <p style="color: white; background-color: rgb(45, 137, 189); border-radius: 20px; font-size:125%; text-align:center">{{ rendered_value }}</p> ;;
    sql: ${url} ;;
    html: <a href="{{rendered_value}}"><button style="color: white; background-color: rgb(45, 137, 189); border-radius: 20px; font-size:125%; border:none;padding: 5px 20px; text-align:center">Trade</button></a> ;;
    hidden: yes
  }
  dimension: url {
    type: string
    hidden: yes
    # sql: "https://transficc.com/" ;;
    sql: "https://bondintelligence.cloud.looker.com/extensions/bond_intelligence_webpage::helloworld-js/etrade" ;;
  }

  # measure: count {
  #   type: count
  #   label: "Count"
  #   drill_fields: []
  # }

  # measure: Average_Amount_Outstanding {
  #   type: average
  #   sql: ${amount_outstanding} ;;
  #   value_format_name: usd
  # }

###### OLD MEASURES

  # measure: measure_amount_outstanding {
  #   type: number
  #   sql: ${amount_outstanding} ;;
  # }



  # measure: measure_ask_current_yield {
  #   type: number
  #   sql: ${ask_current_yield} ;;
  # }

  # measure: measure_ask_price {
  #   type: number
  #   sql: ${ask_price} ;;
  # }




  # measure: measure_bid_current_yield {
  #   type: number
  #   sql: ${bid_current_yield} ;;
  # }

  # measure: measure_bid_price {
  #   type: number
  #   sql: ${bid_price} ;;
  # }


  # measure: measure_borrower {
  #   type: string
  #   sql: ${borrower} ;;
  # }

  # measure: measure_callable {
  #   type: yesno
  #   sql: ${callable} ;;
  # }

  # measure: measure_closing_ask_price {
  #   type: number
  #   sql: ${closing_ask_price} ;;
  # }

  # measure: measure_closing_bid_price {
  #   type: number
  #   sql: ${closing_bid_price} ;;
  # }

  # measure: measure_county {
  #   type: string
  #   sql: ${county} ;;
  # }

  # measure: measure_coupon {
  #   type: number
  #   sql: ${coupon} ;;
  # }

  # measure: measure_coupon_frequency {
  #   type: number
  #   sql: ${coupon_frequency} ;;
  # }

  # measure: measure_cusip {
  #   type: string
  #   sql: ${cusip} ;;
  # }

  # # measure: measure_dateof_last_close {
  # #   type: time
  # #   timeframes: [
  # #     raw,
  # #     date,
  # #     week,
  # #     month,
  # #     quarter,
  # #     year
  # #   ]
  # #   convert_tz: no
  # #   datatype: date
  # #   sql: ${date_of_last_close} ;;
  # # }

  # measure: measure_day_count {
  #   type: number
  #   sql: ${day_count} ;;
  # }

  # measure: measure_default {
  #   type: yesno
  #   sql: ${default} ;;
  # }

  # measure: measure_fitch {
  #   type: string
  #   sql: ${fitch} ;;
  # }

  # measure: measure_issue {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${issue_date} ;;
  # }

  # measure: measure_issue_price {
  #   type: number
  #   sql: ${issue_price} ;;
  # }

  # measure: measure_issue_size {
  #   type: number
  #   sql: ${issue_size} ;;
  # }

  # measure: measure_issue_type {
  #   type: string
  #   sql: ${issue_type} ;;
  # }

  # measure: measure_issuer {
  #   type: string
  #   sql: ${issuer} ;;
  # }

  # measure: measure_issuer_industry {
  #   type: string
  #   sql: ${issuer_industry} ;;
  # }

  # measure: measure_last_trade_price {
  #   type: number
  #   sql: ${last_trade_price} ;;
  # }

  # measure: measure_maturity {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${maturity_date} ;;
  # }

  # measure: measure_maturity_size {
  #   type: number
  #   sql: ${maturity_size} ;;
  # }

  # measure: measure_maturity_type {
  #   type: string
  #   sql: ${maturity_type} ;;
  # }


  # measure: measure_mid_annual_yield {
  #   type: number
  #   sql: ${mid_annual_yield} ;;
  # }

  # measure: measure_mid_current_yield {
  #   type: number
  #   sql: ${mid_current_yield} ;;
  # }

  # measure: measure_mid_price {
  #   type: number
  #   sql: ${mid_price} ;;
  # }



  # measure: measure_mid_ytm {
  #   type: number
  #   sql: ${mid_ytm};;
  # }

  # measure: measure_moodys {
  #   type: string
  #   sql: ${moodys} ;;
  # }

  # measure: measure_net_yieldtoworst {
  #   type: number
  #   sql: ${net_yieldtoworst} ;;
  # }

  # measure: measure_offering_type {
  #   type: string
  #   sql: ${offering_type} ;;
  # }

  # measure: measure_original_issue_discount {
  #   type: yesno
  #   sql: ${original_issue_discount} ;;
  # }

  # measure: measure_previousclosing_value {
  #   type: number
  #   sql: ${previousclosing_value} ;;
  # }



  # measure: measure_price_changeon_day {
  #   type: number
  #   sql: ${price_change_on_day} ;;
  # }

  # measure: measure_purpose {
  #   type: string
  #   sql: ${purpose} ;;
  # }



  # measure: measure_series {
  #   type: string
  #   sql: ${series} ;;
  # }

  # measure: measure_sinkable {
  #   type: yesno
  #   sql: ${sinkable} ;;
  # }

  # measure: measure_source {
  #   type: string
  #   sql: ${source} ;;
  # }

  # measure: measure_sp {
  #   type: string
  #   sql: ${sp} ;;
  # }

  # measure: measure_state {
  #   type: string
  #   sql: ${state} ;;
  # }

  # measure: measure_tax_provision {
  #   type: string
  #   sql: ${tax_provision} ;;
  # }

  # measure: measure_title {
  #   type: string
  #   sql: ${title} ;;
  # }

  # measure: measure_total_volume {
  #   type: number
  #   sql: ${total_volume} ;;
  # }

  # measure: measure_underwriter {
  #   type: string
  #   sql: ${underwriter} ;;
  # }

  # measure: measure_yieldat_issue {
  #   type: number
  #   sql: ${yieldat_issue} ;;
  # }


}
