view: muni_issuance {
  #sql_table_name: `bi-model-development.looker_FINAL.Muni_Issuance`;;

  derived_table: {
    sql:
    SELECT * FROM`bi-model-development.looker_FINAL.Muni_Issuance` WHERE
    Discount IS NOT NULL AND
    Premium IS NOT NULL AND
    total_par_value IS NOT NULL AND
    The_yield_of_the_trade IS NOT NULL AND
    Sale_Date IS NOT NULL AND
    Treasury_Rate IS NOT NULL AND
    debt_type IS NOT NULL AND
    Issuer_City_State_Zip IS NOT NULL AND
    Bond_Cap_Amount IS NOT NULL AND
    Refund_Discount IS NOT NULL AND
    Refund_Premium IS NOT NULL AND
    Refund_Tax_Exempt_ParValue IS NOT NULL AND
    Refund_Taxable_ParValue IS NOT NULL AND
    Refund_Total_ParValue IS NOT NULL AND
    Taxable_Interest_Rate IS NOT NULL;;
  }


  dimension: admin_fee {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Admin_Fee ;;
  }

  dimension: bond_cap_amount {
    type: number
    value_format: "$#,##0.00"
    sql:  CAST(${TABLE}.Bond_Cap_Amount AS FLOAT64) ;;
  }


  dimension: Dollar_Price_of_the_trade {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: The_yield_of_the_trade {
    type: number
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension: bond_cap_issue {
    type: string
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
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Bond_Counsel_Fee ;;
  }

  dimension: bond_insurance_costs {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Bond_Insurance_Costs ;;
  }

  dimension: bond_insurer {
    type: string
    sql: ${TABLE}.Bond_Insurer ;;
  }



  dimension: city_identifier {
    type: string
    group_label: "geography"
    sql: ${TABLE}.City_Identifier ;;
  }


  dimension_group: closing {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Closing_Date ;;
  }



  dimension: county {
    type: string
    group_label: "geography"
    sql: ${TABLE}.County ;;
  }

  dimension: county_identifier {
    type: string
    group_label: "geography"
    sql: ${TABLE}.County_Identifier ;;
  }

  dimension: credit_enhancement_fee {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Credit_Enhancement_Fee ;;
  }

  dimension: cusip1 {
    type: string
    label: "cusip"
    primary_key: yes
    sql: ${TABLE}.CUSIP1 ;;
  }



  dimension: cusiprefunded_bond2 {
    type: string
    label: "cusip_refunded_bond"
    sql: ${TABLE}.CUSIPRefundedBond2 ;;
  }

  dimension_group: dated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Dated_Date ;;

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
    type: number
    value_format: "$#,##0.00"
    sql: CAST(${TABLE}.Discount AS FLOAT64) ;;
  }



  dimension: escrow_costs {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Escrow_Costs ;;
  }

  dimension: feasibility_study_fee {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Feasibility_Study_Fee ;;
  }

  dimension: financial_advisor_and_or_placement_agency {
    type: string
    sql: ${TABLE}.Financial_Advisor_and_or_Placement_Agency ;;
  }

  dimension: financial_advisor_fee {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Financial_Advisor_Fee ;;
  }

  dimension: gross_underwriting_spread {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Gross_Underwriting_Spread ;;
  }



  dimension: is_advance_refund {
    type: string
    sql: ${TABLE}.Is_Advance_Refund ;;
  }

  dimension: issuance_identifier {
    type: string
    sql: ${TABLE}.Issuance_Identifier ;;
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



  dimension_group: maturity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Maturity_Date ;;
  }




  dimension: miscellaneous_costs {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Miscellaneous_Costs ;;
  }

  # dimension: net_tax_exempt_interest_rate {
  #   type: number
  #   value_format: "0.00\%"
  #   sql: ${TABLE}.Net_Tax_Exempt_Interest_Rate ;;
  # }

  dimension: new_refund_combo {
    type: string
    sql: ${TABLE}.New_Refund_Combo ;;
  }



  dimension: number_of_bids {
    type: string
    sql: ${TABLE}.Number_of_Bids ;;
  }

  dimension: premium {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Premium ;;
  }

  dimension: printing_costs {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
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
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Rating_Agency_Fee ;;
  }

  dimension: refund_discount {
    type: number
    value_format: "$#,##0.00"
    sql: CAST(${TABLE}.Refund_Discount AS FLOAT64) ;;
  }

  # dimension: refund_net_tax_exempt_interest_rate {
  #   type: number
  #   value_format: "0.00\%"
  #   sql: ${TABLE}.Refund_Net_Tax_Exempt_Interest_Rate ;;
  # }

  # dimension: refund_net_taxable_interest_rate {
  #   type: number
  #   value_format: "0.00\%"
  #   sql: ${TABLE}.Refund_Net_Taxable_Interest_Rate ;;
  # }

  dimension: refund_premium {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Premium ;;
  }

  dimension: refund_tax_exempt_par_value {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Tax_Exempt_ParValue ;;
  }

  dimension: refund_taxable_par_value {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Taxable_ParValue ;;
  }

  dimension: refund_total_par_value {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Total_ParValue ;;
  }

  # dimension: refund_yield {
  #   type: number
  #   value_format: "0.00\%"
  #   sql: ${TABLE}.Refund_Yield ;;
  # }

  dimension: registrar {
    type: string
    sql: ${TABLE}.Registrar ;;
  }

  dimension_group: sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
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
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Settlement_Date ;;

  }

  dimension: state_identifier {
    type: string
    group_label: "geography"
    sql: ${TABLE}.State_Identifier ;;
  }



  dimension: tax_ex_interest_variable {
    type: string
    sql: ${TABLE}.Tax_Ex_Interest_Variable ;;
  }

  dimension: tax_exempt_par_value {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Tax_Exempt_Par_Value ;;
  }

  dimension: taxable_interest_rate {
    type: number
    value_format: "0.00\%"
    sql: CAST(${TABLE}.Taxable_Interest_Rate AS FLOAT64);;
  }

  dimension: taxable_interest_variable {
    type: string
    sql: ${TABLE}.Taxable_Interest_Variable ;;
  }

  dimension: taxable_par_value {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Taxable_Par_Value ;;
  }

  dimension_group: time_of_trade{
    type: time
    timeframes: [
      hour,
      minute,
      second
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Time_of_Trade ;;

  }

  dimension: total_par_value {
    type: number
    value_format: "$#,##0.00"
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
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Trade_Date ;;

  }

  dimension: trade_type_indicator {
    type: string
    case: {
      when: {
        sql:  ${TABLE}.Trade_Type_Indicator = "D" ;;
        label: "inter-dealer trade"
      }
      when: {
        sql:  ${TABLE}.Trade_Type_Indicator = "P" ;;
        label: "purchase from a customer by a dealer"
      }
      when: {
        sql:  ${TABLE}.Trade_Type_Indicator = "S" ;;
        label: "sale to a customer by a dealer"
      }
    }

  }

  dimension: travel_costs {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Travel_Costs ;;
  }

  dimension: treasury_rate {
    type: string
    sql: ${TABLE}.Treasury_Rate ;;
  }

  dimension: trustee {
    type: string
    sql: ${TABLE}.Trustee ;;
  }

  dimension: trustee_fee {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Trustee_Fee ;;
  }

  dimension: uw_counsel_fee {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.UW_Counsel_Fee ;;
  }

  dimension: uw_spread_per_1000 {
    type: number
    sql: ${TABLE}.UW_Spread_per_1000 ;;
  }



  dimension: voter_approved {
    type: string
    sql: ${TABLE}.Voter_Approved ;;
  }

  dimension: year_identifier {
    type: string
    label: "Year"
    sql: ${TABLE}.Year_Identifier ;;
  }

  # dimension: yield {
  #   type: number
  #   value_format: "0.00\%"
  #   sql: ${TABLE}.Yield ;;
  # }


####################################################################################

  measure: count {
    type: count
    drill_fields: [issuer_name]
  }
  measure: admin_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Admin_Fee ;;
  }

  measure: bond_cap_amount_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Bond_Cap_Amount ;;
  }


  measure: Dollar_Price_of_the_trade_ {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  measure: The_yield_of_the_trade_ {
    type: number
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  measure: bond_counsel_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Bond_Counsel_Fee ;;
  }

  measure: bond_insurance_costs_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Bond_Insurance_Costs ;;
  }


  measure: credit_enhancement_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Credit_Enhancement_Fee ;;
  }

  measure: discount_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Discount ;;
  }



  measure: escrow_costs_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Escrow_Costs ;;
  }

  measure: feasibility_study_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Feasibility_Study_Fee ;;
  }

  measure: financial_advisor_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Financial_Advisor_Fee ;;
  }

  measure: gross_underwriting_spread_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Gross_Underwriting_Spread ;;
  }

  measure: miscellaneous_costs_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Miscellaneous_Costs ;;
  }

  measure: premium_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Premium ;;
  }

  measure: printing_costs_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Printing_Costs ;;
  }


  measure: rating_agency_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Rating_Agency_Fee ;;
  }

  measure: refund_discount_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Discount ;;
  }


  measure: refund_premium_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Premium ;;
  }

  measure: refund_tax_exempt_par_value_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Tax_Exempt_ParValue ;;
  }

  measure: refund_taxable_par_value_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Taxable_ParValue ;;
  }

  measure: refund_total_par_value_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Refund_Total_ParValue ;;
  }


  measure: tax_exempt_par_value_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Tax_Exempt_Par_Value ;;
  }

  measure: taxable_interest_rate_ {
    type: number
    value_format: "0.00\%"
    sql: ${TABLE}.Taxable_Interest_Rate ;;
  }


  measure: taxable_par_value_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Taxable_Par_Value ;;
  }


  measure: total_par_value_ {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.Total_Par_Value ;;
  }

  measure: travel_costs_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Travel_Costs ;;
  }

  measure: trustee_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.Trustee_Fee ;;
  }

  measure: uw_counsel_fee_ {
    type: number
    value_format: "$#,##0.00"
    group_label: "cost & fees"
    sql: ${TABLE}.UW_Counsel_Fee ;;
  }

  measure: uw_spread_per_1000_ {
    type: number
    sql: ${TABLE}.UW_Spread_per_1000 ;;
  }




}
