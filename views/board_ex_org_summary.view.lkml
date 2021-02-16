view: board_ex_summary {
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
    label: "Average Time in Other Companies"
    type: number
    sql: ${TABLE}.AvgTimeOthCo ;;
  }
  dimension: board_id {
    type: number
    sql: ${TABLE}.BoardID ;;
    group_label: "Company Info"
  }

  dimension: board_name {
    type: string
    sql: ${TABLE}.BoardName ;;
    group_label: "Company Info"
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}.Bonus ;;
    group_label: "Bonus Info"
  }

  dimension: bonus_ratio {
    type: number
    sql: ${TABLE}.BonusRatio ;;
    group_label: "Bonus Info"
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: director_id {
    type: number
    sql: ${TABLE}.DirectorID ;;
    group_label: "Director Info"
  }

  dimension: director_name {
    type: string
    sql: ${TABLE}.DirectorName ;;
    group_label: "Director Info"
  }

  dimension: eq_link_rem_ratio {
    type: number
    label: "Equity Linked Remuneration Ratio"
    sql: ${TABLE}.EqLinkRemRatio ;;
  }

  dimension: est_val_opt_award {
    type: number
    label: "Estimated Value of Options Awarded"
    sql: ${TABLE}.EstValOptAward ;;
    group_label: "Estimated Value of Options"
  }

  dimension: est_val_opt_held {
    type: number
    label: "Estimated Value of Options Held"
    sql: ${TABLE}.EstValOptHeld ;;
    group_label: "Estimated Value of Options"
  }

  dimension: gender_ratio {
    type: number
    sql: ${TABLE}.GenderRatio ;;
  }

  dimension: hocountry_name {
    label: "Country"
    type: string
    sql: ${TABLE}.HOCountryName ;;
    group_label: "Company Info"
  }

  dimension: index {
    label: "Company_Index"
    type: string
    sql: ${TABLE}.Index ;;
    group_label: "Company Info"
  }

  dimension: int_val_opt_held {
    type: number
    label: "Intrinsic Value of Options Held"
    sql: ${TABLE}.IntValOptHeld ;;
    group_label: "Intrinsic Value of Options"
  }

  dimension: intr_val_opt_award {
    type: number
    label: "Intrinsic Value of Options Awarded"
    sql: ${TABLE}.IntrValOptAward ;;
    group_label: "Intrinsic Value of Options"
  }

  dimension: isin {
    label: "Company_ISIN"
    type: string
    sql: ${TABLE}.ISIN ;;
    group_label: "Company Info"
  }

  dimension: ltipvalue {
    type: number
    label: "Value of LTIP Awarded"
    sql: ${TABLE}.LTIPValue ;;
  }

  dimension: nationality_mix {
    type: number
    sql: ${TABLE}.NationalityMix ;;
  }

  dimension: ned {
    type: yesno
    label: "Director Type "
    sql: ${TABLE}.NED ;;
    group_label: "Director Info"
  }

  dimension: network_size {
    type: number
    label: "Individual Network Size "
    sql: ${TABLE}.NetworkSize ;;
  }

  dimension: no_quals {
    type: number
    label: "Number of Qualifications"
    sql: ${TABLE}.NoQuals ;;
  }

  dimension: number_directors {
    type: number
    label: "Number of Directors on Board"
    sql: ${TABLE}.NumberDirectors ;;
  }

  dimension: other {
    type: number
    sql: ${TABLE}.Other ;;
  }

  dimension: pen_emp_con {
    type: number
    label: "Employers Defined Contribution"
    sql: ${TABLE}.PenEmpCon ;;
  }

  dimension: perf_total {
    type: number
    label: "LTIP Value / Total Awards for the Period"
    sql: ${TABLE}.PerfTotal ;;
  }

  dimension: rem_chge_last {
    type: number
    label: "Remuneration Change since Last R&A  "
    sql: ${TABLE}.RemChgeLast ;;
  }

  dimension: role_name {
    type: string
    label: "Individual Role "
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
    label: "SD of Age"
    sql: ${TABLE}.STDEVAge ;;
    group_label: "Standard Deviation"
  }

  dimension: stdevno_quals {
    type: number
    label: "SD of Total Number of Qualifications"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVNoQuals ;;
  }

  dimension: stdevtime_brd {
    type: number
    label: "SD of Time on Board"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTimeBrd ;;
  }

  dimension: stdevtime_in_co {
    type: number
    label: "SD of Time in Company"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTimeInCo ;;
  }

  dimension: stdevtot_curr_no_lstd_brd {
    type: number
    label: "SD of Total Number of Current Listed Boards sat on"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTotCurrNoLstdBrd ;;
  }

  dimension: stdevtot_no_lstd_brd {
    type: number
    label: "SD of Total Number of Listed Boards sat on"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTotNoLstdBrd ;;
  }

  dimension: succession {
    type: number
    sql: ${TABLE}.Succession ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.Ticker ;;
    group_label: "Company Info"
  }

  dimension: time_brd {
    type: number
    label: "Time on Board"
    sql: ${TABLE}.TimeBrd ;;
  }

  dimension: time_in_co {
    type: number
    label: "Time in Company"
    sql: ${TABLE}.TimeInCo ;;
  }

  dimension: time_retirement {
    type: number
    label: "Time to Retirement"
    sql: ${TABLE}.TimeRetirement ;;
  }

  dimension: time_role {
    type: number
    label: "Time in Role"
    sql: ${TABLE}.TimeRole ;;
  }

  dimension: tot_curr_no_lstd_brd {
    type: number
    label: "Listed Boards"
    group_label: "Total Current Number of Boards sitting on"
    sql: ${TABLE}.TotCurrNoLstdBrd ;;
  }

  dimension: tot_curr_no_oth_lstd_brd {
    type: number
    label: "Other Boards"
    group_label: "Total Current Number of Boards sitting on"
    sql: ${TABLE}.TotCurrNoOthLstdBrd ;;
  }

  dimension: tot_curr_no_un_lstd_brd {
    type: number
    label: "Unlisted Boards"
    group_label: "Total Current Number of Boards sitting on"
    sql: ${TABLE}.TotCurrNoUnLstdBrd ;;
  }

  dimension: tot_eq_at_risk {
    type: number
    label: "Total Stock, Option, and LTIP Awards"
    sql: ${TABLE}.TotEqAtRisk ;;
  }

  dimension: tot_eq_linked_wlth {
    type: number
    label: "Total Value of Equity Linked Wealth"
    sql: ${TABLE}.TotEqLinkedWlth ;;
  }

  dimension: tot_no_lstd_brd {
    type: number
    label: "Listed Boards"
    group_label: "Total Number of Boards sat on"
    sql: ${TABLE}.TotNoLstdBrd ;;
  }

  dimension: tot_no_oth_lstd_brd {
    type: number
    label: "Other Boards"
    group_label: "Total Number of Boards sat on"
    sql: ${TABLE}.TotNoOthLstdBrd ;;
  }

  dimension: tot_no_un_lstd_brd {
    type: number
    label: "Unlisted Boards"
    group_label: "Total Number of Boards sat on"
    sql: ${TABLE}.TotNoUnLstdBrd ;;
  }

  dimension: tot_rem_period {
    type: number
    label: "Total Awards for the Remuneration Period"
    sql: ${TABLE}.TotRemPeriod ;;
  }

  dimension: total_compensation {
    type: number
    group_label: "Compensation"
    sql: ${TABLE}.TotalCompensation ;;
  }

  dimension: total_direct_comp {
    type: number
    group_label: "Compensation"
    label: "Total Direct Compensation"
    sql: ${TABLE}.TotalDirectComp ;;
  }

  dimension: val_eq_award {
    type: number
    label: "Value of Equity Awarded in last year"
    sql: ${TABLE}.ValEqAward ;;
  }

  dimension: val_ltipheld {
    type: number
    label: "Value of Long Term Incentive Plans Held"
    sql: ${TABLE}.ValLTIPHeld ;;
  }

  dimension: val_tot_eq_held {
    type: number
    label: "Value of Total Equity Held"
    sql: ${TABLE}.ValTotEqHeld ;;
  }

  dimension: wealth_delta {
    type: number
    label: "WealthDelta"
    sql: ${TABLE}.WealthDelta ;;
  }

  measure: count {
    type: count
    drill_fields: [hocountry_name, role_name, director_name, board_name]
  }
}
