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
    type: number
    sql: ${TABLE}.DURATION ;;
  }

  dimension: first_interest_date {
    type: string
    sql: ${TABLE}.FIRST_INTEREST_DATE ;;
  }

  dimension: gap {
    type: number
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

  dimension: nextcoup {
    type: string
    sql: ${TABLE}.nextcoup ;;
  }

  dimension: offering_amt {
    type: number
    label: "offering_amount"
    value_format: "$#,##0.00"
    sql: ${TABLE}.OFFERING_AMT ;;
  }

  dimension: offering_date {
    type: string
    sql: ${TABLE}.OFFERING_DATE ;;
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

  dimension: reinstated_date {
    type: string
    sql: ${TABLE}.REINSTATED_DATE ;;
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

  dimension: t_date {
    type: string
    label: "execution_date"
    sql: ${TABLE}.T_DATE ;;
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
}
