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
    type: date
    sql: ${date} ;;
  }

  measure: dated_date_ {
    type: number
    sql: ${dated_date} ;;
  }

  measure: day_count_basis_ {
    type: string
    sql: ${day_count_basis} ;;
  }

  measure: default_date_ {
    type: number
    sql: ${default_date} ;;
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
    type: number
    sql: ${first_interest_date} ;;
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
    type: number
    sql: ${last_interest_date} ;;
  }

  measure: maturity_ {
    type: number
    sql: ${maturity} ;;
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
    type: string
    sql: ${nextcoup} ;;
  }

  measure: offering_amt_ {
    type: number
    sql: ${offering_amt} ;;
  }

  measure: offering_date_ {
    type: number
    sql: ${offering_date} ;;
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
    type: number
    sql: ${reinstated_date} ;;
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
    type: date
    sql: ${t_date} ;;
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
