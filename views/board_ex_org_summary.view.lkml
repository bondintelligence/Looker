view: board_ex_org_summary {
  sql_table_name: `bi-model-development.looker_FINAL.BoardEx_Org_Summary`
    ;;

  dimension_group: annual_report_date_full {
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
    sql: ${TABLE}.Annual_Report_Date_Full ;;
  }

  dimension: attrition {
    type: number
    sql: ${TABLE}.Attrition ;;
  }

  dimension: avg_time_oth_co {
    type: number
    sql: ${TABLE}.AvgTimeOthCo ;;
  }

  dimension: board_id {
    type: number
    sql: ${TABLE}.BoardID ;;
  }

  dimension: board_name {
    type: string
    sql: ${TABLE}.BoardName ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}.Bonus ;;
  }

  dimension: bonus_ratio {
    type: number
    sql: ${TABLE}.BonusRatio ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: director_id {
    type: number
    sql: ${TABLE}.DirectorID ;;
  }

  dimension: director_name {
    type: string
    sql: ${TABLE}.DirectorName ;;
  }

  dimension: eq_link_rem_ratio {
    type: number
    sql: ${TABLE}.EqLinkRemRatio ;;
  }

  dimension: est_val_opt_award {
    type: number
    sql: ${TABLE}.EstValOptAward ;;
  }

  dimension: est_val_opt_held {
    type: number
    sql: ${TABLE}.EstValOptHeld ;;
  }

  dimension: gender_ratio {
    type: number
    sql: ${TABLE}.GenderRatio ;;
  }

  dimension: hocountry_name {
    type: string
    sql: ${TABLE}.HOCountryName ;;
  }

  dimension: index {
    type: string
    sql: ${TABLE}.Index ;;
  }

  dimension: int_val_opt_held {
    type: number
    sql: ${TABLE}.IntValOptHeld ;;
  }

  dimension: intr_val_opt_award {
    type: number
    sql: ${TABLE}.IntrValOptAward ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: ltipvalue {
    type: number
    sql: ${TABLE}.LTIPValue ;;
  }

  dimension: nationality_mix {
    type: number
    sql: ${TABLE}.NationalityMix ;;
  }

  dimension: ned {
    type: yesno
    sql: ${TABLE}.NED ;;
  }

  dimension: network_size {
    type: number
    sql: ${TABLE}.NetworkSize ;;
  }

  dimension: no_quals {
    type: number
    sql: ${TABLE}.NoQuals ;;
  }

  dimension: number_directors {
    type: number
    sql: ${TABLE}.NumberDirectors ;;
  }

  dimension: other {
    type: number
    sql: ${TABLE}.Other ;;
  }

  dimension: pen_emp_con {
    type: number
    sql: ${TABLE}.PenEmpCon ;;
  }

  dimension: perf_total {
    type: number
    sql: ${TABLE}.PerfTotal ;;
  }

  dimension: rem_chge_last {
    type: number
    sql: ${TABLE}.RemChgeLast ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.RoleName ;;
  }

  dimension: row_type {
    type: string
    sql: ${TABLE}.RowType ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.Sector ;;
  }

  dimension: stdevage {
    type: number
    sql: ${TABLE}.STDEVAge ;;
  }

  dimension: stdevno_quals {
    type: number
    sql: ${TABLE}.STDEVNoQuals ;;
  }

  dimension: stdevtime_brd {
    type: number
    sql: ${TABLE}.STDEVTimeBrd ;;
  }

  dimension: stdevtime_in_co {
    type: number
    sql: ${TABLE}.STDEVTimeInCo ;;
  }

  dimension: stdevtot_curr_no_lstd_brd {
    type: number
    sql: ${TABLE}.STDEVTotCurrNoLstdBrd ;;
  }

  dimension: stdevtot_no_lstd_brd {
    type: number
    sql: ${TABLE}.STDEVTotNoLstdBrd ;;
  }

  dimension: succession {
    type: number
    sql: ${TABLE}.Succession ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.Ticker ;;
  }

  dimension: time_brd {
    type: number
    sql: ${TABLE}.TimeBrd ;;
  }

  dimension: time_in_co {
    type: number
    sql: ${TABLE}.TimeInCo ;;
  }

  dimension: time_retirement {
    type: number
    sql: ${TABLE}.TimeRetirement ;;
  }

  dimension: time_role {
    type: number
    sql: ${TABLE}.TimeRole ;;
  }

  dimension: tot_curr_no_lstd_brd {
    type: number
    sql: ${TABLE}.TotCurrNoLstdBrd ;;
  }

  dimension: tot_curr_no_oth_lstd_brd {
    type: number
    sql: ${TABLE}.TotCurrNoOthLstdBrd ;;
  }

  dimension: tot_curr_no_un_lstd_brd {
    type: number
    sql: ${TABLE}.TotCurrNoUnLstdBrd ;;
  }

  dimension: tot_eq_at_risk {
    type: number
    sql: ${TABLE}.TotEqAtRisk ;;
  }

  dimension: tot_eq_linked_wlth {
    type: number
    sql: ${TABLE}.TotEqLinkedWlth ;;
  }

  dimension: tot_no_lstd_brd {
    type: number
    sql: ${TABLE}.TotNoLstdBrd ;;
  }

  dimension: tot_no_oth_lstd_brd {
    type: number
    sql: ${TABLE}.TotNoOthLstdBrd ;;
  }

  dimension: tot_no_un_lstd_brd {
    type: number
    sql: ${TABLE}.TotNoUnLstdBrd ;;
  }

  dimension: tot_rem_period {
    type: number
    sql: ${TABLE}.TotRemPeriod ;;
  }

  dimension: total_compensation {
    type: number
    sql: ${TABLE}.TotalCompensation ;;
  }

  dimension: total_direct_comp {
    type: number
    sql: ${TABLE}.TotalDirectComp ;;
  }

  dimension: val_eq_award {
    type: number
    sql: ${TABLE}.ValEqAward ;;
  }

  dimension: val_ltipheld {
    type: number
    sql: ${TABLE}.ValLTIPHeld ;;
  }

  dimension: val_tot_eq_held {
    type: number
    sql: ${TABLE}.ValTotEqHeld ;;
  }

  dimension: wealth_delta {
    type: number
    sql: ${TABLE}.WealthDelta ;;
  }

  measure: count {
    type: count
    drill_fields: [hocountry_name, role_name, director_name, board_name]
  }
}
