view: df_v1 {
  sql_table_name: `bqtest.df_v1`
    ;;

  dimension: ats_indicator_index {
    type: number
    sql: ${TABLE}.ats_indicatorIndex ;;
  }

  dimension: buy_cmsn_rt {
    type: number
    sql: ${TABLE}.buy_cmsn_rt ;;
  }

  dimension: buy_cpcty_cd {
    type: number
    sql: ${TABLE}.buy_cpcty_cd ;;
  }

  dimension: cntra_mp_id_index {
    type: number
    value_format_name: id
    sql: ${TABLE}.cntra_mp_idIndex ;;
  }

  dimension: columnindex {
    type: number
    sql: ${TABLE}.columnindex ;;
  }

  dimension: dissem_fl {
    type: number
    sql: ${TABLE}.dissem_fl ;;
  }

  dimension: entrd_vol_qt {
    type: number
    sql: ${TABLE}.entrd_vol_qt ;;
  }

  dimension: lckd_in_ind_index {
    type: number
    sql: ${TABLE}.lckd_in_indIndex ;;
  }

  dimension: rpt_side_cd {
    type: number
    sql: ${TABLE}.rpt_side_cd ;;
  }

  dimension: rptd_pr {
    type: number
    sql: ${TABLE}.rptd_pr ;;
  }

  dimension: rptg_party_type_index {
    type: number
    sql: ${TABLE}.rptg_party_typeIndex ;;
  }

  dimension: sale_cndtn2_cd_index {
    type: number
    sql: ${TABLE}.sale_cndtn2_cdIndex ;;
  }

  dimension: sell_cmsn_rt {
    type: number
    sql: ${TABLE}.sell_cmsn_rt ;;
  }

  dimension: sell_cpcty_cd {
    type: number
    sql: ${TABLE}.sell_cpcty_cd ;;
  }

  dimension: spcl_trd_fl_index {
    type: number
    sql: ${TABLE}.spcl_trd_flIndex ;;
  }

  dimension: trc_st_index {
    type: number
    sql: ${TABLE}.trc_stIndex ;;
  }

  dimension: trd_exctn_dt {
    type: number
    sql: ${TABLE}.trd_exctn_dt ;;
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
    sql: ${TABLE}.trd_exctn_tm ;;
  }

  dimension: trd_mod_3_index {
    type: number
    sql: ${TABLE}.trd_mod_3Index ;;
  }

  dimension: trd_rpt_dt {
    type: number
    sql: ${TABLE}.trd_rpt_dt ;;
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
    sql: ${TABLE}.trd_rpt_tm ;;
  }

  dimension: trdg_mkt_cd {
    type: number
    sql: ${TABLE}.trdg_mkt_cd ;;
  }

  dimension: wis_fl {
    type: number
    sql: ${TABLE}.wis_fl ;;
  }

  dimension: yld_pt {
    type: number
    sql: ${TABLE}.yld_pt ;;
  }

  dimension: yld_sign_cd_index {
    type: number
    sql: ${TABLE}.yld_sign_cdIndex ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
