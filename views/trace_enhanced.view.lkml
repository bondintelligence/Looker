view: trace_enhanced {
  derived_table: {
    sql: SELECT * FROM looker_FINAL.TRACE_Enhanced
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cusip_id {
    type: string
    label: "CUSIP"
    primary_key: yes
    sql: ${TABLE}.cusip_id ;;
  }

  dimension: bond_sym_id {
    type: string
    label: "TRACE Bond Symbol"
    sql: ${TABLE}.bond_sym_id ;;
  }

  dimension: company_symbol {
    type: string
    label: "Company Symbol (issuer stock ticker)"
    sql: ${TABLE}.company_symbol ;;
  }

  dimension_group: trd_exctn_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour,
      minute,
      second
    ]
    label: "Execution Datetime"
    sql: CONCAT(${TABLE}.trd_exctn_dt, " ", ${TABLE}.trd_exctn_tm) ;;
    datatype: datetime
    convert_tz: no
  }

  # dimension: trd_exctn_tm {
  #   type: date_time_of_day
  #   label: "Execution Time"
  #   sql: ${TABLE}.trd_exctn_tm ;;
  # }

  dimension_group: trd_rpt_dt {
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
    label: "Report Date"
    sql: CONCAT(${TABLE}.trd_rpt_dt, " ", ${TABLE}.trd_rpt_tm) ;;
    datatype: date
    convert_tz: no
  }

  # dimension: trd_rpt_tm {
  #   type: date_time_of_day
  #   label: "Report Time"
  #   sql: ${TABLE}.trd_rpt_tm ;;
  # }

  dimension: msg_seq_nb {
    type: string
    label: "Message Sequence Number"
    sql: ${TABLE}.msg_seq_nb ;;
  }

  dimension: trc_st {
    type: string
    label: "Trade Status"
    sql: ${TABLE}.trc_st ;;
  }

  dimension: scrty_type_cd {
    type: string
    label: "Security Type"
    sql: ${TABLE}.scrty_type_cd ;;
  }

  dimension: wis_fl {
    type: string
    label: "When Issued Indicator"
    sql: ${TABLE}.wis_fl ;;
  }

  dimension: cmsn_trd {
    type: string
    label: "Commission Indicator"
    sql: ${TABLE}.cmsn_trd ;;
  }

  dimension: entrd_vol_qt {
    type: number
    label: "Quantity (Entered Quantity in par value amount)"
    sql: ${TABLE}.entrd_vol_qt ;;
  }

  dimension: rptd_pr {
    type: number
    label: "Price"
    sql: ${TABLE}.rptd_pr ;;
  }

  dimension: yld_pt {
    type: number
    label: "Yield"
    sql: ${TABLE}.yld_pt ;;
  }

  dimension: asof_cd {
    type: string
    label: "As Of Indicator"
    sql: ${TABLE}.asof_cd ;;
  }

  dimension: rpt_side_cd {
    type: string
    label: "Buy/Sell Indicator"
    sql: ${TABLE}.rpt_side_cd ;;
  }

  dimension: buy_cmsn_rt {
    type: number
    label: "Buyer Commission"
    sql: ${TABLE}.buy_cmsn_rt ;;
  }

  dimension: buy_cpcty_cd {
    type: string
    label: "Buyer Capacity"
    sql: ${TABLE}.buy_cpcty_cd ;;
  }

  dimension: sell_cmsn_rt {
    type: number
    label: "Seller Commission"
    sql: ${TABLE}.sell_cmsn_rt ;;
  }

  dimension: sell_cpcty_cd {
    type: string
    label: "Seller Capacity"
    sql: ${TABLE}.sell_cpcty_cd ;;
  }

  dimension: cntra_mp_id {
    type: string
    label: "Contra Party Indicator"
    sql: ${TABLE}.cntra_mp_id ;;
  }

  dimension: spcl_trd_fl {
    type: string
    label: "Special Price Indicator"
    sql: ${TABLE}.spcl_trd_fl ;;
  }

  dimension: trdg_mkt_cd {
    type: string
    label: "Trading Market Indicator"
    sql: ${TABLE}.trdg_mkt_cd ;;
  }

  dimension: dissem_fl {
    type: string
    label: "Dissemination Flag"
    sql: ${TABLE}.dissem_fl ;;
  }

  dimension: orig_msg_seq_nb {
    type: string
    label: "Original Message Sequence Number"
    sql: ${TABLE}.orig_msg_seq_nb ;;
  }

  dimension: sub_prdct {
    type: string
    label: "Sub-Product"
    sql: ${TABLE}.sub_prdct ;;
  }

  dimension_group: stlmnt_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    label: "Settlement Date"
    sql: ${TABLE}.stlmnt_dt ;;
    datatype: date
    convert_tz: no
  }

  dimension: trd_mod_3 {
    type: string
    label: "Trade Modifier 3"
    sql: ${TABLE}.trd_mod_3 ;;
  }

  dimension: trd_mod_4 {
    type: string
    label: "Trade Modifier 4"
    sql: ${TABLE}.trd_mod_4 ;;
  }

  dimension: rptg_party_type {
    type: string
    label: "Reporting Party Type"
    sql: ${TABLE}.rptg_party_type ;;
  }

  dimension: lckd_in_ind {
    type: string
    label: "Locked In Indicator"
    sql: ${TABLE}.lckd_in_ind ;;
  }

  dimension: ats_indicator {
    type: string
    label: "ATS Indicator"
    sql: ${TABLE}.ats_indicator ;;
  }

  dimension_group: pr_trd_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    label: "Prior Trade Report Date"
    sql: ${TABLE}.pr_trd_dt ;;
    datatype: date
    convert_tz: no
  }

  dimension_group: first_trade_ctrl_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    label: "First Trade Control Date"
    sql: ${TABLE}.first_trade_ctrl_date ;;
    datatype: date
    convert_tz: no
  }

  dimension: first_trade_ctrl_num {
    type: string
    label: "First Trade Control Number"
    sql: ${TABLE}.first_trade_ctrl_num ;;
  }

  set: detail {
    fields: [
      cusip_id,
      bond_sym_id,
      company_symbol,
      trd_exctn_dt_date,
      trd_exctn_dt_week,
      trd_exctn_dt_month,
      trd_exctn_dt_quarter,
      trd_exctn_dt_year,
      trd_rpt_dt_date,
      trd_rpt_dt_week,
      trd_rpt_dt_month,
      trd_rpt_dt_quarter,
      trd_rpt_dt_year,
      msg_seq_nb,
      trc_st,
      scrty_type_cd,
      wis_fl,
      cmsn_trd,
      entrd_vol_qt,
      rptd_pr,
      yld_pt,
      asof_cd,
      rpt_side_cd,
      buy_cmsn_rt,
      buy_cpcty_cd,
      sell_cmsn_rt,
      sell_cpcty_cd,
      cntra_mp_id,
      spcl_trd_fl,
      trdg_mkt_cd,
      dissem_fl,
      orig_msg_seq_nb,
      sub_prdct,
      stlmnt_dt_date,
      stlmnt_dt_week,
      stlmnt_dt_month,
      stlmnt_dt_quarter,
      stlmnt_dt_year,
      trd_mod_3,
      trd_mod_4,
      rptg_party_type,
      lckd_in_ind,
      ats_indicator,
      pr_trd_dt_date,
      pr_trd_dt_week,
      pr_trd_dt_month,
      pr_trd_dt_quarter,
      pr_trd_dt_year,
      first_trade_ctrl_date_date,
      first_trade_ctrl_date_week,
      first_trade_ctrl_date_month,
      first_trade_ctrl_date_quarter,
      first_trade_ctrl_date_year,
      first_trade_ctrl_num
    ]
  }
}
