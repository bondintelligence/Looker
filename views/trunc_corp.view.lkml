view: trunc_corp {
  sql_table_name: `bqtest.trunc_corp`
    ;;

  dimension: agu_qsr_id {
    type: string
    sql: ${TABLE}.AGU_QSR_ID ;;
  }

  dimension: asof_cd {
    type: string
    sql: ${TABLE}.ASOF_CD ;;
  }

  dimension: ats_indicator {
    type: string
    sql: ${TABLE}.ATS_INDICATOR ;;
  }

  dimension: bloomberg_identifier {
    type: string
    sql: ${TABLE}.BLOOMBERG_IDENTIFIER ;;
  }

  dimension: bond_sym_id {
    type: string
    sql: ${TABLE}.BOND_SYM_ID ;;
  }

  dimension: buy_cmsn_rt {
    type: number
    sql: ${TABLE}.BUY_CMSN_RT ;;
  }

  dimension: buy_cpcty_cd {
    type: string
    sql: ${TABLE}.BUY_CPCTY_CD ;;
  }

  dimension: cmsn_trd {
    type: string
    sql: ${TABLE}.CMSN_TRD ;;
  }

  dimension: cntra_mp_id {
    type: string
    sql: ${TABLE}.CNTRA_MP_ID ;;
  }

  dimension: company_symbol {
    type: string
    sql: ${TABLE}.COMPANY_SYMBOL ;;
  }

  dimension: cusip_id {
    type: string
    sql: ${TABLE}.CUSIP_ID ;;
  }

  dimension: days_to_sttl_ct {
    type: string
    sql: ${TABLE}.DAYS_TO_STTL_CT ;;
  }

  dimension: dissem_fl {
    type: string
    sql: ${TABLE}.DISSEM_FL ;;
  }

  dimension: entrd_vol_qt {
    type: number
    sql: ${TABLE}.ENTRD_VOL_QT ;;
  }

  dimension: first_trade_ctrl_date {
    type: number
    sql: ${TABLE}.FIRST_TRADE_CTRL_DATE ;;
  }

  dimension: first_trade_ctrl_num {
    type: number
    sql: ${TABLE}.FIRST_TRADE_CTRL_NUM ;;
  }

  dimension: lckd_in_ind {
    type: string
    sql: ${TABLE}.LCKD_IN_IND ;;
  }

  dimension: msg_seq_nb {
    type: number
    sql: ${TABLE}.MSG_SEQ_NB ;;
  }

  dimension: orig_msg_seq_nb {
    type: number
    sql: ${TABLE}.ORIG_MSG_SEQ_NB ;;
  }

  dimension: pr_trd_dt {
    type: number
    sql: ${TABLE}.PR_TRD_DT ;;
  }

  dimension: rpt_side_cd {
    type: string
    sql: ${TABLE}.RPT_SIDE_CD ;;
  }

  dimension: rptd_pr {
    type: number
    sql: ${TABLE}.RPTD_PR ;;
  }

  dimension: rptg_party_type {
    type: string
    sql: ${TABLE}.RPTG_PARTY_TYPE ;;
  }

  dimension: sale_cndtn2_cd {
    type: string
    sql: ${TABLE}.SALE_CNDTN2_CD ;;
  }

  dimension: sale_cndtn_cd {
    type: string
    sql: ${TABLE}.SALE_CNDTN_CD ;;
  }

  dimension: scrty_type_cd {
    type: string
    sql: ${TABLE}.SCRTY_TYPE_CD ;;
  }

  dimension: sell_cmsn_rt {
    type: number
    sql: ${TABLE}.SELL_CMSN_RT ;;
  }

  dimension: sell_cpcty_cd {
    type: string
    sql: ${TABLE}.SELL_CPCTY_CD ;;
  }

  dimension: spcl_trd_fl {
    type: string
    sql: ${TABLE}.SPCL_TRD_FL ;;
  }

  dimension: stlmnt_dt {
    type: number
    sql: ${TABLE}.STLMNT_DT ;;
  }

  dimension: sub_prdct {
    type: string
    sql: ${TABLE}.SUB_PRDCT ;;
  }

  dimension: trc_st {
    type: string
    sql: ${TABLE}.TRC_ST ;;
  }

  dimension: trd_exctn_dt {
    type: number
    sql: ${TABLE}.TRD_EXCTN_DT ;;
  }

  dimension_group: trd_exctn_tm {
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
    sql: ${TABLE}.TRD_EXCTN_TM ;;
  }

  dimension: trd_mod_3 {
    type: string
    sql: ${TABLE}.TRD_MOD_3 ;;
  }

  dimension: trd_mod_4 {
    type: string
    sql: ${TABLE}.TRD_MOD_4 ;;
  }

  dimension: trd_rpt_dt {
    type: number
    sql: ${TABLE}.TRD_RPT_DT ;;
  }

  dimension_group: trd_rpt_tm {
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
    sql: ${TABLE}.TRD_RPT_TM ;;
  }

  dimension: trdg_mkt_cd {
    type: string
    sql: ${TABLE}.TRDG_MKT_CD ;;
  }

  dimension: wis_fl {
    type: string
    sql: ${TABLE}.WIS_FL ;;
  }

  dimension: yld_pt {
    type: string
    sql: ${TABLE}.YLD_PT ;;
  }

  dimension: yld_sign_cd {
    type: string
    sql: ${TABLE}.YLD_SIGN_CD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
