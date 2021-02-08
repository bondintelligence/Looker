view: mergent_issuance {
  sql_table_name: `bi-model-development.looker_FINAL.Mergent_Issuance`
    ;;

  dimension: action_amount {
    type: number
    sql: ${TABLE}.ACTION_AMOUNT ;;
  }

  dimension: action_price {
    type: number
    sql: ${TABLE}.ACTION_PRICE ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.ACTION_TYPE ;;
  }

  dimension: active_issue {
    type: string
    sql: ${TABLE}.ACTIVE_ISSUE ;;
  }

  dimension: after_acquired_property_clause {
    type: string
    sql: ${TABLE}.AFTER_ACQUIRED_PROPERTY_CLAUSE ;;
  }

  dimension: agent_id {
    type: number
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: allocated_offering_price_other {
    type: number
    sql: ${TABLE}.ALLOCATED_OFFERING_PRICE_OTHER ;;
  }

  dimension: allocated_offering_price_unit {
    type: number
    sql: ${TABLE}.ALLOCATED_OFFERING_PRICE_UNIT ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_outstanding {
    type: number
    sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  }

  dimension: amt_offered {
    type: number
    label: "Amount Offered"
    sql: ${TABLE}.AMT_OFFERED ;;
  }

  dimension: announced_call {
    type: string
    sql: ${TABLE}.ANNOUNCED_CALL ;;
  }

  dimension_group: as_of_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.AS_OF_DATE, 1, 4),"-",SUBSTRING(${TABLE}.AS_OF_DATE, 5, 2),"-",SUBSTRING(${TABLE}.AS_OF_DATE, 7, 2));;
  }

  dimension: asset_backed {
    type: string
    sql: ${TABLE}.ASSET_BACKED ;;
  }

  dimension: asset_sale_clause {
    type: string
    sql: ${TABLE}.ASSET_SALE_CLAUSE ;;
  }

  dimension: bond_type {
    type: string
    sql: ${TABLE}.BOND_TYPE ;;
  }

  dimension: borrowing_restricted {
    type: string
    sql: ${TABLE}.BORROWING_RESTRICTED ;;
  }

  dimension: canadian {
    type: string
    label: "Canadian Issuer"
    sql: ${TABLE}.CANADIAN ;;
  }

  dimension: change_control_put_provisions {
    type: string
    sql: ${TABLE}.CHANGE_CONTROL_PUT_PROVISIONS ;;
  }

  dimension_group: change_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.CHANGE_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CHANGE_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CHANGE_DATE, 7, 2));;
  }

  dimension: coco_change_frequency {
    type: string
    label: "COCO Change Freq"
    sql: ${TABLE}.COCO_CHANGE_FREQUENCY ;;
  }

  dimension: coco_change_rate {
    type: number
    label: "COCO Change Rate"
    sql: ${TABLE}.COCO_CHANGE_RATE ;;
  }

  dimension_group: coco_end_date {
    type: time
    label: "COCO End Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.COCO_END_DATE, 1, 4),"-",SUBSTRING(${TABLE}.COCO_END_DATE, 5, 2),"-",SUBSTRING(${TABLE}.COCO_END_DATE, 7, 2));;
  }

  dimension: coco_initial_trigger_percent {
    type: number
    label: "COCO Init Trigger Pct"
    sql: ${TABLE}.COCO_INITIAL_TRIGGER_PERCENT ;;
  }

  dimension: coco_min_trigger_level {
    type: number
    label: "COCO Min Trigger Level"
    sql: ${TABLE}.COCO_MIN_TRIGGER_LEVEL ;;
  }

  dimension_group: coco_start_date {
    type: time
    label: "COCO Start Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.COCO_START_DATE, 1, 4),"-",SUBSTRING(${TABLE}.COCO_START_DATE, 5, 2),"-",SUBSTRING(${TABLE}.COCO_START_DATE, 7, 2));;
  }

  dimension: coco_trade_days {
    type: string
    label: "COCO Trade Days"
    sql: ${TABLE}.COCO_TRADE_DAYS ;;
  }

  dimension: coco_trade_days_in_previous {
    type: string
    label: "COCO Trade Period"
    sql: ${TABLE}.COCO_TRADE_DAYS_IN_PREVIOUS ;;
  }

  dimension: coco_trigger_expressed_as {
    type: string
    label: "COCO Trigger Code"
    sql: ${TABLE}.COCO_TRIGGER_EXPRESSED_AS ;;
  }

  dimension: commod_price {
    type: number
    label: "Commodity Price"
    sql: ${TABLE}.COMMOD_PRICE ;;
  }

  dimension: comp_neg_exch_deal {
    type: string
    label: "Type of Sale"
    sql: ${TABLE}.COMP_NEG_EXCH_DEAL ;;
  }

  dimension: complete_cusip {
    type: string
    label: "Complete CUSIP"
    sql: ${TABLE}.COMPLETE_CUSIP ;;
  }

  dimension: conditional_conv_terms {
    type: string
    label: "Conditional Conv. Terms"
    sql: ${TABLE}.CONDITIONAL_CONV_TERMS ;;
  }

  dimension: consolidation_merger {
    type: string
    sql: ${TABLE}.CONSOLIDATION_MERGER ;;
  }

  dimension: conv_cash {
    type: number
    sql: ${TABLE}.CONV_CASH ;;
  }

  dimension: conv_commod_cusip {
    type: string
    label: "Conv Commodity CUSIP"
    sql: ${TABLE}.CONV_COMMOD_CUSIP ;;
  }

  dimension: conv_commod_issuer {
    type: string
    label: "Conv Commodity Issuer"
    sql: ${TABLE}.CONV_COMMOD_ISSUER ;;
  }

  dimension: conv_commod_type {
    type: string
    label: "Conv Commodity Type"
    sql: ${TABLE}.CONV_COMMOD_TYPE ;;
  }

  dimension_group: conv_eff_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.CONV_EFF_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CONV_EFF_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CONV_EFF_DATE, 7, 2));;
  }

  dimension_group: conv_exp_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.CONV_EXP_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CONV_EXP_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CONV_EXP_DATE, 7, 2));;
  }

  dimension: conv_part_trade_days {
    type: number
    sql: ${TABLE}.CONV_PART_TRADE_DAYS ;;
  }

  dimension: conv_period_days {
    type: number
    sql: ${TABLE}.CONV_PERIOD_DAYS ;;
  }

  dimension: conv_period_spec {
    type: string
    sql: ${TABLE}.CONV_PERIOD_SPEC ;;
  }

  dimension: conv_premium {
    type: number
    sql: ${TABLE}.CONV_PREMIUM ;;
  }

  dimension: conv_price {
    type: number
    sql: ${TABLE}.CONV_PRICE ;;
  }

  dimension: conv_price_percent {
    type: number
    sql: ${TABLE}.CONV_PRICE_PERCENT ;;
  }

  dimension_group: conv_prohibited_from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.CONV_PROHIBITED_FROM, 1, 4),"-",SUBSTRING(${TABLE}.CONV_PROHIBITED_FROM, 5, 2),"-",SUBSTRING(${TABLE}.CONV_PROHIBITED_FROM, 7, 2));;

  }

  dimension_group: conv_redemp_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.CONV_REDEMP_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CONV_REDEMP_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CONV_REDEMP_DATE, 7, 2));;
  }

  dimension: conv_redemp_exception {
    type: string
    sql: ${TABLE}.CONV_REDEMP_EXCEPTION ;;
  }

  dimension: conv_total_trade_days {
    type: number
    sql: ${TABLE}.CONV_TOTAL_TRADE_DAYS ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.CONVERSION_RATE ;;
  }

  dimension: convert_on_call {
    type: string
    sql: ${TABLE}.CONVERT_ON_CALL ;;
  }

  dimension: convertible {
    type: string
    sql: ${TABLE}.CONVERTIBLE ;;
  }

  dimension: country_domicile {
    type: string
    sql: ${TABLE}.COUNTRY_DOMICILE ;;
  }

  dimension: coupon {
    type: number
    sql: ${TABLE}.COUPON ;;
  }

  dimension: coupon_change_indicator {
    type: string
    sql: ${TABLE}.COUPON_CHANGE_INDICATOR ;;
  }

  dimension: coupon_type {
    type: string
    sql: ${TABLE}.COUPON_TYPE ;;
  }

  dimension: covenant_defeas_wo_tax_conseq {
    type: string
    label: "Covenant Defeas w.o. Tax"
    sql: ${TABLE}.COVENANT_DEFEAS_WO_TAX_CONSEQ ;;
  }

  dimension: covenants {
    type: string
    sql: ${TABLE}.COVENANTS ;;
  }

  dimension: cross_acceleration {
    type: string
    sql: ${TABLE}.CROSS_ACCELERATION ;;
  }

  dimension: cross_default {
    type: string
    sql: ${TABLE}.CROSS_DEFAULT ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cusip_name {
    type: string
    label: "CUSIP Name"
    sql: ${TABLE}.CUSIP_NAME ;;
  }

  dimension: date_subj_adjustment {
    type: string
    sql: ${TABLE}.DATE_SUBJ_ADJUSTMENT ;;
  }

  dimension_group: date_transferable {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.DATE_TRANSFERABLE, 1, 4),"-",SUBSTRING(${TABLE}.DATE_TRANSFERABLE, 5, 2),"-",SUBSTRING(${TABLE}.DATE_TRANSFERABLE, 7, 2));;
  }

  dimension_group: dated_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.DATED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DATED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DATED_DATE, 7, 2));;
  }

  dimension: day_count_basis {
    type: string
    sql: ${TABLE}.DAY_COUNT_BASIS ;;
  }

  dimension: declining_net_worth {
    type: string
    sql: ${TABLE}.DECLINING_NET_WORTH ;;
  }

  dimension: declining_net_worth_percentage {
    type: number
    sql: ${TABLE}.DECLINING_NET_WORTH_PERCENTAGE ;;
  }

  dimension: declining_net_worth_provisions {
    type: string
    sql: ${TABLE}.DECLINING_NET_WORTH_PROVISIONS ;;
  }

  dimension: declining_net_worth_trigger {
    type: number
    sql: ${TABLE}.DECLINING_NET_WORTH_TRIGGER ;;
  }

  dimension: defaulted {
    type: string
    sql: ${TABLE}.DEFAULTED ;;
  }

  dimension: defeasance_type {
    type: string
    sql: ${TABLE}.DEFEASANCE_TYPE ;;
  }

  dimension: defeasance_wo_tax_conseq {
    type: string
    label: "Defeasance w.o. Tax Conseq"
    sql: ${TABLE}.DEFEASANCE_WO_TAX_CONSEQ ;;
  }

  dimension: defeased {
    type: string
    sql: ${TABLE}.DEFEASED ;;
  }

  dimension_group: defeased_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.DEFEASED_DATE, "/", "-");;
  }

  dimension_group: delivery_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.DELIVERY_DATE, "/", "-");;
  }

  dimension: denomination {
    type: string
    sql: ${TABLE}.DENOMINATION ;;
  }

  dimension: dep_eligibility {
    type: string
    label: "Eligible Depositories"
    sql: ${TABLE}.DEP_ELIGIBILITY ;;
  }

  dimension_group: determination_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.DETERMINATION_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE, 7, 2));;
  }

  dimension_group: determination_date_orig {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.DETERMINATION_DATE_ORIG, 1, 4),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE_ORIG, 5, 2),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE_ORIG, 7, 2));;
  }

  dimension: dilution_protection {
    type: string
    sql: ${TABLE}.DILUTION_PROTECTION ;;
  }

  dimension: dividends_related_payments_is {
    type: string
    sql: ${TABLE}.DIVIDENDS_RELATED_PAYMENTS_IS ;;
  }

  dimension: dividends_related_payments_sub {
    type: string
    sql: ${TABLE}.DIVIDENDS_RELATED_PAYMENTS_SUB ;;
  }

  dimension: economic_cov_def {
    type: string
    sql: ${TABLE}.ECONOMIC_COV_DEF ;;
  }


dimension_group: effective_date {
  type: time
  timeframes: [
    raw,
    date,
    week,
    month,
    quarter,
    year
  ]
  convert_tz: yes
  datatype: date
  sql: REPLACE(${TABLE}.EFFECTIVE_DATE, "/", "-");;
}


  dimension: enhancement {
    type: string
    sql: ${TABLE}.ENHANCEMENT ;;
  }

  dimension: esop {
    type: string
    label: "ESOP"
    sql: ${TABLE}.ESOP ;;
  }

  dimension: exchange {
    type: string
    sql: ${TABLE}.EXCHANGE ;;
  }

  dimension: exchangeable {
    type: string
    sql: ${TABLE}.EXCHANGEABLE ;;
  }

  dimension: exercised {
    type: string
    sql: ${TABLE}.EXERCISED ;;
  }

  dimension_group: exercised_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.EXERCISED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.EXERCISED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.EXERCISED_DATE, 7, 2));;
  }

  dimension_group: filing_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.FILING_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FILING_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FILING_DATE, 7, 2));;
  }

  dimension_group: first_interest_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 7, 2));;
  }

  dimension: fix_frequency {
    type: string
    sql: ${TABLE}.FIX_FREQUENCY ;;
  }

  dimension: fixed_charge_coverage_is {
    type: string
    sql: ${TABLE}.FIXED_CHARGE_COVERAGE_IS ;;
  }

  dimension: fixed_charge_coverage_sub {
    type: string
    sql: ${TABLE}.FIXED_CHARGE_COVERAGE_SUB ;;
  }

  dimension: foreign_currency {
    type: string
    sql: ${TABLE}.FOREIGN_CURRENCY ;;
  }

  dimension: form_of_own {
    type: string
    label: "Form of Ownership"
    sql: ${TABLE}.FORM_OF_OWN ;;
  }

  dimension: funded_debt_is {
    type: string
    sql: ${TABLE}.FUNDED_DEBT_IS ;;
  }

  dimension: funded_debt_sub {
    type: string
    sql: ${TABLE}.FUNDED_DEBT_SUB ;;
  }

  dimension: fungible {
    type: string
    sql: ${TABLE}.FUNGIBLE ;;
  }

  dimension: greater_of {
    type: string
    sql: ${TABLE}.GREATER_OF ;;
  }

  dimension: gross_spread {
    type: number
    sql: ${TABLE}.GROSS_SPREAD ;;
  }

  dimension: in_bankruptcy {
    type: string
    sql: ${TABLE}.IN_BANKRUPTCY ;;
  }

  dimension: indebtedness_is {
    type: string
    sql: ${TABLE}.INDEBTEDNESS_IS ;;
  }

  dimension: indebtedness_sub {
    type: string
    sql: ${TABLE}.INDEBTEDNESS_SUB ;;
  }

  dimension: industry_code {
    type: string
    sql: ${TABLE}.INDUSTRY_CODE ;;
  }

  dimension: industry_group {
    type: string
    sql: ${TABLE}.INDUSTRY_GROUP ;;
  }

  dimension: interest_frequency {
    type: string
    sql: ${TABLE}.INTEREST_FREQUENCY ;;
  }

  dimension: investments {
    type: string
    sql: ${TABLE}.INVESTMENTS ;;
  }

  dimension: investments_unrestricted_subs {
    type: string
    sql: ${TABLE}.INVESTMENTS_UNRESTRICTED_SUBS ;;
  }

  dimension: isin {
    type: string
    label: "ISI Number"
    sql: ${TABLE}.ISIN ;;
  }

  dimension: issue_cusip {
    type: string
    label: "Issue CUSIP"
    sql: ${TABLE}.ISSUE_CUSIP ;;
  }

  dimension: issue_id {
    type: number
    sql: ${TABLE}.ISSUE_ID ;;
  }

  dimension: issue_name {
    type: string
    sql: ${TABLE}.ISSUE_NAME ;;
  }

  dimension: issue_offered_global {
    type: string
    label: "Global Offer"
    sql: ${TABLE}.ISSUE_OFFERED_GLOBAL ;;
  }

  dimension: issuer_cusip {
    type: string
    label: "Issuer CUSIP"
    sql: ${TABLE}.ISSUER_CUSIP ;;
  }

  dimension: issuer_id {
    type: number
    sql: ${TABLE}.ISSUER_ID ;;
  }

  dimension: issuer_id_affected {
    type: number
    sql: ${TABLE}.ISSUER_ID_AFFECTED ;;
  }

  dimension_group: last_interest_date {
    type: time
    label: "Coupon Last Interest Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 7, 2));;
  }

  dimension: legal_defeasance {
    type: string
    sql: ${TABLE}.LEGAL_DEFEASANCE ;;
  }

  dimension: lesser_of {
    type: string
    sql: ${TABLE}.LESSER_OF ;;
  }

  dimension: leverage_test_is {
    type: string
    sql: ${TABLE}.LEVERAGE_TEST_IS ;;
  }

  dimension: leverage_test_sub {
    type: string
    sql: ${TABLE}.LEVERAGE_TEST_SUB ;;
  }

  dimension: liens_is {
    type: string
    sql: ${TABLE}.LIENS_IS ;;
  }

  dimension: liens_sub {
    type: string
    sql: ${TABLE}.LIENS_SUB ;;
  }

  dimension: maintenance_net_worth {
    type: string
    sql: ${TABLE}.MAINTENANCE_NET_WORTH ;;
  }

  dimension: market_price {
    type: number
    sql: ${TABLE}.MARKET_PRICE ;;
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
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MATURITY, "/", "-");;

}

  dimension: mtn {
    type: string
    label: "Medium Term Note"
    sql: ${TABLE}.MTN ;;
  }

  dimension: naics_code {
    type: string
    label: "NAICS Code"
    sql: ${TABLE}.NAICS_CODE ;;
  }

  dimension: negative_pledge_covenant {
    type: string
    sql: ${TABLE}.NEGATIVE_PLEDGE_COVENANT ;;
  }

  dimension: net_earnings_test_issuance {
    type: string
    sql: ${TABLE}.NET_EARNINGS_TEST_ISSUANCE ;;
  }

  dimension_group: next_put_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.NEXT_PUT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.NEXT_PUT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.NEXT_PUT_DATE, 7, 2));;
  }

  dimension: next_put_price {
    type: number
    sql: ${TABLE}.NEXT_PUT_PRICE ;;
  }

  dimension: notification_period {
    type: string
    sql: ${TABLE}.NOTIFICATION_PERIOD ;;
  }

  dimension: offering_amt {
    type: number
    label: "Offering Amount"
    sql: ${TABLE}.OFFERING_AMT ;;
  }

  dimension_group: offering_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.OFFERING_DATE, "/", "-");;
  }

  dimension: offering_price {
    type: number
    sql: ${TABLE}.OFFERING_PRICE ;;
  }

  dimension: offering_yield {
    type: number
    sql: ${TABLE}.OFFERING_YIELD ;;
  }

  dimension: oid {
    type: string
    label: "Orig Issue Discount"
    sql: ${TABLE}.OID ;;
  }

  dimension: orig_commod_price {
    type: number
    label: "Orig Commodity Price"
    sql: ${TABLE}.ORIG_COMMOD_PRICE ;;
  }

  dimension: orig_conv_premium {
    type: number
    sql: ${TABLE}.ORIG_CONV_PREMIUM ;;
  }

  dimension: orig_conv_price {
    type: number
    sql: ${TABLE}.ORIG_CONV_PRICE ;;
  }

  dimension: orig_percent_outstanding_com {
    type: number
    label: "Orig Pct Outstanding Com."
    sql: ${TABLE}.ORIG_PERCENT_OUTSTANDING_COM ;;
  }

  dimension: orig_qty_of_commod {
    type: number
    label: "Orig Qty of Com."
    sql: ${TABLE}.ORIG_QTY_OF_COMMOD ;;
  }

  dimension: orig_shares_outstanding {
    type: number
    sql: ${TABLE}.ORIG_SHARES_OUTSTANDING ;;
  }

  dimension: other_sec_issuer {
    type: string
    sql: ${TABLE}.OTHER_SEC_ISSUER ;;
  }

  dimension: other_sec_type {
    type: string
    sql: ${TABLE}.OTHER_SEC_TYPE ;;
  }

  dimension_group: overallotment_expiration_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.OVERALLOTMENT_EXPIRATION_DATE, 1, 4),"-",SUBSTRING(${TABLE}.OVERALLOTMENT_EXPIRATION_DATE, 5, 2),"-",SUBSTRING(${TABLE}.OVERALLOTMENT_EXPIRATION_DATE, 7, 2));;
  }

  dimension: overallotment_opt {
    type: string
    label: "Overallotment Option"
    sql: ${TABLE}.OVERALLOTMENT_OPT ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: pay_in_kind {
    type: string
    sql: ${TABLE}.PAY_IN_KIND ;;
  }

  dimension_group: pay_in_kind_exp_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.PAY_IN_KIND_EXP_DATE, 1, 4),"-",SUBSTRING(${TABLE}.PAY_IN_KIND_EXP_DATE, 5, 2),"-",SUBSTRING(${TABLE}.PAY_IN_KIND_EXP_DATE, 7, 2));;
  }

  dimension: peps {
    type: string
    label: "Conv Terms"
    sql: ${TABLE}.PEPS ;;
  }

  dimension: peps_higher_price {
    type: number
    label: "Conv Min Ratio Price"
    sql: ${TABLE}.PEPS_HIGHER_PRICE ;;
  }

  dimension: peps_issue_price {
    type: number
    label: "Issue Price"
    sql: ${TABLE}.PEPS_ISSUE_PRICE ;;
  }

  dimension: peps_lower_price {
    type: number
    label: "Conv Max Ratio Price"
    sql: ${TABLE}.PEPS_LOWER_PRICE ;;
  }

  dimension: peps_max_conversion_ratio {
    type: number
    label: "Max Conv Ratio"
    sql: ${TABLE}.PEPS_MAX_CONVERSION_RATIO ;;
  }

  dimension: peps_min_conversion_ratio {
    type: number
    label: "Min Conv Ratio"
    sql: ${TABLE}.PEPS_MIN_CONVERSION_RATIO ;;
  }

  dimension: percent_of_outstanding_commod {
    type: number
    label: "Percent of Outstanding Commodity"
    sql: ${TABLE}.PERCENT_OF_OUTSTANDING_COMMOD ;;
  }

  dimension: percs {
    type: string
    label: "Max Payoff"
    sql: ${TABLE}.PERCS ;;
  }

  dimension: percs_max_payoff {
    type: number
    sql: ${TABLE}.PERCS_MAX_PAYOFF ;;
  }

  dimension: perpetual {
    type: string
    sql: ${TABLE}.PERPETUAL ;;
  }

  dimension: preferred_security {
    type: string
    sql: ${TABLE}.PREFERRED_SECURITY ;;
  }

  dimension: preferred_stock_issuance {
    type: string
    sql: ${TABLE}.PREFERRED_STOCK_ISSUANCE ;;
  }

  dimension: press_release {
    type: string
    sql: ${TABLE}.PRESS_RELEASE ;;
  }

  dimension: principal_amt {
    type: number
    label: "Principal Amount"
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  dimension: principal_amt_per_unit {
    type: number
    label: "Principal Amount per Unit"
    sql: ${TABLE}.PRINCIPAL_AMT_PER_UNIT ;;
  }

  dimension: private_placement {
    type: string
    sql: ${TABLE}.PRIVATE_PLACEMENT ;;
  }

  dimension: prospectus_issuer_name {
    type: string
    sql: ${TABLE}.PROSPECTUS_ISSUER_NAME ;;
  }

  dimension: putable {
    type: string
    sql: ${TABLE}.PUTABLE ;;
  }

  dimension: qty_of_commod {
    type: number
    label: "Qty of Commodity"
    sql: ${TABLE}.QTY_OF_COMMOD ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: rating_decline_provision {
    type: string
    sql: ${TABLE}.RATING_DECLINE_PROVISION ;;
  }

  dimension: rating_decline_trigger_put {
    type: string
    sql: ${TABLE}.RATING_DECLINE_TRIGGER_PUT ;;
  }

  dimension: reallowance {
    type: number
    sql: ${TABLE}.REALLOWANCE ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.REASON ;;
  }

  dimension: redeemable {
    type: string
    sql: ${TABLE}.REDEEMABLE ;;
  }

  dimension: refund_protection {
    type: string
    sql: ${TABLE}.REFUND_PROTECTION ;;
  }

  dimension_group: refunding_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.REFUNDING_DATE, "/", "-");;
  }

  dimension: registration_rights {
    type: string
    sql: ${TABLE}.REGISTRATION_RIGHTS ;;
  }

  dimension_group: reset_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.RESET_DATE, 1, 4),"-",SUBSTRING(${TABLE}.RESET_DATE, 5, 2),"-",SUBSTRING(${TABLE}.RESET_DATE, 7, 2));;
  }

  dimension_group: reset_date_orig {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.RESET_DATE_ORIG, 1, 4),"-",SUBSTRING(${TABLE}.RESET_DATE_ORIG, 5, 2),"-",SUBSTRING(${TABLE}.RESET_DATE_ORIG, 7, 2));;
  }

  dimension: restricted_payments {
    type: string
    sql: ${TABLE}.RESTRICTED_PAYMENTS ;;
  }

  dimension: rule_144_a {
    type: string
    label: "Rule 144a"
    sql: ${TABLE}.RULE_144A ;;
  }

  dimension: rule_415_reg {
    type: string
    label: "Rule 415 Registration"
    sql: ${TABLE}.RULE_415_REG ;;
  }

  dimension: sale_assets {
    type: string
    sql: ${TABLE}.SALE_ASSETS ;;
  }

  dimension: sale_xfer_assets_unrestricted {
    type: string
    sql: ${TABLE}.SALE_XFER_ASSETS_UNRESTRICTED ;;
  }

  dimension: sales_leaseback_is {
    type: string
    sql: ${TABLE}.SALES_LEASEBACK_IS ;;
  }

  dimension: sales_leaseback_sub {
    type: string
    sql: ${TABLE}.SALES_LEASEBACK_SUB ;;
  }

  dimension: sc_make_whole_change_percent {
    type: number
    label: "Soft Call Change Pct"
    sql: ${TABLE}.SC_MAKE_WHOLE_CHANGE_PERCENT ;;
  }

  dimension: sc_make_whole_decrement_type {
    type: string
    label: "soft Call Change Code"
    sql: ${TABLE}.SC_MAKE_WHOLE_DECREMENT_TYPE ;;
  }

  dimension_group: sc_make_whole_end_date {
    type: time
    label: "Soft Call End Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.SC_MAKE_WHOLE_END_DATE, 1, 4),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_END_DATE, 5, 2),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_END_DATE, 7, 2));;
  }

  dimension: sc_make_whole_initial_amount {
    type: number
    label: "Soft Call Initial Amount"
    sql: ${TABLE}.SC_MAKE_WHOLE_INITIAL_AMOUNT ;;
  }

  dimension_group: sc_make_whole_start_date {
    type: time
    label: "Soft Call Start Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.SC_MAKE_WHOLE_START_DATE, 1, 4),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_START_DATE, 5, 2),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_START_DATE, 7, 2));;
  }

  dimension: sec_cusip {
    type: string
    label: "SEC CUSIP"
    sql: ${TABLE}.SEC_CUSIP ;;
  }

  dimension: sec_reg_type1 {
    type: string
    label: "SEC Registration Type"
    sql: ${TABLE}.SEC_REG_TYPE1 ;;
  }

  dimension: sec_reg_type2 {
    type: string
    label: "Additional SEC Registration Type"
    sql: ${TABLE}.SEC_REG_TYPE2 ;;
  }

  dimension: security_level {
    type: string
    sql: ${TABLE}.SECURITY_LEVEL ;;
  }

  dimension: security_pledge {
    type: string
    sql: ${TABLE}.SECURITY_PLEDGE ;;
  }

  dimension: sedol {
    type: string
    label: "SEDOL"
    sql: ${TABLE}.SEDOL ;;
  }

  dimension: see_note {
    type: string
    label: "Note Flag"
    sql: ${TABLE}.SEE_NOTE ;;
  }

  dimension: selling_concession {
    type: number
    sql: ${TABLE}.SELLING_CONCESSION ;;
  }

  dimension: senior_debt_issuance {
    type: string
    sql: ${TABLE}.SENIOR_DEBT_ISSUANCE ;;
  }

  dimension: settlement {
    type: string
    sql: ${TABLE}.SETTLEMENT ;;
  }

  dimension: settlement_type {
    type: string
    sql: ${TABLE}.SETTLEMENT_TYPE ;;
  }

  dimension: shares_outstanding {
    type: number
    sql: ${TABLE}.SHARES_OUTSTANDING ;;
  }

  dimension: sic_code {
    type: string
    label: "SIC Code"
    sql: ${TABLE}.SIC_CODE ;;
  }

  dimension: slob {
    type: string
    label: "SLOB"
    sql: ${TABLE}.SLOB ;;
  }

  dimension: soft_call_make_whole {
    type: string
    label: "Make Whole"
    sql: ${TABLE}.SOFT_CALL_MAKE_WHOLE ;;
  }

  dimension_group: split_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.SPLIT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.SPLIT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.SPLIT_DATE, 7, 2));;
  }

  dimension: split_ratio {
    type: string
    sql: ${TABLE}.SPLIT_RATIO ;;
  }

  dimension: stock_issuance {
    type: string
    sql: ${TABLE}.STOCK_ISSUANCE ;;
  }

  dimension: stock_issuance_issuer {
    type: string
    sql: ${TABLE}.STOCK_ISSUANCE_ISSUER ;;
  }

  dimension: stock_transfer_sale_disp {
    type: string
    sql: ${TABLE}.STOCK_TRANSFER_SALE_DISP ;;
  }

  dimension: subordinated_debt_issuance {
    type: string
    sql: ${TABLE}.SUBORDINATED_DEBT_ISSUANCE ;;
  }

  dimension: subsequent_data {
    type: string
    sql: ${TABLE}.SUBSEQUENT_DATA ;;
  }

  dimension: subsidiary_guarantee {
    type: string
    sql: ${TABLE}.SUBSIDIARY_GUARANTEE ;;
  }

  dimension: subsidiary_redesignation {
    type: string
    sql: ${TABLE}.SUBSIDIARY_REDESIGNATION ;;
  }

  dimension: tender_exch_offer {
    type: string
    label: "Tender/Exchange Offer"
    sql: ${TABLE}.TENDER_EXCH_OFFER ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.TICKER ;;
  }

  dimension: total_units_offered {
    type: number
    sql: ${TABLE}.TOTAL_UNITS_OFFERED ;;
  }

  dimension: transaction_affiliates {
    type: string
    sql: ${TABLE}.TRANSACTION_AFFILIATES ;;
  }

  dimension: treasury_maturity {
    type: string
    sql: ${TABLE}.TREASURY_MATURITY ;;
  }

  dimension: treasury_spread {
    type: number
    sql: ${TABLE}.TREASURY_SPREAD ;;
  }

  dimension: unit_cusip {
    type: string
    label: "Unit CUSIP"
    sql: ${TABLE}.UNIT_CUSIP ;;
  }

  dimension: unit_deal {
    type: string
    sql: ${TABLE}.UNIT_DEAL ;;
  }

  dimension: voting_power_percentage {
    type: number
    sql: ${TABLE}.VOTING_POWER_PERCENTAGE ;;
  }

  dimension: voting_power_percentage_erp {
    type: number
    sql: ${TABLE}.VOTING_POWER_PERCENTAGE_ERP ;;
  }

  dimension: yankee {
    type: string
    sql: ${TABLE}.YANKEE ;;
  }

  measure: count {
    type: count
    drill_fields: [cusip_name, prospectus_issuer_name, issue_name]
  }
}
