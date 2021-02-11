
view: corp {
  sql_table_name: `bi-model-development.looker_FINAL.corp`
    ;;

  dimension: amount_outstanding {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  }

  dimension: bond_type {
    type: string
    sql: ${TABLE}.BOND_TYPE ;;
  }

  dimension: bond_sym_id {
    type: string
    sql: ${TABLE}.bond_sym_id ;;
  }

  dimension: company_symbol {
    type: string
    sql: ${TABLE}.company_symbol ;;
  }

  dimension: conv {
    type: number
    label: "convertible"
    sql: ${TABLE}.CONV ;;
  }

  dimension: coupacc {
    type: number
    label: "coupon_accrued"
    value_format: "0.00\%"
    sql: ${TABLE}.COUPACC ;;
  }

  dimension: coupamt {
    type: number
    label: "coupon_amount"
    sql: ${TABLE}.COUPAMT ;;
  }

  dimension: coupmonth {
    type: number
    label: "num_of_months_since_first_coupon_payment"
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

  dimension_group: default_date {
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
    sql: CONCAT(SUBSTRING(${TABLE}.DEFAULT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DEFAULT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DEFAULT_DATE, 7, 2));;
  }

  dimension: default_type {
    type: string
    sql: ${TABLE}.DEFAULT_TYPE ;;
  }

  dimension: defaulted {
    type: string
    sql: ${TABLE}.DEFAULTED ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.DURATION ;;
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
    convert_tz: no
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 7, 2));;
  }

  dimension: gap {
    type: number
    sql: ${TABLE}.GAP ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: issue_id {
    type: string
    sql: ${TABLE}.ISSUE_ID ;;
  }


  dimension_group: last_interest_date {
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
      year
    ]
    convert_tz: no
    datatype: date
    sql: CONCAT(SUBSTRING(${TABLE}.MATURITY, 1, 4),"-",SUBSTRING(${TABLE}.MATURITY, 5, 2),"-",SUBSTRING(${TABLE}.MATURITY, 7, 2));;
  }

  dimension: multicoups {
    type: number
    label: "multiple_coupon_payments"
    sql: ${TABLE}.MULTICOUPS ;;
  }

  dimension: n_fr {
    type: number
    label: "n_fitch"
    group_label: "ratings"
    sql: ${TABLE}.N_FR ;;
  }

  dimension: n_mr {
    type: number
    label: "n_moody"
    group_label: "ratings"
    sql: ${TABLE}.N_MR ;;
  }

  dimension: n_sp {
    type: number
    label: "n_standard_poor"
    group_label: "ratings"
    sql: ${TABLE}.N_SP ;;
  }

  dimension: ncoups {
    type: string
    label: "number_of_coupons_per_year  "
    sql: ${TABLE}.NCOUPS ;;
  }

  dimension_group: nextcoup {
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
    label: "offering_amount"
    value_format: "$#,##0.00"
    sql: ${TABLE}.OFFERING_AMT ;;
  }

  dimension_group: offering_date {
    label: " Offering"
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
    label: "price_end_of_month"
    sql: ${TABLE}.PRICE_EOM ;;
  }

  dimension: price_l5_m {
    type: string
    sql: ${TABLE}.PRICE_L5M ;;
  }

  dimension: price_ldm {
    type: number
    value_format: "$#,##0.00"
    label: "price_last_trading_day_of_month "
    sql: ${TABLE}.PRICE_LDM ;;
  }

  dimension: principal_amt {
    type: number
    value_format: "$#,##0.00"
    label: "principal_amount"
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  dimension: r_fr {
    type: string
    label: "fitch_rating"
    group_label: "ratings"
    sql: ${TABLE}.R_FR ;;
  }

  dimension: r_mr {
    type: string
    label: "moody_rating"
    group_label: "ratings"
    sql: ${TABLE}.R_MR ;;
  }

  dimension: r_sp {
    type: string
    label: "standard_poor_rating"
    group_label: "ratings"
    sql: ${TABLE}.R_SP ;;
  }

  dimension: rating_cat {
    type: string
    label: "rating_category"
    group_label: "ratings"
    sql: ${TABLE}.RATING_CAT ;;
  }

  dimension: rating_class {
    type: string
    group_label: "ratings"
    sql: ${TABLE}.RATING_CLASS ;;
  }

  dimension: rating_num {
    type: number
    label: "numerical_rating"
    group_label: "ratings"
    sql: ${TABLE}.RATING_NUM ;;
  }

  dimension: reinstated {
    type: string
    sql: ${TABLE}.REINSTATED ;;
  }

  dimension_group: reinstated_date {
    label: "Reinstated"
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
    sql: CONCAT(SUBSTRING(${TABLE}.REINSTATED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.REINSTATED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.REINSTATED_DATE, 7, 2));;
  }

  dimension: remcoups {
    type: number
    label: "remaining_coupons"
    sql: ${TABLE}.REMCOUPS ;;
  }

  dimension: ret_eom {
    type: number
    label: "return_end_of_month"
    value_format: "0.00\%"
    sql: ${TABLE}.RET_EOM ;;
  }

  dimension: ret_l5_m {
    type: string
    sql: ${TABLE}.RET_L5M ;;
  }

  dimension: ret_ldm {
    type: number
    label: "return_last_trading_day_of_month"
    value_format: "0.00\%"
    sql: ${TABLE}.RET_LDM ;;
  }

  dimension: security_level {
    type: string
    sql: ${TABLE}.SECURITY_LEVEL ;;
  }

  dimension_group: t_date {
    type: time
    label: "execution_date"
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
    value_format: "$#,##0.00"
    label: "total_dollar_volume"
    sql: ${TABLE}.T_DVolume ;;
  }

  dimension: t_spread {
    type: number
    value_format: "0.00\%"
    sql: ${TABLE}.T_Spread ;;
  }

  dimension: t_volume {
    type: number
    value_format: "$#,##0.00"
    label: "total_par_value_volume  "
    sql: ${TABLE}.T_Volume ;;
  }

  dimension: t_yld_pt {
    type: number
    label: "trade_weighted_yield_point"
    value_format: "0.00\%"
    sql: ${TABLE}.T_Yld_Pt ;;
  }

  dimension: tmt {
    type: number
    label: "time_to_maturity_years"
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


  measure: count {
    type: count
    drill_fields: []
  }

  measure: amount_outstanding_ {
    type: number
    sql: ${amount_outstanding} ;;
  }

  measure: bond_sym_id_ {
    type: string
    sql: ${bond_sym_id} ;;
  }

  measure: bond_type_ {
    type: string
    sql: ${bond_type} ;;
  }

  measure: bsym_ {
    type: string
    sql: ${bsym };;
  }

  measure: company_symbol_ {
    type: string
    sql: ${company_symbol} ;;
  }

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

  measure: cusip_ {
    type: string
    sql: ${cusip} ;;
  }

  measure: date_ {
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

  measure: dated_date_ {
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

  measure: day_count_basis_ {
    type: string
    sql: ${day_count_basis} ;;
  }

  measure: default_date_ {
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
    sql: CONCAT(SUBSTRING(${TABLE}.DEFAULT_DATE, 1, 4),"-",SUBSTRING(${TABLE}.DEFAULT_DATE, 5, 2),"-",SUBSTRING(${TABLE}.DEFAULT_DATE, 7, 2));;
  }

  measure: default_type_ {
    type: string
    sql: ${default_type} ;;
  }

  measure: defaulted_ {
    type: string
    sql: ${defaulted} ;;
  }

  measure: duration_ {
    type: number
    sql: ${duration};;
  }

  measure: first_interest_date_ {
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
    sql: CONCAT(SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.FIRST_INTEREST_DATE, 7, 2));;
  }

  measure: gap_ {
    type: number
    sql: ${gap} ;;
  }

  measure: isin_ {
    type: string
    sql: ${isin} ;;
  }

  measure: issue_id_ {
    type: number
    sql: ${issue_id} ;;
  }

  measure: last_interest_date_ {
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
    sql: CONCAT(SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 1, 4),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 5, 2),"-",SUBSTRING(${TABLE}.LAST_INTEREST_DATE, 7, 2));;
  }

  measure: maturity_ {
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
    sql: CONCAT(SUBSTRING(${TABLE}.MATURITY, 1, 4),"-",SUBSTRING(${TABLE}.MATURITY, 5, 2),"-",SUBSTRING(${TABLE}.MATURITY, 7, 2));;
  }

  measure: multicoups_ {
    type: number
    sql: ${multicoups} ;;
  }

  measure: n_fr_ {
    type: string
    sql: ${n_fr} ;;
  }

  measure: n_mr_ {
    type: string
    sql: ${n_mr} ;;
  }

  measure: n_sp_ {
    type: string
    sql: ${n_sp} ;;
  }

  measure: ncoups_ {
    type: number
    sql: ${ncoups} ;;
  }

  measure: nextcoup_ {
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

  measure: offering_amt_ {
    type: number
    sql: ${offering_amt} ;;
  }

  measure: offering_date_ {
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
    sql: CONCAT(SUBSTRING(${TABLE}.OFFERING_DATE, 1, 4),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 5, 2),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 7, 2));;
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

  measure: r_fr_ {
    type: string
    sql: ${r_fr} ;;
  }

  measure: r_mr_ {
    type: string
    sql: ${r_mr} ;;
  }

  measure: r_sp_ {
    type: string
    sql: ${r_sp} ;;
  }

  measure: rating_cat_ {
    type: string
    sql: ${rating_cat} ;;
  }

  measure: rating_class_ {
    type: string
    sql: ${rating_class} ;;
  }

  measure: rating_num_ {
    type: number
    sql: ${rating_num} ;;
  }

  measure: reinstated_ {
    type: string
    sql: ${reinstated} ;;
  }

  measure: reinstated_date_ {
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
    sql: CONCAT(SUBSTRING(${TABLE}.REINSTATED_DATE, 1, 4),"-",SUBSTRING(${TABLE}.REINSTATED_DATE, 5, 2),"-",SUBSTRING(${TABLE}.REINSTATED_DATE, 7, 2));;
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

  measure: security_level_ {
    type: string
    sql: ${security_level} ;;
  }

  measure: t_date_ {
    type: time
    label: "execution_date"
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

  measure: treasury_maturity_ {
    type: string
    sql: ${treasury_maturity} ;;
  }

  measure: yield_ {
    type: number
    sql: ${yield} ;;
  }

}
