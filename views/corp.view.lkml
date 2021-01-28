view: corp {
  sql_table_name: `bi-model-development.looker_FINAL.corp`
    ;;

  dimension: amount_outstanding {
    type: string
    sql: ${TABLE}.AMOUNT_OUTSTANDING ;;
  }

  dimension: bond_sym_id {
    type: string
    sql: ${TABLE}.bond_sym_id ;;
  }

  dimension: bond_type {
    type: string
    sql: ${TABLE}.BOND_TYPE ;;
  }

  dimension: bsym {
    type: string
    sql: ${TABLE}.bsym ;;
  }

  dimension: company_symbol {
    type: string
    sql: ${TABLE}.company_symbol ;;
  }

  dimension: conv {
    type: string
    sql: ${TABLE}.CONV ;;
  }

  dimension: coupacc {
    type: string
    sql: ${TABLE}.COUPACC ;;
  }

  dimension: coupamt {
    type: string
    sql: ${TABLE}.COUPAMT ;;
  }

  dimension: coupmonth {
    type: string
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

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: issue_id {
    type: string
    sql: ${TABLE}.ISSUE_ID ;;
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
    sql: ${TABLE}.MULTICOUPS ;;
  }

  dimension: n_fr {
    type: string
    sql: ${TABLE}.N_FR ;;
  }

  dimension: n_mr {
    type: string
    sql: ${TABLE}.N_MR ;;
  }

  dimension: n_sp {
    type: string
    sql: ${TABLE}.N_SP ;;
  }

  dimension: ncoups {
    type: string
    sql: ${TABLE}.NCOUPS ;;
  }

  dimension: nextcoup {
    type: string
    sql: ${TABLE}.nextcoup ;;
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

  dimension: price_eom {
    type: string
    sql: ${TABLE}.PRICE_EOM ;;
  }

  dimension: price_l5_m {
    type: string
    sql: ${TABLE}.PRICE_L5M ;;
  }

  dimension: price_ldm {
    type: string
    sql: ${TABLE}.PRICE_LDM ;;
  }

  dimension: principal_amt {
    type: string
    sql: ${TABLE}.PRINCIPAL_AMT ;;
  }

  dimension: r_fr {
    type: string
    sql: ${TABLE}.R_FR ;;
  }

  dimension: r_mr {
    type: string
    sql: ${TABLE}.R_MR ;;
  }

  dimension: r_sp {
    type: string
    sql: ${TABLE}.R_SP ;;
  }

  dimension: rating_cat {
    type: string
    sql: ${TABLE}.RATING_CAT ;;
  }

  dimension: rating_class {
    type: string
    sql: ${TABLE}.RATING_CLASS ;;
  }

  dimension: rating_num {
    type: string
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
    sql: ${TABLE}.REMCOUPS ;;
  }

  dimension: ret_eom {
    type: string
    sql: ${TABLE}.RET_EOM ;;
  }

  dimension: ret_l5_m {
    type: string
    sql: ${TABLE}.RET_L5M ;;
  }

  dimension: ret_ldm {
    type: string
    sql: ${TABLE}.RET_LDM ;;
  }

  dimension: security_level {
    type: string
    sql: ${TABLE}.SECURITY_LEVEL ;;
  }

  dimension: t_date {
    type: string
    sql: ${TABLE}.T_DATE ;;
  }

  dimension: t_dvolume {
    type: string
    sql: ${TABLE}.T_DVolume ;;
  }

  dimension: t_spread {
    type: string
    sql: ${TABLE}.T_Spread ;;
  }

  dimension: t_volume {
    type: string
    sql: ${TABLE}.T_Volume ;;
  }

  dimension: t_yld_pt {
    type: string
    sql: ${TABLE}.T_Yld_Pt ;;
  }

  dimension: tmt {
    type: string
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
