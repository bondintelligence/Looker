view: corp {
  sql_table_name: `bi-model-development.looker_FINAL.corp`
    ;;

  dimension: amount_outstanding {
    type: string
    sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  }


  dimension: bond_type {
    type: string
    sql: ${TABLE}.BOND_TYPE ;;
  }



  dimension: conv {
    type: string
    label: "convertible"
    sql: ${TABLE}.CONV ;;
  }

  dimension: coupacc {
    type: string
    label: "coupon_accrued"
    sql: ${TABLE}.COUPACC ;;
  }

  dimension: coupamt {
    type: string
    label: "coupon_amount"
    sql: ${TABLE}.COUPAMT ;;
  }

  dimension: coupmonth {
    type: string
    label: "num_of_months_since_first_coupon_payment"
    sql: ${TABLE}.COUPMONTH ;;
  }

  dimension: coupon {
    type: string
    sql: ${TABLE}.COUPON ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }

  dimension: dated_date {
    type: string
    sql: ${TABLE}.DATED_DATE ;;
  }

  dimension: day_count_basis {
    type: string
    sql: ${TABLE}.DAY_COUNT_BASIS ;;
  }

  dimension: default_date {
    type: string
    sql: ${TABLE}.DEFAULT_DATE ;;
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
    type: string
    sql: ${TABLE}.DURATION ;;
  }

  dimension: first_interest_date {
    type: string
    sql: ${TABLE}.FIRST_INTEREST_DATE ;;
  }

  dimension: gap {
    type: string
    sql: ${TABLE}.GAP ;;
  }



  dimension: last_interest_date {
    type: string
    sql: ${TABLE}.LAST_INTEREST_DATE ;;
  }

  dimension: maturity {
    type: string
    sql: ${TABLE}.MATURITY ;;
  }

  dimension: multicoups {
    type: string
    label: "multiple_coupon_payments"
    sql: ${TABLE}.MULTICOUPS ;;
  }

  dimension: n_fr {
    type: string
    label: "n_fitch"
    sql: ${TABLE}.N_FR ;;
  }

  dimension: n_mr {
    type: string
    label: "n_moody"
    sql: ${TABLE}.N_MR ;;
  }

  dimension: n_sp {
    type: string
    label: "n_standard_poor"
    sql: ${TABLE}.N_SP ;;
  }

  dimension: ncoups {
    type: string
    label: "number_of_coupons_per_year  "
    sql: ${TABLE}.NCOUPS ;;
  }

  dimension: nextcoup {
    type: string
    sql: ${TABLE}.nextcoup ;;
  }

  dimension: offering_amt {
    type: string
    label: "offering_amount"
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

  dimension: price_eom {
    type: string
    label: "price_end_of_month"
    sql: ${TABLE}.PRICE_EOM ;;
  }



  dimension: price_ldm {
    type: string
    label: "price_last_trading_day_of_month "
    sql: ${TABLE}.PRICE_LDM ;;
  }

  dimension: principal_amt {
    type: string
    label: "principal_amount"
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  dimension: r_fr {
    type: string
    label: "fitch_rating"
    sql: ${TABLE}.R_FR ;;
  }

  dimension: r_mr {
    type: string
    label: "moody_rating"
    sql: ${TABLE}.R_MR ;;
  }

  dimension: r_sp {
    type: string
    label: "standard_poor_rating"
    sql: ${TABLE}.R_SP ;;
  }

  dimension: rating_cat {
    type: string
    label: "rating_category"
    sql: ${TABLE}.RATING_CAT ;;
  }

  dimension: rating_class {
    type: string
    sql: ${TABLE}.RATING_CLASS ;;
  }

  dimension: rating_num {
    type: string
    label: "numerical_rating"
    sql: ${TABLE}.RATING_NUM ;;
  }

  dimension: reinstated {
    type: string
    sql: ${TABLE}.REINSTATED ;;
  }

  dimension: reinstated_date {
    type: string
    sql: ${TABLE}.REINSTATED_DATE ;;
  }

  dimension: remcoups {
    type: string
    label: "remaining_coupons"
    sql: ${TABLE}.REMCOUPS ;;
  }

  dimension: ret_eom {
    type: string
    label: "return_end_of_month"
    sql: ${TABLE}.RET_EOM ;;
  }



  dimension: ret_ldm {
    type: string
    label: "return_last_trading_day_of_month"
    sql: ${TABLE}.RET_LDM ;;
  }

  dimension: security_level {
    type: string
    sql: ${TABLE}.SECURITY_LEVEL ;;
  }

  dimension: t_date {
    type: string
    label: "execution_date"
    sql: ${TABLE}.T_DATE ;;
  }

  dimension: t_dvolume {
    type: string
    label: "total_dollar_volume"
    sql: ${TABLE}.T_DVolume ;;
  }

  dimension: t_spread {
    type: string
    sql: ${TABLE}.T_Spread ;;
  }

  dimension: t_volume {
    type: string
    label: "total_par_value_volume  "
    sql: ${TABLE}.T_Volume ;;
  }

  dimension: t_yld_pt {
    type: string
    label: "trade_weighted_yield_point"
    sql: ${TABLE}.T_Yld_Pt ;;
  }

  dimension: tmt {
    type: string
    label: "time_to_maturity_years"
    sql: ${TABLE}.TMT ;;
  }

  dimension: treasury_maturity {
    type: string
    sql: ${TABLE}.TREASURY_MATURITY ;;
  }

  dimension: yield {
    type: string
    sql: ${TABLE}.YIELD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
