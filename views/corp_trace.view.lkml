view: corp_trace {
  derived_table: {
    sql: SELECT * FROM looker_FINAL.corp_trace
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cusip_id {
    type: string
    sql: ${TABLE}.cusip_id ;;
  }

  dimension: bond_sym_id {
    type: string
    sql: ${TABLE}.bond_sym_id ;;
  }

  dimension: company_symbol {
    type: string
    sql: ${TABLE}.company_symbol ;;
  }

  dimension_group: trd_exctn_dt {
    type: time
    label: "_trd_exctn_dt"
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
    sql: ${TABLE}.trd_exctn_dt ;;
  }

  dimension_group: trd_exctn_tm {
    type: time
    label: "_trd_exctn_tm"
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

  dimension: entrd_vol_qt {
    type: number
    sql: ${TABLE}.entrd_vol_qt ;;
  }

  dimension: rptd_pr {
    type: number
    sql: ${TABLE}.rptd_pr ;;
  }

  measure: measure_cusip_id {
    type: string
    sql: ${TABLE}.cusip_id ;;
  }

  measure: measure_bond_sym_id {
    type: string
    sql: ${TABLE}.bond_sym_id ;;
  }

  measure: measure_company_symbol {
    type: string
    sql: ${TABLE}.company_symbol ;;
  }

  measure: measure_trd_exctn_dt {
    type: time
    label: "_trd_exctn_dt"
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
    sql: ${TABLE}.trd_exctn_dt ;;
  }

  measure: measure_trd_exctn_tm {
    type: time
    label: "_trd_exctn_tm"
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

  measure: measure_entrd_vol_qt {
    type: number
    sql: ${TABLE}.entrd_vol_qt ;;
  }

  measure: measure_rptd_pr {
    type: number
    sql: ${TABLE}.rptd_pr ;;
  }

  set: detail {
    fields: [
      cusip_id,
      bond_sym_id,
      company_symbol,
      entrd_vol_qt,
      rptd_pr
    ]
  }

}
