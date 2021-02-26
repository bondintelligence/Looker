view: mergent_issuance {
  sql_table_name: `bi-model-development.looker_FINAL.Mergent_Issuance`
    ;;

  dimension: action_amount {
    type: number
    group_label: "Amount_Outstanding"
    description: "The amount by which the issue's amount outstanding was adjusted. For example, the amount of the issue called, repurchased, or exchanged."
    sql: ${TABLE}.ACTION_AMOUNT ;;
  }

  dimension: action_price {
    type: number
    group_label: "Amount_Outstanding"
    sql: ${TABLE}.ACTION_PRICE ;;
  }

  dimension: action_type {
    type: string
    group_label: "Amount_Outstanding"
    description: "A four-letter code representing the type of action that took place to change the amount outstanding."
    case: {
      when: {
        sql: ${TABLE}.ACTION_TYPE = "B" ;;
        label: "BalanceOfIssueCalled"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C" ;;
        label: "IssueConverted"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "D" ;;
        label: "EminentDomain"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "E" ;;
        label: "EntireIssueCalled"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "I" ;;
        label: "InitialOfferingOfAnIssue"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IA" ;;
        label: "InactiveIssue"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "ID" ;;
        label: "IssueDefeased"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "II" ;;
        label: "InitialOfferingIncrease"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IL" ;;
        label: "InitialLoad"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IM" ;;
        label: "IssueMatured"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IPO" ;;
        label: "IPOClawbackOption"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IRM" ;;
        label: "IssueRemarketed"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IRP" ;;
        label: "IssueRepurchased"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "L" ;;
        label: "ReleaseOfProperty"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "M" ;;
        label: "MaintenanceAndReplacement"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "N" ;;
        label: "NotAvailable"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O" ;;
        label: "OptionalSinkingFundIncrease"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "OA" ;;
        label: "Over-Allotment"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "P" ;;
        label: "PartOfAnIssueCalled"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "PIK" ;;
        label: "Pay-In-Kind"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "R" ;;
        label: "Reorganization"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "REV" ;;
        label: "Review"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "RO" ;;
        label: "Reopening"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "S" ;;
        label: "SinkingFundPayment"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "SA" ;;
        label: "SaleOfAsset"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "SD" ;;
        label: "SuddenDeath"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "T" ;;
        label: "IssueTendered"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "TR" ;;
        label: "TreasuryReconstitution"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "X" ;;
        label: "IssueExchanged"
      }
    }
  }

  dimension: active_issue {
    type: string
    group_label: "Issue"
    description: "Flag indicating whether all or a portion of this issue remains outstanding. A value of “Y” indicates the issue currently has an amount outstanding greater than zero. A value of “N” indicates the issue currently has an amount outstanding of zero (i.e. the issue has been retired in full)."
    sql: ${TABLE}.ACTIVE_ISSUE ;;
  }

  # dimension: after_acquired_property_clause {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "Property acquired after the sale of current debt issues will be included in the current issuer's mortgage. Normally found in utility issuers with blanket mortgages."
  #   sql: ${TABLE}.AFTER_ACQUIRED_PROPERTY_CLAUSE ;;
  # }

  # dimension: agent_id {
  #   type: number
  #   sql: ${TABLE}.AGENT_ID ;;
  # }

  # dimension: allocated_offering_price_other {
  #   type: number
  #   group_label: "Other Security"
  #   description: "Portion of the unit price allocated to the non-debt, non-warrant security in the unit."
  #   sql: ${TABLE}.ALLOCATED_OFFERING_PRICE_OTHER ;;
  # }

  # dimension: allocated_offering_price_unit {
  #   type: number
  #   group_label: "Unit"
  #   description: "From the prospectus, the value of the bond part of the unit. The unit's price is divided into the price allocated to the bond and the price allocated to the second security in the unit."
  #   sql: ${TABLE}.ALLOCATED_OFFERING_PRICE_UNIT ;;
  # }

  # dimension: amount {
  #   type: number
  #   group_label: "Overallotment"
  #   sql: ${TABLE}.AMOUNT ;;
  # }

  dimension: amount_outstanding {
    type: number
    group_label: "Amount_Outstanding"
    description: "The amount of the issue remaining outstanding."
    sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  }

  # dimension: amt_offered {
  #   type: number
  #   group_label: "Issue"
  #   label: "Amount Offered"
  #   description: "Issue's par amount in the currency of denomination."
  #   sql: ${TABLE}.AMT_OFFERED ;;
  # }

  dimension: announced_call {
    type: string
    group_label: "Issue"
    description: "provides users with a schedule of future announced partial or full calls for every issue in the database"
    sql: ${TABLE}.ANNOUNCED_CALL ;;
  }

  # dimension_group: as_of_date {
  #   label: "Convertible As of"
  #   description: "The date the current convertible information was added to the issue."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.AS_OF_DATE, 1, 4),"-",SUBSTRING(${TABLE}.AS_OF_DATE, 5, 2),"-",SUBSTRING(${TABLE}.AS_OF_DATE, 7, 2));;
  # }

  dimension: asset_backed {
    type: string
    group_label: "Issue"
    description: "Flag indicating that the issue is an asset-backed issue, that is collateralized by a portfolio of loans or assets other than single family mortgages."
    sql: ${TABLE}.ASSET_BACKED ;;
  }

  # dimension: asset_sale_clause {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "Covenant requiring the issuer to use net proceeds from the sale of certain assets to redeem the bonds at par or at a premium. This covenant does not limit the issuers right to sell assets"
  #   sql: ${TABLE}.ASSET_SALE_CLAUSE ;;
  # }

  dimension: bond_type {
    type: string
    group_label: "Issue"
    case: {
      when: {
        sql: ${TABLE}.ACTION_TYPE = "ABS" ;;
        label: "US Asset Backed Security"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "ADEB" ;;
        label: "US Agency Debenture"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "ADNT" ;;
        label: "US Agency Discount Notes"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "AMTN" ;;
        label: "US Agency MTN"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "ARNT" ;;
        label: "US Agency Retail Note"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "ASPZ" ;;
        label: "US Agency Strips/Zero"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "BBON" ;;
        label: "Brady Bonds"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C10Y" ;;
        label: "On-The-Run 10-Year Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C1Y" ;;
        label: "On-The-Run 1-Year Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C2Y" ;;
        label: "On-The-Run 2-Year Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C30Y" ;;
        label: "On-The-Run 30-Year Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C3M" ;;
        label: "On-The-Run 3-Month Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C5Y" ;;
        label: "On-The-Run 5-Year Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "C6M" ;;
        label: "On-The-Run 6-Month Canadian Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CCOV" ;;
        label: "US Corporate Convertible"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CCPI" ;;
        label: "US Corporate Inflation Indexed"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CLOC" ;;
        label: "US Corporate LOC Backed"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CMTN" ;;
        label: "US Corporate MTN"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CMTZ" ;;
        label: "US Corporate MTN Zero"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CP" ;;
        label: "US Corporate Paper"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CPIK" ;;
        label: "US Corporate PIK Bond"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CS" ;;
        label: "US Corporate Strip"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CPAS" ;;
        label: "US Corporate Pass Thru Trust"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CTBD" ;;
        label: "Canadian Treasury Bond"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CTBL" ;;
        label: "Canadian Treasury Bill"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CUIT" ;;
        label: "US Corporate UIT"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "CZ" ;;
        label: "US Corporate Zero"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "EBON" ;;
        label: "Eurobond"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "EMTN" ;;
        label: "Euro MTN"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "FGOV" ;;
        label: "Foreign Governments and Agencies"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "FGS" ;;
        label: "Foreign Government Strip"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "IIDX" ;;
        label: "Inflation Indexed Security"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "MBS" ;;
        label: "US Mortgage Backed Security"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "MUNI" ;;
        label: "Municipal"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O10Y" ;;
        label: "On-The-Run 10-Year Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O13W" ;;
        label: "On-The-Run 13-Week Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O26W" ;;
        label: "On-The-Run 26-Week Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O2Y" ;;
        label: "On-The-Run 2-Year Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O30Y" ;;
        label: "On-The-Run 30-Year Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O3Y" ;;
        label: "On-The-Run 3-Year Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O4W" ;;
        label: "On-The-Run 4-Week Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O52W" ;;
        label: "On-The-Run 52-Week Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O5Y" ;;
        label: "On-The-Run 5-Year Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "O7Y" ;;
        label: "On-The-Run 7-Year Treasury"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "PS" ;;
        label: "Preferred Security"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "PSTK" ;;
        label: "Preferred Stock"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "RNT" ;;
        label: "Retail Note"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "TPCS" ;;
        label: "Trust Preferred Capital Security"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "TXMU" ;;
        label: "Taxable Muni"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "UCID" ;;
        label: "US Corporate Insured Debenture"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USBD" ;;
        label: "US Government Bond"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USBL" ;;
        label: "US Government Bill"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USBN" ;;
        label: "US Corporate Bank Note"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USNT" ;;
        label: "US Government Note"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USSI" ;;
        label: "US Government Strips - Interest"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USSP" ;;
        label: "US Government Strips - Principal"
      }
      when: {
        sql: ${TABLE}.ACTION_TYPE = "USTC" ;;
        label: "US Government Trust Certificate"
      }

    }
  }

  # dimension: borrowing_restricted {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Indicates subsidiaries are restricted from borrowing, except from parent."
  #   sql: ${TABLE}.BORROWING_RESTRICTED ;;
  # }



  # dimension: change_control_put_provisions {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "Upon a change of control in the issuer, bondholders have the option of selling the issue back to the issuer (poison put). Other conditions may limit the bondholder's ability to exercise the put option. Poison puts are often used when a company fears an unwanted takeover by ensuring that a successful hostile takeover bid will trigger an event that substantially reduces the value of the company."
  #   sql: ${TABLE}.CHANGE_CONTROL_PUT_PROVISIONS ;;
  # }

  # dimension_group: change_date {
  #   label: "Convertible Change"
  #   description: "The date the current convertible information was added to the issue."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.CHANGE_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CHANGE_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CHANGE_DATE, 7, 2));;
  # }

  # dimension: coco_change_frequency {
  #   type: string
  #   label: "COCO Change Freq"
  #   group_label: "Convertible Additional Terms"
  #   sql: ${TABLE}.COCO_CHANGE_FREQUENCY ;;
  # }

  # dimension: coco_change_rate {
  #   type: number
  #   label: "COCO Change Rate"
  #   group_label: "Convertible Additional Terms"
  #   description: "Annual percentage change of the coco_initial_trigger_percent."
  #   sql: ${TABLE}.COCO_CHANGE_RATE ;;
  # }

  # dimension_group: conv_end_date {
  #   type: time
  #   label: "Convertible End Date"
  #   description: "Last date that the conditional conversion terms apply."
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.COCO_END_DATE, 1, 4),"-",SUBSTRING(${TABLE}.COCO_END_DATE, 5, 2),"-",SUBSTRING(${TABLE}.COCO_END_DATE, 7, 2));;
  # }

  # dimension: coco_initial_trigger_percent {
  #   type: number
  #   label: "COCO Init Trigger Pct"
  #   group_label: "Convertible Additional Terms"
  #   description: "Stock price level initially required to trigger conditional conversion."
  #   sql: ${TABLE}.COCO_INITIAL_TRIGGER_PERCENT ;;
  # }

  # dimension: coco_min_trigger_level {
  #   type: number
  #   label: "COCO Min Trigger Level"
  #   group_label: "Convertible Additional Terms"
  #   description: "The lowest number the trigger percent will reach."
  #   sql: ${TABLE}.COCO_MIN_TRIGGER_LEVEL ;;
  # }

  # dimension_group: coco_start_date {
  #   type: time
  #   label: "Convertible Start"
  #   description: "Date at which conversion becomes conditional."
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.COCO_START_DATE, 1, 4),"-",SUBSTRING(${TABLE}.COCO_START_DATE, 5, 2),"-",SUBSTRING(${TABLE}.COCO_START_DATE, 7, 2));;
  # }

  # dimension: coco_trade_days {
  #   type: string
  #   label: "COCO Trade Days"
  #   group_label: "Convertible Additional Terms"
  #   description: "The number of trading days that the conversion commodity must trade at or above the trigger percent."
  #   sql: ${TABLE}.COCO_TRADE_DAYS ;;
  # }

  # dimension: coco_trade_days_in_previous {
  #   type: string
  #   label: "COCO Trade Period"
  #   group_label: "Convertible Additional Terms"
  #   sql: ${TABLE}.COCO_TRADE_DAYS_IN_PREVIOUS ;;
  # }

  # dimension: coco_trigger_expressed_as {
  #   type: string
  #   label: "COCO Trigger Code"
  #   group_label: "Convertible Additional Terms"
  #   description: "A four-letter code indicating how the coco_initial_trigger_percent is expressed."
  #   sql: ${TABLE}.COCO_TRIGGER_EXPRESSED_AS ;;
  # }

  # dimension: commod_price {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Commodity Price"
  #   sql: ${TABLE}.COMMOD_PRICE ;;
  # }

  dimension: comp_neg_exch_deal {
    type: string
    group_label: "Issue"
    label: "Type of Sale"
    sql: ${TABLE}.COMP_NEG_EXCH_DEAL ;;
  }

  dimension: complete_cusip {
    type: string
    label: "Complete CUSIP"
    primary_key: yes
    sql: ${TABLE}.COMPLETE_CUSIP ;;
  }

  dimension: conditional_conv_terms {
    type: string
    group_label: "Convertible"
    label: "Conditional Conversion Terms"
    description: "A flag indicating the security has conditional conversion terms specified in the convertible_additional_terms table."
    sql: ${TABLE}.CONDITIONAL_CONV_TERMS ;;
  }

  # dimension: consolidation_merger {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Indicates that a consolidation or merger of the issuer with another entity is restricted."
  #   sql: ${TABLE}.CONSOLIDATION_MERGER ;;
  # }

  # dimension: conv_cash {
  #   type: number
  #   label: "Convertible Cash"
  #   group_label: "Convertible"
  #   description: "Additional cash payable by bondholder to effect conversion."
  #   sql: ${TABLE}.CONV_CASH ;;
  # }

  # dimension: conv_commod_cusip {
  #   type: string
  #   label: "Convertible Commodity CUSIP"
  #   group_label: "Convertible"
  #   sql: ${TABLE}.CONV_COMMOD_CUSIP ;;
  # }

  # dimension: conv_commod_issuer {
  #   type: string
  #   label: "Convertible Commodity Issuer"
  #   group_label: "Convertible"
  #   sql: ${TABLE}.CONV_COMMOD_ISSUER ;;
  # }

  # dimension: conv_commod_type {
  #   type: string
  #   label: "Convertible Commodity Type"
  #   group_label: "Convertible"
  #   sql: ${TABLE}.CONV_COMMOD_TYPE ;;
  # }

  # dimension_group: conv_eff_date {
  #   label: "Convertible Effective"
  #   description: "First date on which issue may be converted. It is the settlement date, if not specified."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.CONV_EFF_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CONV_EFF_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CONV_EFF_DATE, 7, 2));;
  # }

  # dimension_group: conv_exp_date {
  #   label: "Convertible Expiration"
  #   description: "Date on which conversion privilege expires"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.CONV_EXP_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CONV_EXP_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CONV_EXP_DATE, 7, 2));;
  # }

  # dimension: conv_part_trade_days {
  #   group_label: "Convertible"
  #   label: "Convertible Part Trade Days"
  #   description: "The number of trading days that the conversion security must trade at or above a certain price to allow redemption."
  #   type: number
  #   sql: ${TABLE}.CONV_PART_TRADE_DAYS ;;
  # }

  # dimension: conv_period_days {
  #   type: number
  #   description: "Number of days prior to the announced redemption date that the bondholders are allowed to convert their bonds.."
  #   group_label: "Convertible"
  #   label: "Convertible Period Days"
  #   sql: ${TABLE}.CONV_PERIOD_DAYS ;;
  # }

  # dimension: conv_period_spec {
  #   type: string
  #   group_label: "Convertible"
  #   label: "Convertible Period Spec"
  #   description: "Indicates whether or not the bondholder must submit their security for conversion in a specified time period prior to redemption"
  #   sql: ${TABLE}.CONV_PERIOD_SPEC ;;
  # }

  # dimension: conv_premium {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Convertible Premium"
  #   description: "The percentage difference between the conversion price and the market price of the conversion commodity as of the AS_OF_DATE."
  #   sql: ${TABLE}.CONV_PREMIUM ;;
  # }

  # dimension: conv_price {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Convertible Price"
  #   sql: ${TABLE}.CONV_PRICE ;;
  # }

  # dimension: conv_price_percent {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Convertible Price Percent"
  #   description: "Minimum percentage of the applicable conversion price at which the conversion commodity must trade at before restrictions on redemption are lifted."
  #   sql: ${TABLE}.CONV_PRICE_PERCENT ;;
  # }

  # dimension_group: conv_prohibited_from {
  #   label: "Convertible Prohibited From"
  #   description: "Start date of current soft call feature."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.CONV_PROHIBITED_FROM, 1, 4),"-",SUBSTRING(${TABLE}.CONV_PROHIBITED_FROM, 5, 2),"-",SUBSTRING(${TABLE}.CONV_PROHIBITED_FROM, 7, 2));;

  # }

  # dimension_group: conv_redemp_date {
  #   label: "Convertible Redemption"
  #   description: "End date of current soft call feature."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.CONV_REDEMP_DATE, 1, 4),"-",SUBSTRING(${TABLE}.CONV_REDEMP_DATE, 5, 2),"-",SUBSTRING(${TABLE}.CONV_REDEMP_DATE, 7, 2));;
  # }

  # dimension: conv_redemp_exception {
  #   type: string
  #   group_label: "Convertible"
  #   label: "Convertible Redemption Exception"
  #   description: "Flag indicating whether a soft call provision has been specified."
  #   sql: ${TABLE}.CONV_REDEMP_EXCEPTION ;;
  # }

  # dimension: conv_total_trade_days {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Convertible Total Trade Days"
  #   description: "Number of trading days during which the conversion commodity's price is measured for lifting redemption restrictions."
  #   sql: ${TABLE}.CONV_TOTAL_TRADE_DAYS ;;
  # }



  # dimension: convert_on_call {
  #   type: string
  #   group_label: "Convertible"
  #   label: "Convertible on Call"
  #   description: "A flag indicating whether the holder is able to convert their security if it is called for redemption."
  #   sql: ${TABLE}.CONVERT_ON_CALL ;;
  # }

  # dimension: convertible {
  #   type: string
  #   group_label: "Issue"
  #   description: "Flag indicating the issue can be converted to the common stock (or other security) of the issuer"
  #   sql: ${TABLE}.CONVERTIBLE ;;
  # }

  dimension: country_domicile {
    type: string
    sql: ${TABLE}.COUNTRY_DOMICILE ;;
  }

  dimension: coupon {
    type: number
    group_label: "Coupon"
    sql: ${TABLE}.COUPON ;;
  }

  dimension: coupon_change_indicator {
    type: string
    group_label: "Coupon"
    sql: ${TABLE}.COUPON_CHANGE_INDICATOR ;;
  }

  dimension: coupon_type {
    type: string
    group_label: "Coupon"
    sql: ${TABLE}.COUPON_TYPE ;;
  }

  # dimension: covenant_defeas_wo_tax_conseq {
  #   type: string
  #   group_label: "Bond Holder"
  #   label: "Covenant Defeas w.o. Tax"
  #   description: "Gives the issuer the right to defease indenture covenants without tax consequences for bondholders. If exercised, this would free the issuer from covenants set forth in the indenture or prospectus, but leaves them liable for the remaining debt. The issuer must also set forth an opinion of counsel that states bondholders will not recognize income for federal tax purposes as a result of the defeasance."
  #   sql: ${TABLE}.COVENANT_DEFEAS_WO_TAX_CONSEQ ;;
  # }

  dimension: covenants {
    type: string
    group_label: "Issue"
    sql: ${TABLE}.COVENANTS ;;
  }

  # dimension: cross_acceleration {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "A bondholder protective covenant that allows the holder to accelerate their debt, if any other debt of the organization has been accelerated due to an event of default."
  #   sql: ${TABLE}.CROSS_ACCELERATION ;;
  # }

  # dimension: cross_default {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "A bondholder protective covenant that will activate an event of default in their issue, if an event of default has occurred under any other debt of the company."
  #   sql: ${TABLE}.CROSS_DEFAULT ;;
  # }


  dimension: cusip_name {
    type: string
    label: "CUSIP Name"
    sql: ${TABLE}.CUSIP_NAME ;;
  }

  # dimension: date_subj_adjustment {
  #   type: string
  #   group_label: "Other Security"
  #   label: "Date Subject Adjustment"
  #   description: "A flag indicating that the date on which the unit is free to trade as separate security is subject to adjustment."
  #   sql: ${TABLE}.DATE_SUBJ_ADJUSTMENT ;;
  # }

  # dimension_group: date_transferable {
  #   label: "Other Security Transferable"
  #   type: time
  #   description: "The date on which each security offered as part of the unit may be sold separately."
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.DATE_TRANSFERABLE, 1, 4),"-",SUBSTRING(${TABLE}.DATE_TRANSFERABLE, 5, 2),"-",SUBSTRING(${TABLE}.DATE_TRANSFERABLE, 7, 2));;
  # }

  dimension_group: dated_date {
    description: "Date from which interest accrues or from which original issue discount is amortized."
    label: "Coupon Dated"
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
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.DATED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DATED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DATED_DATE, 7, 2));;
  }




  dimension: day_count_basis {
    type: string
    group_label: "Coupon"
    sql: ${TABLE}.DAY_COUNT_BASIS ;;
  }

  # dimension: declining_net_worth {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "If issuer's net worth (as defined) falls below minimum level, certain bond provisions are triggered."
  #   sql: ${TABLE}.DECLINING_NET_WORTH ;;
  # }

  # dimension: declining_net_worth_percentage {
  #   type: number
  #   group_label: "Bond Holder"
  #   description: "Percentage of bonds to be redeemed."
  #   sql: ${TABLE}.DECLINING_NET_WORTH_PERCENTAGE ;;
  # }

  # dimension: declining_net_worth_provisions {
  #   type: string
  #   group_label: "Bond Holder"
  #   sql: ${TABLE}.DECLINING_NET_WORTH_PROVISIONS ;;
  # }

  # dimension: declining_net_worth_trigger {
  #   type: number
  #   group_label: "Bond Holder"
  #   description: "Issuer's minimum net worth (as defined) which triggers special provisions."
  #   sql: ${TABLE}.DECLINING_NET_WORTH_TRIGGER ;;
  # }

  dimension: defaulted {
    type: string
    group_label: "Issue"
    sql: ${TABLE}.DEFAULTED ;;
  }

  # dimension: defeasance_type {
  #   type: string
  #   group_label: "Issue"
  #   description: "A code indicating the type of defeasance allowed (e.g., covenants or legal). Covenant defeasance removes the restrictions of indenture covenants, but leaves the issuer liable for the remaining debt. Legal defeasance removes the issue from the issuer's balance sheet but leaves the issuer liable for any covenants specified in the indenture."
  #   sql: ${TABLE}.DEFEASANCE_TYPE ;;
  # }

  # dimension: defeasance_wo_tax_conseq {
  #   type: string
  #   group_label: "Bond Holder"
  #   label: "Defeasance w.o. Tax Conseq"
  #   description: "Gives the issuer the right to defease the monetary portion of the security without tax consequence for bondholders. This type of defeasance occurs when the issuer places in an escrow account an amount of money or U.S. government securities sufficient to match the remaining interest and principle payments of the current issue. This removes the debt from the issuers’ balance sheet, but leaves the borrower still liable for covenants set forth under the indenture. The issuer must also set forth an opinion of counsel that states bondholders will not recognize income for federal tax purposes as a result of the defeasance."
  #   sql: ${TABLE}.DEFEASANCE_WO_TAX_CONSEQ ;;
  # }

  dimension: defeased {
    type: string
    group_label: "Issue"
    sql: ${TABLE}.DEFEASED ;;
  }

  # dimension_group: defeased_date {
  #   label: "Issue Defeased"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: REPLACE(${TABLE}.DEFEASED_DATE, "/", "-");;
  # }

  dimension_group: delivery_ {
    label: "Issue Delivery"
    description: "The date the issue was or will be initially delivered by the issuer of the security."
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
    group_label: "Issue"
    sql: ${TABLE}.DENOMINATION ;;
  }

  # dimension: dep_eligibility {
  #   type: string
  #   group_label: "Issue"
  #   label: "Eligible Depositories"
  #   description: "Code indicating the depositories on which the offered bonds are eligible for trading (e.g., DTC, Euroclear, Cedel, etc.)."
  #   sql: ${TABLE}.DEP_ELIGIBILITY ;;
  # }

  # dimension_group: determination_date {
  #   label: "Coupon Determination"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.DETERMINATION_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE, 7, 2));;
  # }

  # dimension_group: determination_date_orig {
  #   label: "Coupon Original Determination"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.DETERMINATION_DATE_ORIG, 1, 4),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE_ORIG, 5, 2),"-",SUBSTRING(${TABLE}.DETERMINATION_DATE_ORIG, 7, 2));;
  # }

  # dimension: dilution_protection {
  #   type: string
  #   group_label: "Convertible"
  #   description: "A flag indicating whether or not the quantity of commodity will be adjusted for stock splits, dividends, distributions, or other specified events."
  #   sql: ${TABLE}.DILUTION_PROTECTION ;;
  # }

  # dimension: dividends_related_payments_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Flag indicating that payments made to shareholders or other entities may be limited to a certain percentage of net income or some other ratio."
  #   sql: ${TABLE}.DIVIDENDS_RELATED_PAYMENTS_IS ;;
  # }

  # dimension: dividends_related_payments_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Limits the subsidiaries’ payment of dividends to a certain percentage of net income or some other ratio. For captive finance subsidiaries, this provision limits the amount of dividends which can be paid to the parent. This provision protects the"
  #   sql: ${TABLE}.DIVIDENDS_RELATED_PAYMENTS_SUB ;;
  # }

  # dimension: economic_cov_def {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "Gives the issuer the right to defease indenture covenants. If exercised, this would free the issuer from covenants set forth in the indenture or prospectus, but leaves them liable for the remaining debt. This type of defeasance may have tax consequences for bondholders."
  #   sql: ${TABLE}.ECONOMIC_COV_DEF ;;
  # }




  dimension_group: effective_date {
    label: "Amount Outstanding Effective"
    description: "The date on which the change to the issue's amount outstanding became effective. The date is set to the end of the quarter or the end of the fiscal year when the date is not available."
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
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.EFFECTIVE_DATE, "/", "-");;
  }



  dimension: enhancement {
    type: string
    group_label: "Issue"
    description: "Flag indicating that the issue has credit enhancements (e.g., guarantees, letter of credit, etc.)."
    sql: ${TABLE}.ENHANCEMENT ;;
  }

  dimension: esop {
    type: string
    group_label: "Issuer"
    label: "ESOP"
    description: "A flag denoting that the issue will be repaid"
    sql: ${TABLE}.ESOP ;;
  }

  # dimension: exchange {
  #   type: string
  #   group_label: "Convertible"
  #   sql: ${TABLE}.EXCHANGE ;;
  # }

  dimension: exchangeable {
    type: string
    group_label: "Issue"
    description: "Flag indicating the issue can be converted to the common stock (or other security) of a subsidiary or affiliate of the issuer."
    sql: ${TABLE}.EXCHANGEABLE ;;
  }

  # dimension: exercised {
  #   type: string
  #   group_label: "Overallotment"
  #   description: "A flag indicating that the issue's underwriters exercised their overallotment option."
  #   sql: ${TABLE}.EXERCISED ;;
  # }

  # dimension_group: exercised_date {
  #   label: "Overallotment Exercised"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.EXERCISED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.EXERCISED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.EXERCISED_DATE, 7, 2));;
  # }

  # dimension_group: filing_date {
  #   label: " Bankruptcy Filing"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.FILING_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FILING_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FILING_DATE, 7, 2));;
  # }

  dimension_group: first_interest_date {
    label: "Coupon First Interest"
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
    convert_tz: yes
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 7, 2));;
  }

  # dimension: fix_frequency {
  #   type: string
  #   group_label: "Coupon"
  #   description: "A four-letter code indicating how often the coupon will be reset."
  #   sql: ${TABLE}.FIX_FREQUENCY ;;
  # }

  # dimension: fixed_charge_coverage_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Issuer is required to have a ratio of earnings available for fixed charges, of at least a minimum specified level."
  #   sql: ${TABLE}.FIXED_CHARGE_COVERAGE_IS ;;
  # }

  # dimension: fixed_charge_coverage_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Subsidiaries are required to maintain a minimum ratio of net income to fixed charges."
  #   sql: ${TABLE}.FIXED_CHARGE_COVERAGE_SUB ;;
  # }


  dimension: form_of_own {
    type: string
    group_label: "Issue"
    label: "Form of Ownership"
    description: "Code indicating form of ownership. It can be book entry (bondholder is registered in computerized records in the name of a securities depository, the members of which, keep records of the securities they own or hold for their customers), registered (bondholder is registered with the trustee or issuer) and coupon or bearer (bondholder is not registered with the trustee or issuer: rather, coupon payments are made to holder of the security)."
    sql: ${TABLE}.FORM_OF_OWN ;;
  }

  # dimension: funded_debt_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts issuer from issuing additional funded debt. Funded debt is any debt with an initial maturity of one year or longer."
  #   sql: ${TABLE}.FUNDED_DEBT_IS ;;
  # }

  # dimension: funded_debt_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Restricts issuer’s subsidiaries from issuing additional funded debt (debt with an initial maturity of longer than one year)."
  #   sql: ${TABLE}.FUNDED_DEBT_SUB ;;
  # }

  dimension: fungible {
    type: string
    group_label: "Issue"
    description: "Flag denoting securities that are, by virtue of their terms, equivalent, interchangeable or substitutable. Fungible issues may be “reopened” in the future, on one or more occasions, increasing the total amount outstanding of the issue."
    sql: ${TABLE}.FUNGIBLE ;;
  }

  # dimension: greater_of {
  #   type: string
  #   group_label: "Coupon"
  #   description: "A flag indicating that the issue's coupon resets to the greater of the associated rate calculation formulas in the INDEX table."
  #   sql: ${TABLE}.GREATER_OF ;;
  # }

  dimension: gross_spread {
    type: number
    group_label: "Issue"
    description: "The difference between the price that the issuer receives for its securities and the price that investors pay for them. This spread equals the selling concession plus the underwriting and management fees."
    sql: ${TABLE}.GROSS_SPREAD ;;
  }

  dimension: in_bankruptcy {
    type: string
    group_label: "Issuer"
    sql: ${TABLE}.IN_BANKRUPTCY ;;
  }

  # dimension: indebtedness_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts user from incurring additional debt with limits on absolute dollar amount of debt outstanding or percentage total capital"
  #   sql: ${TABLE}.INDEBTEDNESS_IS ;;
  # }

  # dimension: indebtedness_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Restricts the total indebtedness of the subsidiaries."
  #   sql: ${TABLE}.INDEBTEDNESS_SUB ;;
  # }

  dimension: industry_code {
    type: string
    group_label: "Issuer"
    sql: ${TABLE}.INDUSTRY_CODE ;;
  }

  dimension: industry_group {
    type: string
    group_label: "Issuer"
    sql: ${TABLE}.INDUSTRY_GROUP ;;
  }

  dimension: interest_frequency {
    type: string
    group_label: "Coupon"
    sql: ${TABLE}.INTEREST_FREQUENCY ;;
  }

  # dimension: investments {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts issuer’s investment policy to prevent risky investments."
  #   sql: ${TABLE}.INVESTMENTS ;;
  # }

  # dimension: investments_unrestricted_subs {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   sql: ${TABLE}.INVESTMENTS_UNRESTRICTED_SUBS ;;
  # }

  dimension: isin {
    type: string
    group_label: "Issue"
    label: "ISIN Number"
    sql: ${TABLE}.ISIN ;;
  }

  dimension: issue_cusip {
    type: string
    group_label: "Issue"
    label: "Issue CUSIP"
    sql: ${TABLE}.ISSUE_CUSIP ;;
  }

  dimension: issue_id {
    type: number
    group_label: "Issue"
    sql: ${TABLE}.ISSUE_ID ;;
  }

  dimension: issue_name {
    type: string
    group_label: "Issue"
    sql: ${TABLE}.ISSUE_NAME ;;
  }

  dimension: issue_offered_global {
    type: string
    group_label: "Issue"
    label: "Global Offer"
    description: "A flag denoting that the issue is offered globally (i.e., the issue is being offered simultaneously in more than one country)."
    sql: ${TABLE}.ISSUE_OFFERED_GLOBAL ;;
  }

  dimension: issuer_cusip {
    group_label: "Issue"
    type: string
    label: "Issuer CUSIP"
    sql: ${TABLE}.ISSUER_CUSIP ;;
  }

  dimension: issuer_id {
    type: number
    group_label: "Issue"
    sql: ${TABLE}.ISSUER_ID ;;
  }



  # dimension_group: last_interest_date {
  #   type: time
  #   label: "Coupon Last Interest"
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 7, 2));;
  # }

  # dimension: legal_defeasance {
  #   type: string
  #   group_label: "Bond Holder"
  #   sql: ${TABLE}.LEGAL_DEFEASANCE ;;
  # }

  # dimension: lesser_of {
  #   type: string
  #   group_label: "Coupon"
  #   description: "A flag indicating that the issue's coupon resets to the lesser of the associated rate calculation formulas in the INDEX table"
  #   sql: ${TABLE}.LESSER_OF ;;
  # }

  # dimension: leverage_test_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts total-indebtedness of the issuer."
  #   sql: ${TABLE}.LEVERAGE_TEST_IS ;;
  # }

  # dimension: leverage_test_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Limits subsidiaries’ leverage."
  #   sql: ${TABLE}.LEVERAGE_TEST_SUB ;;
  # }

  # dimension: liens_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "In the case of default, the bondholders have the legal right to sell mortgaged property to satisfy their unpaid obligations."
  #   sql: ${TABLE}.LIENS_IS ;;
  # }

  # dimension: liens_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Restricts subsidiaries from acquiring liens on their property."
  #   sql: ${TABLE}.LIENS_SUB ;;
  # }

  # dimension: maintenance_net_worth {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Issuer must maintain a minimum specified net worth."
  #   sql: ${TABLE}.MAINTENANCE_NET_WORTH ;;
  # }

  # dimension: market_price {
  #   type: number
  #   group_label: "Other Security"
  #   description: "The market price of the unit's other security as of the issue's offering date."
  #   sql: ${TABLE}.MARKET_PRICE ;;
  # }





  dimension_group: maturity {
    label: "Issue Maturity"
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
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MATURITY, "/", "-");;

  }


  dimension: mtn {
    type: string
    group_label: "Issue"
    label: "Medium Term Note"
    sql: ${TABLE}.MTN ;;
  }

  dimension: naics_code {
    type: string
    group_label: "Issuer"
    label: "NAICS Code"
    sql: ${TABLE}.NAICS_CODE ;;
  }

  # dimension: negative_pledge_covenant {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "The issuer cannot issue secured debt unless it secures the current issue on a pari passu basis."
  #   sql: ${TABLE}.NEGATIVE_PLEDGE_COVENANT ;;
  # }

  # dimension: net_earnings_test_issuance {
  #   type: string
  #   group_label: "Issuer"
  #   description: "To issue additional debt the issuer must have achieved or maintained certain profitability levels. This test is a variations of the (more common) fixed coverage tests."
  #   sql: ${TABLE}.NET_EARNINGS_TEST_ISSUANCE ;;
  # }

  # dimension_group: next_put_date {
  #   group_label: "Put"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.NEXT_PUT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.NEXT_PUT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.NEXT_PUT_DATE, 7, 2));;
  # }

  # dimension: next_put_price {
  #   type: number
  #   group_label: "Put"
  #   sql: ${TABLE}.NEXT_PUT_PRICE ;;
  # }

  # dimension: notification_period {
  #   type: string
  #   group_label: "Put"
  #   sql: ${TABLE}.NOTIFICATION_PERIOD ;;
  # }

  dimension: offering_amt {
    type: number
    group_label: "Issue"
    label: "Offering Amount"
    description: "The par value of debt initially issued."
    sql: ${TABLE}.OFFERING_AMT ;;
  }

  dimension_group: offering_date {
    label: "Issue Offering"
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
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.OFFERING_DATE, "/", "-");;
  }

  dimension: offering_price {
    type: number
    group_label: "Issue"
    sql: ${TABLE}.OFFERING_PRICE ;;
  }

  dimension: offering_yield {
    type: number
    group_label: "Issue"
    sql: ${TABLE}.OFFERING_YIELD ;;
  }

  dimension: oid {
    type: string
    group_label: "Issue"
    label: "Orig Issue Discount"
    description: "Original issue discount flag. Original issue discount issues are initially offered at less than par value."
    sql: ${TABLE}.OID ;;
  }

  # dimension: orig_commod_price {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Orig Commodity Price"
  #   sql: ${TABLE}.ORIG_COMMOD_PRICE ;;
  # }

  # dimension: orig_conv_premium {
  #   type: number
  #   group_label: "Convertible"
  #   sql: ${TABLE}.ORIG_CONV_PREMIUM ;;
  # }

  # dimension: orig_conv_price {
  #   type: number
  #   group_label: "Convertible"
  #   sql: ${TABLE}.ORIG_CONV_PRICE ;;
  # }

  # dimension: orig_percent_outstanding_com {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Orig Percent Outstanding Commodity."
  #   sql: ${TABLE}.ORIG_PERCENT_OUTSTANDING_COM ;;
  # }

  # dimension: orig_qty_of_commod {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Orig Quantity of Commodity."
  #   sql: ${TABLE}.ORIG_QTY_OF_COMMOD ;;
  # }

  # dimension: orig_shares_outstanding {
  #   type: number
  #   group_label: "Convertible"
  #   sql: ${TABLE}.ORIG_SHARES_OUTSTANDING ;;
  # }

  # dimension: other_sec_issuer {
  #   type: string
  #   group_label: "Other Security"
  #   description: "The name of the issuer of the other security."
  #   sql: ${TABLE}.OTHER_SEC_ISSUER ;;
  # }

  # dimension: other_sec_type {
  #   type: string
  #   group_label: "Other Security"
  #   description: "A four-character code indicating the type of the other security."
  #   sql: ${TABLE}.OTHER_SEC_TYPE ;;
  # }

  # dimension_group: overallotment_expiration_date {
  #   description: "The last date for the issue's underwriters to exercise their overallotment option"
  #   label: "Overallotment Expiration"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.OVERALLOTMENT_EXPIRATION_DATE, 1, 4),"-",SUBSTRING(${TABLE}.OVERALLOTMENT_EXPIRATION_DATE, 5, 2),"-",SUBSTRING(${TABLE}.OVERALLOTMENT_EXPIRATION_DATE, 7, 2));;
  # }

  dimension: overallotment_opt {
    type: string
    group_label: "Issue"
    label: "Overallotment Option"
    description: "Overallotment option flag. An underwriter may receive the option of offering an additional amount of the securities (typically 15% of the offering amount) for subsequent sale."
    sql: ${TABLE}.OVERALLOTMENT_OPT ;;
  }

  dimension: parent_id {
    type: number
    group_label: "Issuer"
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: pay_in_kind {
    type: string
    group_label: "Coupon"
    description: "Flag indicating that the interest on the issue may be paid in more of the same security, or in some cases, in other securities."
    sql: ${TABLE}.PAY_IN_KIND ;;
  }

  # dimension_group: pay_in_kind_exp_date {
  #   label: "Coupon Pay in Kind Expiration"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.PAY_IN_KIND_EXP_DATE, 1, 4),"-",SUBSTRING(${TABLE}.PAY_IN_KIND_EXP_DATE, 5, 2),"-",SUBSTRING(${TABLE}.PAY_IN_KIND_EXP_DATE, 7, 2));;
  # }

  # dimension: peps {
  #   type: string
  #   label: "Convertible Terms"
  #   description: "A flag indicating the issue has additional conversion terms (dealing with a high and low conversion commodity selling price) specified in the convertible_additional_terms table."
  #   group_label: "Convertible"
  #   sql: ${TABLE}.PEPS ;;
  # }

  # dimension: peps_higher_price {
  #   type: number
  #   label: "Convertible Min Ratio Price"
  #   description: "Conversion commodity price at which minimum conversion ratio applies."
  #   group_label: "Convertible Additional Terms"
  #   sql: ${TABLE}.PEPS_HIGHER_PRICE ;;
  # }

  # dimension: peps_issue_price {
  #   type: number
  #   label: "Issue Price"
  #   group_label: "Convertible Additional Terms"
  #   description: "The face value or principal amount of the bond."
  #   sql: ${TABLE}.PEPS_ISSUE_PRICE ;;
  # }

  # dimension: peps_lower_price {
  #   type: number
  #   label: "Convertible Max Ratio Price"
  #   group_label: "Convertible Additional Terms"
  #   description: "Conversion commodity price at which maximum conversion ratio applies."
  #   sql: ${TABLE}.PEPS_LOWER_PRICE ;;
  # }

  # dimension: peps_max_conversion_ratio {
  #   type: number
  #   label: "Max Convertible Ratio"
  #   group_label: "Convertible Additional Terms"
  #   description: "Maximum value of the conversion ratio."
  #   sql: ${TABLE}.PEPS_MAX_CONVERSION_RATIO ;;
  # }

  # dimension: peps_min_conversion_ratio {
  #   type: number
  #   label: "Min Convertible Ratio"
  #   group_label: "Convertible Additional Terms"
  #   description: "Minimum value of the conversion ratio."
  #   sql: ${TABLE}.PEPS_MIN_CONVERSION_RATIO ;;
  # }

  # dimension: percent_of_outstanding_commod {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Percent of Outstanding Commodity"
  #   description: "The percentage of the total conversion commodity available through conversion of the issue as of the AS_OF_DATE."
  #   sql: ${TABLE}.PERCENT_OF_OUTSTANDING_COMMOD ;;
  # }

  # dimension: percs {
  #   type: string
  #   label: "Max Payoff"
  #   description: "A flag indicating the security has maximum payoff upon conversion specified in the convertible_additional_terms table."
  #   group_label: "Convertible"
  #   sql: ${TABLE}.PERCS ;;
  # }

  # dimension: percs_max_payoff {
  #   type: number
  #   description: "Maximum payoff bondholder will receive upon conversion or at maturity per PERCS."
  #   group_label: "Convertible Additional Terms"
  #   sql: ${TABLE}.PERCS_MAX_PAYOFF ;;
  # }

  dimension: perpetual {
    type: string
    group_label: "Issue"
    description: "Flag denoting an issue has no set maturity date."
    sql: ${TABLE}.PERPETUAL ;;
  }

  dimension: preferred_security {
    type: string
    group_label: "Issue"
    description: "Flag indicating this issue is a preferred security (e.g. MIPS, PIES, TOPRS, Preferred Stock, etc.)."
    sql: ${TABLE}.PREFERRED_SECURITY ;;
  }

  # dimension: preferred_stock_issuance {
  #   type: string
  #   description: "Restricts subsidiaries’ ability to issue preferred stock."
  #   group_label: "Subsidiary Restrictive"
  #   sql: ${TABLE}.PREFERRED_STOCK_ISSUANCE ;;
  # }

  # dimension: press_release {
  #   type: string
  #   group_label: "Issue"
  #   description: "Flag indicating whether this issue contains a press release in the footnotes relating to a Fitch rating action. If flag is Y, check footnotes for the press release."
  #   sql: ${TABLE}.PRESS_RELEASE ;;
  # }

  dimension: principal_amt {
    type: number
    group_label: "Issue"
    label: "Principal Amount"
    description: "The face or par value of a single bond (i.e., the sum that is to be paid at maturity, usually $1000)."
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  # dimension: principal_amt_per_unit {
  #   type: number
  #   group_label: "Unit"
  #   label: "Principal Amount per Unit"
  #   sql: ${TABLE}.PRINCIPAL_AMT_PER_UNIT ;;
  # }

  dimension: private_placement {
    type: string
    group_label: "Issue"
    description: "Flag indicating that the issue is only being offered privately to selected individuals and institutions and not to the general public."
    sql: ${TABLE}.PRIVATE_PLACEMENT ;;
  }

  dimension: prospectus_issuer_name {
    type: string
    group_label: "Issue"
    sql: ${TABLE}.PROSPECTUS_ISSUER_NAME ;;
  }

  dimension: putable {
    type: string
    group_label: "Issue"
    description: "Put option flag. A put option provides the bondholder with the option, but not the obligation, to sell the security back to the issuer at a specified price and time, under certain circumstances."
    sql: ${TABLE}.PUTABLE ;;
  }

  # dimension: qty_of_commod {
  #   type: number
  #   group_label: "Convertible"
  #   label: "Quantity of Commodity"
  #   description: "The quantity of the conversion commodity that the bondholder will receive upon conversion as of the AS_OF_DATE."
  #   sql: ${TABLE}.QTY_OF_COMMOD ;;
  # }


  # dimension: rating_decline_provision {
  #   type: string
  #   group_label: "Bond Holder"
  #   description: "Describes the consequences of a drop in the issue's credit rating below some preset minimum"
  #   sql: ${TABLE}.RATING_DECLINE_PROVISION ;;
  # }

  # dimension: rating_decline_trigger_put {
  #   type: string
  #   description: "A decline in the credit rating of the issuer (or issue) triggers a bondholder put provision."
  #   group_label: "Bond Holder"
  #   sql: ${TABLE}.RATING_DECLINE_TRIGGER_PUT ;;
  # }

  dimension: reallowance {
    type: number
    group_label: "Issue"
    description: "The portion of the selling concession that an underwriter foregoes if the issue is sold to another securities firm which is not a member of the underwriting syndicate."
    sql: ${TABLE}.REALLOWANCE ;;
  }

  # dimension: reason {
  #   type: string
  #   group_label: "Convertible"
  #   description: "The reason for the change of the convertible information on the change_date."
  #   sql: ${TABLE}.REASON ;;
  # }

  dimension: redeemable {
    type: string
    group_label: "Issue"
    sql: ${TABLE}.REDEEMABLE ;;
  }

  dimension: refund_protection {
    type: string
    group_label: "Issue"
    description: "A flag denoting that the issuer is restricted from refunding this issue. An issue is refunded when the issuer redeems the issue from proceeds of a second bond issue."
    sql: ${TABLE}.REFUND_PROTECTION ;;
  }

  # dimension_group: refunding_date {
  #   label: "Issue Refunding"
  #   description: "The first date on which the issuer may refund the issue. An issue is refunded when the issuer redeems the issue from proceeds of a subsequent stock or bond issue."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: REPLACE(${TABLE}.REFUNDING_DATE, "/", "-");;
  # }

  # dimension: registration_rights {
  #   type: string
  #   group_label: "Issue"
  #   description: "Indicates the issue contains a registration rights agreement whereby the issuer agrees to file a registration statement (or an exchange offer registration statement) within a specified period."
  #   sql: ${TABLE}.REGISTRATION_RIGHTS ;;
  # }

  # dimension_group: reset_date {
  #   label: "Coupon Reset"
  #   description: "The next date as of which the issue will begin to accrue interest at the new coupon rate. The new coupon rate is calculated as of the determination date"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.RESET_DATE, 1, 4),"-",SUBSTRING(${TABLE}.RESET_DATE, 5, 2),"-",SUBSTRING(${TABLE}.RESET_DATE, 7, 2));;
  # }

  # dimension_group: reset_date_orig {
  #   label: "Coupon Reset Original"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.RESET_DATE_ORIG, 1, 4),"-",SUBSTRING(${TABLE}.RESET_DATE_ORIG, 5, 2),"-",SUBSTRING(${TABLE}.RESET_DATE_ORIG, 7, 2));;
  # }

  # dimension: restricted_payments {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts issuer's freedom to make payments (other than dividend related payments) to shareholders and others."
  #   sql: ${TABLE}.RESTRICTED_PAYMENTS ;;
  # }

  dimension: rule_144_a {
    type: string
    group_label: "Issue"
    description: "A flag denoting that the issue is a private placement exempt from registration under SEC Rule 144a. Rule 144a issues are generally offered to a limited number of institutional investors, known as QIB’s (Qualified Institutional Buyers)."
    label: "Rule 144a"
    sql: ${TABLE}.RULE_144A ;;
  }

  dimension: rule_415_reg {
    type: string
    group_label: "Issue"
    description: "A flag indicating whether the issue is an SEC Rule 415 shelf registration. SEC Rule 415 allows issuers to pre-register an amount of securities for up to two years. On short notice, the issuer may take securities off of the shelf and offer them to the public. At the time of the actual sale of securities, the issuer may have to issue a new prospectus or supplement."
    label: "Rule 415 Registration"
    sql: ${TABLE}.RULE_415_REG ;;
  }

  # dimension: sale_assets {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restrictions on the ability of an issuer to sell assets or restrictions on the issuer's use of the proceeds from the sale of assets. Such restrictions may require the issuer to apply some or all of the sales proceeds to the repurchase of debt through a tender offer or call."
  #   sql: ${TABLE}.SALE_ASSETS ;;
  # }

  # dimension: sale_xfer_assets_unrestricted {
  #   type: string
  #   description: "Issuer must use proceeds from sale of subsidiaries' assets (either certain asset sales or all asset sales over some threshold) to reduce debt."
  #   group_label: "Subsidiary Restrictive"
  #   sql: ${TABLE}.SALE_XFER_ASSETS_UNRESTRICTED ;;
  # }

  # dimension: sales_leaseback_is {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts issuer to the type or amount of property used in a sale leaseback transaction and may restrict its use of the proceeds of the sale. A sale leaseback transaction is a method of raising capital in which an organization sells some specific assets to an entity that simultaneously leases the asset back to the organization for a fixed term and agreed upon rate."
  #   sql: ${TABLE}.SALES_LEASEBACK_IS ;;
  # }

  # dimension: sales_leaseback_sub {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Restricts subsidiaries from selling then leasing back assets that provide security for the debtholder. This provision usually requires that assets or cash equal to the property sold and leased back be applied to the retirement of the debt in question or used to acquire another property to increase the debtholders’ security."
  #   sql: ${TABLE}.SALES_LEASEBACK_SUB ;;
  # }

  # dimension: sc_make_whole_change_percent {
  #   type: number
  #   group_label: "Convertible Additional Terms"
  #   label: "Soft Call Change Percent"
  #   description: "The percentage (of the face value) by which the soft call make-whole payment payable is reduced on an annual basis if the bond is called for redemption."
  #   sql: ${TABLE}.SC_MAKE_WHOLE_CHANGE_PERCENT ;;
  # }

  # dimension: sc_make_whole_decrement_type {
  #   type: string
  #   group_label: "Convertible Additional Terms"
  #   label: "soft Call Change Code"
  #   sql: ${TABLE}.SC_MAKE_WHOLE_DECREMENT_TYPE ;;
  # }

  # dimension_group: sc_make_whole_end_date {
  #   description: "The final date at which a soft call make-whole payment is payable if the bond is called for redemption."
  #   type: time
  #   label: "Convertible Soft Call End"
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.SC_MAKE_WHOLE_END_DATE, 1, 4),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_END_DATE, 5, 2),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_END_DATE, 7, 2));;
  # }

  # dimension: sc_make_whole_initial_amount {
  #   type: number
  #   group_label: "Convertible Additional Terms"
  #   description: "The initial soft call make-whole payment amount that would be payable if the bond were called for redemption on the soft call make- whole start date."
  #   label: "Soft Call Initial Amount"
  #   sql: ${TABLE}.SC_MAKE_WHOLE_INITIAL_AMOUNT ;;
  # }

  # dimension_group: sc_make_whole_start_date {

  #   type: time
  #   label: "Convertible Soft Call Start"
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.SC_MAKE_WHOLE_START_DATE, 1, 4),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_START_DATE, 5, 2),"-",SUBSTRING(${TABLE}.SC_MAKE_WHOLE_START_DATE, 7, 2));;
  # }

  # dimension: sec_cusip {
  #   type: string
  #   group_label: "Other Security"
  #   label: "SEC CUSIP"
  #   sql: ${TABLE}.SEC_CUSIP ;;
  # }

  dimension: sec_reg_type1 {
    type: string
    group_label: "Issue"
    label: "SEC Registration Type"
    sql: ${TABLE}.SEC_REG_TYPE1 ;;
  }

  dimension: sec_reg_type2 {
    type: string
    group_label: "Issue"
    label: "Additional SEC Registration Type"
    sql: ${TABLE}.SEC_REG_TYPE2 ;;
  }

  dimension: security_level {
    type: string
    group_label: "Issue"
    description: "Indicates if the security is a secured, senior or subordinated issue of the issuer."
    sql: ${TABLE}.SECURITY_LEVEL ;;
  }

  # dimension: security_pledge {
  #   type: string
  #   group_label: "Issue"
  #   description: "A flag indicating that certain assets have been pledged as security for the issue."
  #   sql: ${TABLE}.SECURITY_PLEDGE ;;
  # }

  # dimension: sedol {
  #   type: string
  #   group_label: "Issue"
  #   label: "SEDOL"
  #   description: "A unique seven character number assigned to securities by the Stock Exchange Daily Official List."
  #   sql: ${TABLE}.SEDOL ;;
  # }

  # dimension: see_note {
  #   type: string
  #   group_label: "Coupon"
  #   description: "Indicates that the structure of the coupon formula could not be captured fully in within the table, COUPON_FORMULA_INDEX."
  #   label: "Note Flag"
  #   sql: ${TABLE}.SEE_NOTE ;;
  # }

  dimension: selling_concession {
    type: number
    group_label: "Issue"
    description: "The portion of the gross spread paid to other securities dealers in the offering syndicate for reselling the issue for the underwriter."
    sql: ${TABLE}.SELLING_CONCESSION ;;
  }

  # dimension: senior_debt_issuance {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Restricts issuer to the amount of senior debt it may issue in the future."
  #   sql: ${TABLE}.SENIOR_DEBT_ISSUANCE ;;
  # }

  # dimension: settlement {
  #   type: string
  #   group_label: "Issue"
  #   sql: ${TABLE}.SETTLEMENT ;;
  # }

  dimension: settlement_type {
    type: string
    group_label: "Issue"
    description: "A code indicating whether the issue will settled in same-day or next-day funds."
    sql: ${TABLE}.SETTLEMENT_TYPE ;;
  }

  # dimension: shares_outstanding {
  #   type: number
  #   group_label: "Convertible"
  #   description: "The total number of securities/shares of the conversion commodity outstanding as of the AS_OF_DATE."
  #   sql: ${TABLE}.SHARES_OUTSTANDING ;;
  # }

  dimension: sic_code {
    type: string
    group_label: "Issuer"
    label: "SIC Code"
    sql: ${TABLE}.SIC_CODE ;;
  }

  dimension: slob {
    type: string
    group_label: "Issuer"
    label: "Security Lease Oligation Issue"
    description: "A flag denoting that the issue is a secured lease obligation issue (i.e., an issue secured by one or more leases issued in a sales leaseback transaction by an electric utility)"
    sql: ${TABLE}.SLOB ;;
  }

  # dimension: soft_call_make_whole {
  #   type: string
  #   label: "Soft Call Make Whole"
  #   group_label: "Convertible"
  #   description: "A flag indicating the soft call feature contains a make whole payment provision specified in the convertible_additional_terms table."
  #   sql: ${TABLE}.SOFT_CALL_MAKE_WHOLE ;;
  # }

  # dimension_group: split_date {
  #   label: "Convertible Split "
  #   description: "The date of the last known conversion commodity split."
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.SPLIT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.SPLIT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.SPLIT_DATE, 7, 2));;
  # }

  # dimension: split_ratio {
  #   type: string
  #   group_label: "Convertible"
  #   description: "The ratio to which the conversion commodity was split."
  #   sql: ${TABLE}.SPLIT_RATIO ;;
  # }

  # dimension: stock_issuance {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Restricts issuer from issuing additional common stock in restricted subsidiaries. Restricted subsidiaries are those which are considered to be consolidated for financial test purposes."
  #   sql: ${TABLE}.STOCK_ISSUANCE ;;
  # }

  # dimension: stock_issuance_issuer {
  #   type: string
  #   group_label: "Issuer"
  #   sql: ${TABLE}.STOCK_ISSUANCE_ISSUER ;;
  # }

  # dimension: stock_transfer_sale_disp {
  #   type: string
  #   group_label: "Issuer"
  #   label: " stock transfer sale disposing"
  #   description: "Restricts the issuer from transferring, selling, or disposing of it’s own common"
  #   sql: ${TABLE}.STOCK_TRANSFER_SALE_DISP ;;
  # }

  # dimension: subordinated_debt_issuance {
  #   type: string
  #   description: "Restricts issuance of junior or subordinated debt."
  #   group_label: "Issuer"
  #   sql: ${TABLE}.SUBORDINATED_DEBT_ISSUANCE ;;
  # }

  dimension: subsequent_data {
    type: string
    group_label: "Issue"
    description: "Flag indicating whether this issue has proceeded beyond the initial input phase. If flag is Y, this issue contains subsequent data from a prospectus, pricing supplement, or other more detailed document or source."
    sql: ${TABLE}.SUBSEQUENT_DATA ;;
  }

  # dimension: subsidiary_guarantee {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Subsidiary is restricted from issuing guarantees for the payment of interest and/or principal of certain debt obligations"
  #   sql: ${TABLE}.SUBSIDIARY_GUARANTEE ;;
  # }

  # dimension: subsidiary_redesignation {
  #   type: string
  #   group_label: "Subsidiary Restrictive"
  #   description: "Indicates if restricted subsidiaries may be reclassified as an unrestricted subsidiaries. Restricted subsidiaries are those which are considered to be consolidated for financial test purposes."
  #   sql: ${TABLE}.SUBSIDIARY_REDESIGNATION ;;
  # }

  dimension: tender_exch_offer {
    type: string
    label: "Tender/Exchange Offer"
    group_label: "Issue"
    description: "A flag denoting that at least one tender or exchange offer has been made (or is currently outstanding) for the issue. In a tender offer, bondholders are invited to tender their securities for cash. In an exchange offer, bondholders are invited to exchange their securities for another security."
    sql: ${TABLE}.TENDER_EXCH_OFFER ;;
  }

  # dimension: ticker {
  #   type: string
  #   group_label: "Convertible"
  #   sql: ${TABLE}.TICKER ;;
  # }

  # dimension: total_units_offered {
  #   type: number
  #   group_label: "Unit"
  #   sql: ${TABLE}.TOTAL_UNITS_OFFERED ;;
  # }

  # dimension: transaction_affiliates {
  #   type: string
  #   group_label: "Issuer"
  #   description: "Issuer is restricted in certain business dealings with its subsidiaries."
  #   sql: ${TABLE}.TRANSACTION_AFFILIATES ;;
  # }

  # dimension: treasury_maturity {
  #   type: string
  #   group_label: "Issue"
  #   description: "Maturity of benchmark Treasury issue against which the issue's offering yield was measured."
  #   sql: ${TABLE}.TREASURY_MATURITY ;;
  # }

  dimension: treasury_spread {
    type: number
    group_label: "Issue"
    description: "The difference between the yield of the benchmark treasury issue and the issue's offering yield expressed in basis points."
    sql: ${TABLE}.TREASURY_SPREAD ;;
  }

  # dimension: unit_cusip {
  #   type: string
  #   group_label: "Unit"
  #   label: "Unit CUSIP"
  #   sql: ${TABLE}.UNIT_CUSIP ;;
  # }

  dimension: unit_deal {
    type: string
    group_label: "Issue"
    description: "A flag indicating whether the issue is part of a unit deal. In a unit deal, the bond is sold as part of a package of securities. The Warrant table will have more information on the other securities in the package."
    sql: ${TABLE}.UNIT_DEAL ;;
  }

  # dimension: voting_power_percentage {
  #   type: number
  #   group_label: "Bond Holder"
  #   description: "The issue’s change of control provisions are triggered if an investor controls more than this percentage of the issuer’s stock. Designed as a hostile takeover defense."
  #   sql: ${TABLE}.VOTING_POWER_PERCENTAGE ;;
  # }

  # dimension: voting_power_percentage_erp {
  #   type: number
  #   group_label: "Bond Holder"
  #   description: "The issue’s change of control provisions are triggered if the issuer’s employee retirement plan controls more than this percentage of the issuer’s stock. Designed as a hostile takeover defense."
  #   sql: ${TABLE}.VOTING_POWER_PERCENTAGE_ERP ;;
  # }

  dimension: yankee {
    type: string
    description: "A flag indicating that the issue has been issued by a foreign issuer, but has been registered with the SEC and is payable in dollars."
    group_label: "Issue"
    sql: ${TABLE}.YANKEE ;;
  }

  measure: count {
    type: count
    drill_fields: [cusip_name, prospectus_issuer_name, issue_name]
  }
}
