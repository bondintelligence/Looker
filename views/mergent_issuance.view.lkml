view: mergent_issuance {
  sql_table_name: `bi-model-development.looker_FINAL.Mergent_Issuance`
    ;;

  dimension: action_amount {
    type: string
    sql: ${TABLE}.ACTION_AMOUNT ;;
  }

  dimension: action_price {
    type: string
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
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: allocated_offering_price_other {
    type: string
    sql: ${TABLE}.ALLOCATED_OFFERING_PRICE_OTHER ;;
  }

  dimension: allocated_offering_price_unit {
    type: string
    sql: ${TABLE}.ALLOCATED_OFFERING_PRICE_UNIT ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_outstanding {
    type: string
    sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  }

  dimension: amt_offered {
    type: string
    sql: ${TABLE}.AMT_OFFERED ;;
  }

  dimension: announced_call {
    type: string
    sql: ${TABLE}.ANNOUNCED_CALL ;;
  }

  dimension: as_of_date {
    type: string
    sql: ${TABLE}.AS_OF_DATE ;;
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
    sql: ${TABLE}.CANADIAN ;;
  }

  dimension: change_control_put_provisions {
    type: string
    sql: ${TABLE}.CHANGE_CONTROL_PUT_PROVISIONS ;;
  }

  dimension: change_date {
    type: string
    sql: ${TABLE}.CHANGE_DATE ;;
  }

  dimension: coco_change_frequency {
    type: string
    sql: ${TABLE}.COCO_CHANGE_FREQUENCY ;;
  }

  dimension: coco_change_rate {
    type: string
    sql: ${TABLE}.COCO_CHANGE_RATE ;;
  }

  dimension: coco_end_date {
    type: string
    sql: ${TABLE}.COCO_END_DATE ;;
  }

  dimension: coco_initial_trigger_percent {
    type: string
    sql: ${TABLE}.COCO_INITIAL_TRIGGER_PERCENT ;;
  }

  dimension: coco_min_trigger_level {
    type: string
    sql: ${TABLE}.COCO_MIN_TRIGGER_LEVEL ;;
  }

  dimension: coco_start_date {
    type: string
    sql: ${TABLE}.COCO_START_DATE ;;
  }

  dimension: coco_trade_days {
    type: string
    sql: ${TABLE}.COCO_TRADE_DAYS ;;
  }

  dimension: coco_trade_days_in_previous {
    type: string
    sql: ${TABLE}.COCO_TRADE_DAYS_IN_PREVIOUS ;;
  }

  dimension: coco_trigger_expressed_as {
    type: string
    sql: ${TABLE}.COCO_TRIGGER_EXPRESSED_AS ;;
  }

  dimension: commod_price {
    type: string
    sql: ${TABLE}.COMMOD_PRICE ;;
  }

  dimension: comp_neg_exch_deal {
    type: string
    sql: ${TABLE}.COMP_NEG_EXCH_DEAL ;;
  }

  dimension: complete_cusip {
    type: string
    sql: ${TABLE}.COMPLETE_CUSIP ;;
  }

  dimension: conditional_conv_terms {
    type: string
    sql: ${TABLE}.CONDITIONAL_CONV_TERMS ;;
  }

  dimension: consolidation_merger {
    type: string
    sql: ${TABLE}.CONSOLIDATION_MERGER ;;
  }

  dimension: conv_cash {
    type: string
    sql: ${TABLE}.CONV_CASH ;;
  }

  dimension: conv_commod_cusip {
    type: string
    sql: ${TABLE}.CONV_COMMOD_CUSIP ;;
  }

  dimension: conv_commod_issuer {
    type: string
    sql: ${TABLE}.CONV_COMMOD_ISSUER ;;
  }

  dimension: conv_commod_type {
    type: string
    sql: ${TABLE}.CONV_COMMOD_TYPE ;;
  }

  dimension: conv_eff_date {
    type: string
    sql: ${TABLE}.CONV_EFF_DATE ;;
  }

  dimension: conv_exp_date {
    type: string
    sql: ${TABLE}.CONV_EXP_DATE ;;
  }

  dimension: conv_part_trade_days {
    type: string
    sql: ${TABLE}.CONV_PART_TRADE_DAYS ;;
  }

  dimension: conv_period_days {
    type: string
    sql: ${TABLE}.CONV_PERIOD_DAYS ;;
  }

  dimension: conv_period_spec {
    type: string
    sql: ${TABLE}.CONV_PERIOD_SPEC ;;
  }

  dimension: conv_premium {
    type: string
    sql: ${TABLE}.CONV_PREMIUM ;;
  }

  dimension: conv_price {
    type: string
    sql: ${TABLE}.CONV_PRICE ;;
  }

  dimension: conv_price_percent {
    type: string
    sql: ${TABLE}.CONV_PRICE_PERCENT ;;
  }

  dimension: conv_prohibited_from {
    type: string
    sql: ${TABLE}.CONV_PROHIBITED_FROM ;;
  }

  dimension: conv_redemp_date {
    type: string
    sql: ${TABLE}.CONV_REDEMP_DATE ;;
  }

  dimension: conv_redemp_exception {
    type: string
    sql: ${TABLE}.CONV_REDEMP_EXCEPTION ;;
  }

  dimension: conv_total_trade_days {
    type: string
    sql: ${TABLE}.CONV_TOTAL_TRADE_DAYS ;;
  }

  dimension: conversion_rate {
    type: string
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
    type: string
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
    sql: ${TABLE}.CUSIP_NAME ;;
  }

  dimension: date_subj_adjustment {
    type: string
    sql: ${TABLE}.DATE_SUBJ_ADJUSTMENT ;;
  }

  dimension: date_transferable {
    type: string
    sql: ${TABLE}.DATE_TRANSFERABLE ;;
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
    convert_tz: no
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
    type: string
    sql: ${TABLE}.DECLINING_NET_WORTH_PERCENTAGE ;;
  }

  dimension: declining_net_worth_provisions {
    type: string
    sql: ${TABLE}.DECLINING_NET_WORTH_PROVISIONS ;;
  }

  dimension: declining_net_worth_trigger {
    type: string
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
    sql: ${TABLE}.DEFEASANCE_WO_TAX_CONSEQ ;;
  }

  dimension: defeased {
    type: string
    sql: ${TABLE}.DEFEASED ;;
  }

  dimension: defeased_date {
    type: string
    sql: ${TABLE}.DEFEASED_DATE ;;
  }

  dimension: delivery_date {
    type: string
    sql: ${TABLE}.DELIVERY_DATE ;;
  }

  dimension: denomination {
    type: string
    sql: ${TABLE}.DENOMINATION ;;
  }

  dimension: dep_eligibility {
    type: string
    sql: ${TABLE}.DEP_ELIGIBILITY ;;
  }

  dimension: determination_date {
    type: string
    sql: ${TABLE}.DETERMINATION_DATE ;;
  }

  dimension: determination_date_orig {
    type: string
    sql: ${TABLE}.DETERMINATION_DATE_ORIG ;;
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

  dimension: effective_date {
    type: string
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }

  dimension: enhancement {
    type: string
    sql: ${TABLE}.ENHANCEMENT ;;
  }

  dimension: esop {
    type: string
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

  dimension: exercised_date {
    type: string
    sql: ${TABLE}.EXERCISED_DATE ;;
  }

  dimension: filing_date {
    type: string
    sql: ${TABLE}.FILING_DATE ;;
  }

  dimension: first_interest_date {
    type: string
    sql: ${TABLE}.FIRST_INTEREST_DATE ;;
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
    type: string
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
    sql: ${TABLE}.ISIN ;;
  }

  dimension: issue_cusip {
    type: string
    sql: ${TABLE}.ISSUE_CUSIP ;;
  }

  dimension: issue_id {
    type: string
    sql: ${TABLE}.ISSUE_ID ;;
  }

  dimension: issue_name {
    type: string
    sql: ${TABLE}.ISSUE_NAME ;;
  }

  dimension: issue_offered_global {
    type: string
    sql: ${TABLE}.ISSUE_OFFERED_GLOBAL ;;
  }

  dimension: issuer_cusip {
    type: string
    sql: ${TABLE}.ISSUER_CUSIP ;;
  }

  dimension: issuer_id {
    type: string
    sql: ${TABLE}.ISSUER_ID ;;
  }

  dimension: issuer_id_affected {
    type: string
    sql: ${TABLE}.ISSUER_ID_AFFECTED ;;
  }

  dimension: last_interest_date {
    type: string
    sql: ${TABLE}.LAST_INTEREST_DATE ;;
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
    type: string
    sql: ${TABLE}.MARKET_PRICE ;;
  }

  dimension: maturity {
    type: string
    sql: ${TABLE}.MATURITY ;;
  }

  dimension: mtn {
    type: string
    sql: ${TABLE}.MTN ;;
  }

  dimension: naics_code {
    type: string
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

  dimension: next_put_date {
    type: string
    sql: ${TABLE}.NEXT_PUT_DATE ;;
  }

  dimension: next_put_price {
    type: string
    sql: ${TABLE}.NEXT_PUT_PRICE ;;
  }

  dimension: notification_period {
    type: string
    sql: ${TABLE}.NOTIFICATION_PERIOD ;;
  }

  dimension: offering_amt {
    type: string
    sql: ${TABLE}.OFFERING_AMT ;;
  }

  dimension: offering_date {
    type: string
    sql: ${TABLE}.OFFERING_DATE ;;
  }

  dimension: offering_price {
    type: string
    sql: ${TABLE}.OFFERING_PRICE ;;
  }

  dimension: offering_yield {
    type: string
    sql: ${TABLE}.OFFERING_YIELD ;;
  }

  dimension: oid {
    type: string
    sql: ${TABLE}.OID ;;
  }

  dimension: orig_commod_price {
    type: string
    sql: ${TABLE}.ORIG_COMMOD_PRICE ;;
  }

  dimension: orig_conv_premium {
    type: string
    sql: ${TABLE}.ORIG_CONV_PREMIUM ;;
  }

  dimension: orig_conv_price {
    type: string
    sql: ${TABLE}.ORIG_CONV_PRICE ;;
  }

  dimension: orig_percent_outstanding_com {
    type: string
    sql: ${TABLE}.ORIG_PERCENT_OUTSTANDING_COM ;;
  }

  dimension: orig_qty_of_commod {
    type: string
    sql: ${TABLE}.ORIG_QTY_OF_COMMOD ;;
  }

  dimension: orig_shares_outstanding {
    type: string
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

  dimension: overallotment_expiration_date {
    type: string
    sql: ${TABLE}.OVERALLOTMENT_EXPIRATION_DATE ;;
  }

  dimension: overallotment_opt {
    type: string
    sql: ${TABLE}.OVERALLOTMENT_OPT ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: pay_in_kind {
    type: string
    sql: ${TABLE}.PAY_IN_KIND ;;
  }

  dimension: pay_in_kind_exp_date {
    type: string
    sql: ${TABLE}.PAY_IN_KIND_EXP_DATE ;;
  }

  dimension: peps {
    type: string
    sql: ${TABLE}.PEPS ;;
  }

  dimension: peps_higher_price {
    type: string
    sql: ${TABLE}.PEPS_HIGHER_PRICE ;;
  }

  dimension: peps_issue_price {
    type: string
    sql: ${TABLE}.PEPS_ISSUE_PRICE ;;
  }

  dimension: peps_lower_price {
    type: string
    sql: ${TABLE}.PEPS_LOWER_PRICE ;;
  }

  dimension: peps_max_conversion_ratio {
    type: string
    sql: ${TABLE}.PEPS_MAX_CONVERSION_RATIO ;;
  }

  dimension: peps_min_conversion_ratio {
    type: string
    sql: ${TABLE}.PEPS_MIN_CONVERSION_RATIO ;;
  }

  dimension: percent_of_outstanding_commod {
    type: string
    sql: ${TABLE}.PERCENT_OF_OUTSTANDING_COMMOD ;;
  }

  dimension: percs {
    type: string
    sql: ${TABLE}.PERCS ;;
  }

  dimension: percs_max_payoff {
    type: string
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
    type: string
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  dimension: principal_amt_per_unit {
    type: string
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
    type: string
    sql: ${TABLE}.QTY_OF_COMMOD ;;
  }

  dimension: quantity {
    type: string
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
    type: string
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

  dimension: refunding_date {
    type: string
    sql: ${TABLE}.REFUNDING_DATE ;;
  }

  dimension: registration_rights {
    type: string
    sql: ${TABLE}.REGISTRATION_RIGHTS ;;
  }

  dimension: reset_date {
    type: string
    sql: ${TABLE}.RESET_DATE ;;
  }

  dimension: reset_date_orig {
    type: string
    sql: ${TABLE}.RESET_DATE_ORIG ;;
  }

  dimension: restricted_payments {
    type: string
    sql: ${TABLE}.RESTRICTED_PAYMENTS ;;
  }

  dimension: rule_144_a {
    type: string
    sql: ${TABLE}.RULE_144A ;;
  }

  dimension: rule_415_reg {
    type: string
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
    type: string
    sql: ${TABLE}.SC_MAKE_WHOLE_CHANGE_PERCENT ;;
  }

  dimension: sc_make_whole_decrement_type {
    type: string
    sql: ${TABLE}.SC_MAKE_WHOLE_DECREMENT_TYPE ;;
  }

  dimension: sc_make_whole_end_date {
    type: string
    sql: ${TABLE}.SC_MAKE_WHOLE_END_DATE ;;
  }

  dimension: sc_make_whole_initial_amount {
    type: string
    sql: ${TABLE}.SC_MAKE_WHOLE_INITIAL_AMOUNT ;;
  }

  dimension: sc_make_whole_start_date {
    type: string
    sql: ${TABLE}.SC_MAKE_WHOLE_START_DATE ;;
  }

  dimension: sec_cusip {
    type: string
    sql: ${TABLE}.SEC_CUSIP ;;
  }

  dimension: sec_reg_type1 {
    type: string
    sql: ${TABLE}.SEC_REG_TYPE1 ;;
  }

  dimension: sec_reg_type2 {
    type: string
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
    sql: ${TABLE}.SEDOL ;;
  }

  dimension: see_note {
    type: string
    sql: ${TABLE}.SEE_NOTE ;;
  }

  dimension: selling_concession {
    type: string
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
    type: string
    sql: ${TABLE}.SHARES_OUTSTANDING ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.SIC_CODE ;;
  }

  dimension: slob {
    type: string
    sql: ${TABLE}.SLOB ;;
  }

  dimension: soft_call_make_whole {
    type: string
    sql: ${TABLE}.SOFT_CALL_MAKE_WHOLE ;;
  }

  dimension: split_date {
    type: string
    sql: ${TABLE}.SPLIT_DATE ;;
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
    sql: ${TABLE}.TENDER_EXCH_OFFER ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.TICKER ;;
  }

  dimension: total_units_offered {
    type: string
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
    type: string
    sql: ${TABLE}.TREASURY_SPREAD ;;
  }

  dimension: unit_cusip {
    type: string
    sql: ${TABLE}.UNIT_CUSIP ;;
  }

  dimension: unit_deal {
    type: string
    sql: ${TABLE}.UNIT_DEAL ;;
  }

  dimension: voting_power_percentage {
    type: string
    sql: ${TABLE}.VOTING_POWER_PERCENTAGE ;;
  }

  dimension: voting_power_percentage_erp {
    type: string
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
