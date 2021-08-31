
view: FINRA_CRSP {
  # sql_table_name: `bi-model-development.looker_FINAL.corp` ;;

  derived_table: {
    sql:
      SELECT * FROM`bi-model-development.looker_FINAL.corp` WHERE
      T_Spread IS NOT NULL AND
      OFFERING_PRICE IS NOT NULL AND
      company_symbol IS NOT NULL AND
      TREASURY_MATURITY IS NOT NULL AND
      RATING_CLASS IS NOT NULL AND
      T_Volume IS NOT NULL AND
      T_DVolume IS NOT NULL AND
      YIELD IS NOT NULL AND
      T_Yld_Pt IS NOT NULL AND
      PRICE_EOM IS NOT NULL AND
      PRICE_LDM IS NOT NULL AND
      PRICE_L5M IS NOT NULL AND
      GAP IS NOT NULL AND
      COUPMONTH IS NOT NULL AND
      nextcoup IS NOT NULL AND
      RET_EOM IS NOT NULL AND
      RET_LDM IS NOT NULL AND
      RET_L5M IS NOT NULL;;
  }



  # dimension: amount_outstanding {
  #   type: number
  #   value_format: "$#,##0.00"
  #   sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  # }

  dimension: bond_type {
    type: string
    sql: ${TABLE}.BOND_TYPE ;;
  }



  dimension: company_symbol {
    type: string
    sql: ${TABLE}.company_symbol ;;
  }

  dimension: conv {
    type: number
    label: "Convertible"
    sql: ${TABLE}.CONV ;;
  }

  dimension: coupacc {
    type: number
    label: "Coupon Accrued"
    value_format: "0.00\%"
    sql: ${TABLE}.COUPACC ;;
  }

  dimension: coupamt {
    type: number
    label: "Coupon Amount"
    sql: ${TABLE}.COUPAMT ;;
  }

  dimension: coupmonth {
    type: number
    label: "Number of Months Since First Coupon Payment"
    sql: ${TABLE}.COUPMONTH ;;
  }

  dimension: coupon {
    type: number
    value_format: "0.00\%"
    sql: ${TABLE}.COUPON ;;
  }

  dimension: cusip {
    type: string
    primary_key: yes
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: date {
    label: ""
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
    sql: CASE
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "JAN" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-01-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "FEB" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-02-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "MAR" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-03-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "APR" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-04-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "MAY" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-05-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "JUN" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-06-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "JUL" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-07-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "AUG" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-08-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "SEP" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-09-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "OCT" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-10-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "NOV" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-11-",SUBSTRING(${TABLE}.DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.DATE, 3, 3) = "DEC" THEN CONCAT(SUBSTRING(${TABLE}.DATE, 6, 4),"-12-",SUBSTRING(${TABLE}.DATE, 1, 2))
      ELSE NULL
    END ;;
  }

  dimension_group: dated_date {
    label: "Dated"
    description: "Date from which interest accrues or from which original issue discount is amortized.   "
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
    sql: CONCAT(SUBSTRING(${TABLE}.DATED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DATED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DATED_DATE, 7, 2));;
  }

  dimension: day_count_basis {
    type: string
    description: "Basis used for determining the interest paid during each interest period"
    sql: ${TABLE}.DAY_COUNT_BASIS ;;
  }

  # dimension_group: default_date {
  #   label: "Default"
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
  #   convert_tz: no
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.DEFAULT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DEFAULT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DEFAULT_DATE, 7, 2));;
  # }

  # dimension: default_type {
  #   type: string
  #   sql: ${TABLE}.DEFAULT_TYPE ;;
  # }

  dimension: defaulted {
    type: string
    description: "Flag indicating that the issuer is in default of the terms of this issue"
    sql: ${TABLE}.DEFAULTED ;;
  }

  dimension: duration {
    type: number
    description: "Modified Duration"
    sql: ${TABLE}.DURATION ;;
  }

  dimension_group: first_interest_date {
    label: "First Interest"
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
    sql: CONCAT(SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 7, 2));;
  }

  dimension: gap {
    label: "Gap Months"
    type: number
    description: "Gap Months from Previous Record"
    sql: ${TABLE}.GAP ;;
  }

  dimension_group: last_interest_date {
    label: "Last Interest"
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
    sql: CONCAT(SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 7, 2));;
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
    sql: CONCAT(SUBSTRING(${TABLE}.MATURITY, 1, 4),"-",SUBSTRING(${TABLE}.MATURITY, 5, 2),"-",SUBSTRING(${TABLE}.MATURITY, 7, 2));;
  }

  dimension: multicoups {
    type: number
    label: "Multiple Coupon Payments"
    sql: ${TABLE}.MULTICOUPS ;;
  }



  dimension: ncoups {
    type: string
    label: "Number Of Coupons Per Year  "
    sql: ${TABLE}.NCOUPS ;;
  }

  dimension_group: nextcoup {
    label: "Next Coupon"
    description: "Date when Next Coupon is Due"
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
    sql: CASE
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "JAN" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-01-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "FEB" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-02-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "MAR" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-03-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "APR" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-04-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "MAY" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-05-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "JUN" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-06-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "JUL" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-07-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "AUG" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-08-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "SEP" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-09-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "OCT" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-10-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "NOV" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-11-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      WHEN SUBSTRING(${TABLE}.nextcoup, 3, 3) = "DEC" THEN CONCAT(SUBSTRING(${TABLE}.nextcoup, 6, 4),"-12-",SUBSTRING(${TABLE}.nextcoup, 1, 2))
      ELSE NULL
    END ;;
  }

  dimension: offering_amt {
    type: number
    label: "Offering Amount"
    value_format: "$#,##0.00"
    sql: ${TABLE}.OFFERING_AMT ;;
  }

  dimension_group: offering_date {
    label: "Offering Date"
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
    sql: CONCAT(SUBSTRING(${TABLE}.OFFERING_DATE, 1, 4),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 5, 2),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 7, 2));;
  }

  dimension: offering_price {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.OFFERING_PRICE ;;
  }

  dimension: price_eom {
    type: number
    value_format: "$#,##0.00"
    label: "Price End of Month"
    description: "Last price at which bond was traded in a given month"
    sql: ${TABLE}.PRICE_EOM ;;
  }

  dimension: price_l5_m {
    type: number
    description: "Last price at which the bond was traded in a given month, if that day falls within the last 5 trading days of the month "
    label: "Price Last 5 Days of Month"
    value_format: "$#,##0.00"
    sql: ${TABLE}.PRICE_L5M ;;
  }

  dimension: price_ldm {
    type: number
    value_format: "$#,##0.00"
    label: "Price Last Trading Day of Month "
    description: "Price on last trading day of the month if available, missing if bond didn’t trade on that day "
    sql: ${TABLE}.PRICE_LDM ;;
  }

  dimension: principal_amt {
    type: number
    value_format: "$#,##0.00"
    label: "Principal Amount"
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  dimension: r_fr {
    type: string
    label: "Fitch Rating"
    group_label: "Ratings"
    sql: ${TABLE}.R_FR ;;
  }

  dimension: r_mr {
    type: string
    label: "Moody Rating"
    group_label: "Ratings"
    sql: ${TABLE}.R_MR ;;
  }

  dimension: r_sp {
    type: string
    label: "S&P Rating"
    group_label: "Ratings"
    sql: ${TABLE}.R_SP ;;
  }

  dimension: rating_cat {
    type: string
    label: "rating_category"
    group_label: "Ratings"
    sql: ${TABLE}.RATING_CAT ;;
  }

  dimension: rating_class {
    type: string
    group_label: "Ratings"
    sql: ${TABLE}.RATING_CLASS ;;
  }

  dimension: rating_num {
    type: number
    label: "numerical_rating"
    group_label: "Ratings"
    sql: ${TABLE}.RATING_NUM ;;
  }

  # dimension: reinstated {
  #   type: string
  #   sql: ${TABLE}.REINSTATED ;;
  # }

  # dimension_group: reinstated_date {
  #   label: "Reinstated"
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
  #   convert_tz: no
  #   datatype: date
  #   sql: CONCAT(SUBSTRING(${TABLE}.REINSTATED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.REINSTATED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.REINSTATED_DATE, 7, 2));;
  # }

  dimension: remcoups {
    type: number
    label: "Remaining Coupons"
    sql: ${TABLE}.REMCOUPS ;;
  }

  dimension: ret_eom {
    type: number
    label: "Return End of Month"
    description: "Monthly return calculated based on PRICE_EOM and accrued coupon interest"
    value_format: "0.00\%"
    sql: ${TABLE}.RET_EOM ;;
  }

  dimension: ret_l5_m {
    type: number
    description: "Monthly return calculated based on PRICE_L5M and accrued coupon interest"
    label: "Return Last 5 Months"
    value_format: "0.00\%"
    sql: ${TABLE}.RET_L5M ;;
  }

  dimension: ret_ldm {
    type: number
    label: "Return Last Trading Day of Month"
    description: "Monthly return calculated based on PRICE_LDM and accrued coupon interest"
    value_format: "0.00\%"
    sql: ${TABLE}.RET_LDM ;;
  }

  dimension: security_level {
    type: string
    description: "Indicates if the security is a secured, senior or subordinated issue of the issuer"
    case: {
      when: {
        sql: ${TABLE}.SECURITY_LEVEL = "JUNS" ;;
        label: "Junior Subordinate"
      }
      when: {
        sql: ${TABLE}.SECURITY_LEVEL = "NON" ;;
        label: "NONE"
      }
      when: {
        sql: ${TABLE}.SECURITY_LEVEL = "SEN" ;;
        label: "Senior"
      }
      when: {
        sql: ${TABLE}.SECURITY_LEVEL = "SENS" ;;
        label: "Senior Subordinate"
      }
      when: {
        sql: ${TABLE}.SECURITY_LEVEL = "SS" ;;
        label: "Senior Secured"
      }
      when: {
        sql: ${TABLE}.SECURITY_LEVEL = "SUB" ;;
        label: "Subordinate"
      }

  }
  }

  dimension_group: t_date {
    type: time
    label: "Execution"
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
    sql: CASE
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "JAN" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-01-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "FEB" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-02-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "MAR" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-03-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "APR" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-04-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "MAY" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-05-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "JUN" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-06-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "JUL" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-07-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "AUG" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-08-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "SEP" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-09-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "OCT" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-10-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "NOV" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-11-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      WHEN SUBSTRING(${TABLE}.T_DATE, 3, 3) = "DEC" THEN CONCAT(SUBSTRING(${TABLE}.T_DATE, 6, 4),"-12-",SUBSTRING(${TABLE}.T_DATE, 1, 2))
      ELSE NULL
    END ;;
  }

  dimension: t_dvolume {
    type: number
    label: "Total Dollar Volume"
    value_format: "$#,##0.00"
    sql: ${TABLE}.T_DVolume ;;
  }

  dimension: t_spread {
    type: number
    label: "Spread"
    description: "Average trade‐weighted bid‐ask spread"
    value_format: "0.00\%"
    sql: ${TABLE}.T_Spread ;;
  }

  dimension: t_volume {
    type: number
    value_format: "$#,##0.00"
    label: "Total Par Value Volume"
    sql: ${TABLE}.T_Volume ;;
  }

  dimension: t_yld_pt {
    type: number
    label: "Trade Weighted Yield Point"
    description: "Average trade‐weighted yield point"
    value_format: "0.00\%"
    sql: ${TABLE}.T_Yld_Pt ;;
  }

  dimension: tmt {
    type: number
    label: "Years to Maturity"
    sql: ${TABLE}.TMT ;;
  }

  dimension: treasury_maturity {
    type: string
    sql: ${TABLE}.TREASURY_MATURITY ;;
  }

  dimension: yield {
    type: number
    value_format: "0.00\%"
    sql: ${TABLE}.YIELD ;;
  }


#####################################################################################

  measure: count {
    type: count
    drill_fields: []
  }

  # measure: amount_outstanding_ {
  #   type: number
  #   sql: ${amount_outstanding} ;;
  # }



  measure: conv_ {
    type: number
    sql: ${conv} ;;
  }

  measure: coupacc_ {
    type: number
    sql: ${coupacc} ;;
  }

  measure: coupamt_ {
    type: number
    sql: ${coupamt} ;;
  }

  measure: coupmonth_ {
    type: number
    sql: ${coupmonth} ;;
  }

  measure: coupon_ {
    type: number
    sql: ${coupon} ;;
  }


  measure: duration_ {
    type: number
    sql: ${duration};;
  }


  measure: gap_ {
    type: number
    sql: ${gap} ;;
  }


  measure: multicoups_ {
    type: number
    sql: ${multicoups} ;;
  }



  measure: ncoups_ {
    type: number
    sql: ${ncoups} ;;
  }



  measure: offering_amt_ {
    type: number
    sql: ${offering_amt} ;;
  }



  measure: offering_price_ {
    type: number
    sql: ${offering_price} ;;
  }

  measure: price_eom_ {
    type: number
    sql: ${price_eom} ;;
  }

  measure: price_l5_m_ {
    type: number
    sql: ${price_l5_m} ;;
  }

  measure: price_ldm_ {
    type: number
    sql: ${price_ldm} ;;
  }

  measure: principal_amt_ {
    type: number
    sql: ${principal_amt} ;;
  }



  measure: rating_num_ {
    type: number
    sql: ${rating_num} ;;
  }


  measure: remcoups_ {
    type: number
    sql: ${remcoups} ;;
  }

  measure: ret_eom_ {
    type: number
    sql: ${ret_eom};;
  }

  measure: ret_l5_m_ {
    type: number
    sql: ${ret_l5_m} ;;
  }

  measure: ret_ldm_ {
    type: number
    sql: ${ret_ldm} ;;
  }



  measure: t_dvolume_ {
    type: number
    sql: ${t_dvolume} ;;
  }

  measure: t_spread_ {
    type: number
    sql: ${t_spread} ;;
  }

  measure: t_volume_ {
    type: number
    sql: ${t_volume} ;;
  }

  measure: t_yld_pt_ {
    type: number
    sql: ${t_yld_pt} ;;
  }

  measure: tmt_ {
    type: number
    sql: ${tmt} ;;
  }


  measure: yield_ {
    type: number
    sql: ${yield} ;;
  }

}
