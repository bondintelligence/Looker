view: muni_issuance3 {
  sql_table_name: `bi-model-development.looker_FINAL.muni_issuance3`
    ;;

  dimension: _10_year_treasury_constant_maturity_rate__percent__daily__not_seasonally_adjusted {
    type: number
    label: "10_year_treasury_rate"
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate__Percent__Daily__Not_Seasonally_Adjusted ;;
  }

  dimension: admin_fee {
    type: number
    sql: ${TABLE}.Admin_Fee ;;
  }

  dimension: assumed_settlement_date {
    type: string
    sql: ${TABLE}.Assumed_Settlement_Date ;;
  }

  dimension: bond_cap_amount {
    type: string
    sql: ${TABLE}.Bond_Cap_Amount ;;
  }

  dimension: bond_cap_issue {
    type: yesno
    sql: ${TABLE}.Bond_Cap_Issue ;;
  }

  dimension: bond_cap_project_title {
    type: string
    sql: ${TABLE}.Bond_Cap_Project_Title ;;
  }

  dimension: bond_cap_use_category {
    type: string
    sql: ${TABLE}.Bond_Cap_Use_Category ;;
  }

  dimension: bond_counsel {
    type: string
    sql: ${TABLE}.Bond_Counsel ;;
  }

  dimension: bond_counsel_fee {
    type: number
    sql: ${TABLE}.Bond_Counsel_Fee ;;
  }

  dimension: bond_insurance_costs {
    type: number
    sql: ${TABLE}.Bond_Insurance_Costs ;;
  }

  dimension: bond_insurer {
    type: string
    sql: ${TABLE}.Bond_Insurer ;;
  }

  dimension: broker_s_broker_indicator {
    type: string
    sql: ${TABLE}.Broker_s_Broker_Indicator ;;
  }

  dimension: city_identifier {
    type: string
    sql: ${TABLE}.CityIdentifier ;;
  }

  dimension_group: closing {
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
    sql: ${TABLE}.Closing_Date ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: county_identifier {
    type: string
    sql: ${TABLE}.CountyIdentifier ;;
  }

  dimension: credit_enhancement_fee {
    type: string
    sql: ${TABLE}.Credit_Enhancement_Fee ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }



  dimension_group: dated {
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
    sql: ${TABLE}.Dated_Date ;;
  }

  dimension_group: dated_date_of_the_issue_traded {
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
    sql: ${TABLE}.Dated_date_of_the_issue_traded ;;
  }

  dimension: debt_category {
    type: string
    sql: ${TABLE}.Debt_Category ;;
  }

  dimension: debt_type {
    type: string
    sql: ${TABLE}.Debt_Type ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.Discount ;;
  }

  dimension: dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: escrow_costs {
    type: string
    sql: ${TABLE}.Escrow_Costs ;;
  }

  dimension: feasibility_study_fee {
    type: number
    sql: ${TABLE}.Feasibility_Study_Fee ;;
  }

  dimension: financial_advisor_and_or_placement_agency {
    type: string
    sql: ${TABLE}.Financial_Advisor_and_or_Placement_Agency ;;
  }

  dimension: financial_advisor_fee {
    type: number
    sql: ${TABLE}.Financial_Advisor_Fee ;;
  }

  dimension: gross_underwriting_spread {
    type: string
    sql: ${TABLE}.Gross_Underwriting_Spread ;;
  }

  dimension: interest_rate_of_the_issue_traded {
    type: string
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }

  dimension: is_advance_refund {
    type: string
    sql: ${TABLE}.IsAdvanceRefund ;;
  }

  dimension: issuance_identifier {
    type: string
    sql: ${TABLE}.IssuanceIdentifier ;;
  }

  dimension: issue_title {
    type: string
    sql: ${TABLE}.Issue_Title ;;
  }

  dimension: issuer_address {
    type: string
    sql: ${TABLE}.Issuer_Address ;;
  }

  dimension: issuer_city_state_zip {
    type: string
    sql: ${TABLE}.Issuer_City_State_Zip ;;
  }

  dimension: issuer_name {
    type: string
    sql: ${TABLE}.Issuer_Name ;;
  }

  dimension: issuer_type {
    type: string
    sql: ${TABLE}.Issuer_Type ;;
  }

  dimension: lead_underwriter {
    type: string
    sql: ${TABLE}.Lead_Underwriter ;;
  }

  dimension: list_offering_price_takedown_indicator {
    type: string
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
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
    sql: ${TABLE}.Maturity_Date ;;
  }

  dimension_group: maturity_date_of_the_issue_traded {
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
    sql: ${TABLE}.Maturity_date_of_the_issue_traded ;;
  }

  dimension: miscellaneous_costs {
    type: string
    sql: ${TABLE}.Miscellaneous_Costs ;;
  }

  dimension: net_tax_exempt_interest_rate {
    type: string
    sql: ${TABLE}.Net_Tax_Exempt_Interest_Rate ;;
  }

  dimension: new_refund_combo {
    type: string
    sql: ${TABLE}.New_Refund_Combo ;;
  }

  dimension: non_transaction_based_compensation_arrangement__ntbc__indicator {
    type: string
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement__NTBC__Indicator ;;
  }

  dimension: number_of_bids {
    type: string
    sql: ${TABLE}.Number_of_Bids ;;
  }

  dimension: premium {
    type: string
    sql: ${TABLE}.Premium ;;
  }

  dimension: printing_costs {
    type: string
    sql: ${TABLE}.Printing_Costs ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.Purpose ;;
  }

  dimension: purpose_type {
    type: string
    sql: ${TABLE}.Purpose_Type ;;
  }

  dimension: rating_agency_fee {
    type: string
    sql: ${TABLE}.Rating_Agency_Fee ;;
  }

  dimension: refund_discount {
    type: string
    sql: ${TABLE}.RefundDiscount ;;
  }

  dimension: refund_net_tax_exempt_interest_rate {
    type: string
    sql: ${TABLE}.RefundNetTaxExemptInterestRate ;;
  }

  dimension: refund_net_taxable_interest_rate {
    type: string
    sql: ${TABLE}.RefundNetTaxableInterestRate ;;
  }

  dimension: refund_premium {
    type: string
    sql: ${TABLE}.RefundPremium ;;
  }

  dimension: refund_tax_exempt_par_value {
    type: string
    sql: ${TABLE}.RefundTaxExemptParValue ;;
  }

  dimension: refund_taxable_par_value {
    type: string
    sql: ${TABLE}.RefundTaxableParValue ;;
  }

  dimension: refund_total_par_value {
    type: string
    sql: ${TABLE}.RefundTotalParValue ;;
  }

  dimension: refund_yield {
    type: string
    sql: ${TABLE}.RefundYield ;;
  }

  dimension: registrar {
    type: string
    sql: ${TABLE}.Registrar ;;
  }





  dimension_group: sale {
    type: time
    label: "sale_date"
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
    sql: ${TABLE}.Sale_Date ;;
  }

  dimension: sale_method {
    type: string
    sql: ${TABLE}.Sale_Method ;;
  }

  dimension: security {
    type: string
    sql: ${TABLE}.Security ;;
  }

  dimension: security_description {
    type: string
    sql: ${TABLE}.Security_Description ;;
  }

  dimension: series {
    type: string
    sql: ${TABLE}.Series ;;
  }

  dimension_group: settlement {
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
    sql: ${TABLE}.Settlement_Date ;;
  }

  dimension: state_identifier {
    type: string
    sql: ${TABLE}.StateIdentifier ;;
  }

  dimension: submitted_date {
    type: string
    sql: ${TABLE}.Submitted_Date ;;
  }

  dimension: tax_ex_interest_variable_ {
    type: string
    sql: ${TABLE}.Tax_Ex_Interest_Variable_ ;;
  }

  dimension: tax_exempt_par_value {
    type: string
    sql: ${TABLE}.Tax_Exempt_Par_Value ;;
  }

  dimension: taxable_interest_rate {
    type: string
    sql: ${TABLE}.Taxable_Interest_Rate ;;
  }

  dimension: taxable_interest_variable_ {
    type: yesno
    sql: ${TABLE}.Taxable_Interest_Variable_ ;;
  }

  dimension: taxable_par_value {
    type: string
    sql: ${TABLE}.Taxable_Par_Value ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: the_yield_of_the_trade {
    type: string
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension_group: time_of_trade {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Time_of_Trade ;;
  }

  dimension: total_par_value {
    type: string
    sql: ${TABLE}.Total_Par_Value ;;
  }

  dimension_group: trade {
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
    sql: ${TABLE}.Trade_Date ;;
  }

  dimension: trade_type_indicator {
    type: string
    sql: ${TABLE}.Trade_Type_Indicator ;;
  }

  dimension: travel_costs {
    type: number
    sql: ${TABLE}.Travel_Costs ;;
  }

  dimension: trustee {
    type: string
    sql: ${TABLE}.Trustee ;;
  }

  dimension: trustee_fee {
    type: string
    sql: ${TABLE}.Trustee_Fee ;;
  }

  dimension: uw_counsel_fee {
    type: string
    sql: ${TABLE}.UW_Counsel_Fee ;;
  }

  dimension: uw_spread_per__1_000 {
    type: number
    sql: ${TABLE}.UW_Spread_per__1_000 ;;
  }


  dimension: voter_approved {
    type: yesno
    sql: ${TABLE}.Voter_Approved ;;
  }

  dimension: weighted_price_indicator {
    type: string
    sql: ${TABLE}.Weighted_Price_Indicator ;;
  }

  dimension: when_issued_indicator {
    type: string
    sql: ${TABLE}.When_Issued_Indicator ;;
  }

  dimension: year_identifier {
    type: string
    sql: ${TABLE}.YearIdentifier ;;
  }

  dimension: yield {
    type: string
    sql: ${TABLE}.Yield ;;
  }

  measure: count {
    type: count
    drill_fields: [issuer_name]
  }
}
