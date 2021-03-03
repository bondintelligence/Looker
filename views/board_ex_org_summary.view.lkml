view: board_ex_summary {
  #sql_table_name: `bi-model-development.looker_FINAL.BoardEx_Org_Summary`;;

  derived_table: {
    sql:
      SELECT * FROM`bi-model-development.looker_FINAL.BoardEx_Org_Summary` WHERE HOCountryName IS NOT NULL AND BoardName IS NOT NULL AND Ticker IS NOT NULL AND ISIN IS NOT NULL AND TotCurrNoLstdBrd IS NOT NULL AND TotCurrNoOthLstdBrd IS NOT NULL AND TotCurrNoUnLstdBrd IS NOT NULL AND Annual_Report_Date_Full IS NOT NULL AND TotNoLstdBrd IS NOT NULL AND TotNoOthLstdBrd IS NOT NULL AND TotNoUnLstdBrd IS NOT NULL AND LTIPValue IS NOT NULL AND ValTotEqHeld IS NOT NULL AND Salary IS NOT NULL AND NumberDirectors IS NOT NULL AND TotalCompensation IS NOT NULL AND TotalDirectComp IS NOT NULL AND ValLTIPHeld IS NOT NULL ;;
  }

  dimension_group: annual_report_date_full {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Annual_Report_Date_Full ;;
  }

  dimension: attrition {
    description: "Number of Directors that have left a role as a proportion of average number of Directors for the preceding reporting period at the Annual Report Date selected"
    type: number
    sql: ${TABLE}.Attrition ;;
  }

  dimension: avg_time_oth_co {
    label: "Average Time in Other Companies"
    description: "The Average Time that a Director sits on the Board of Quoted Companies"
    type: number
    sql: ${TABLE}.AvgTimeOthCo ;;
  }
  dimension: board_id {
    type: string
    label: "Company ID"
    sql: ${TABLE}.BoardID ;;
    group_label: "Company Info"
  }

  dimension: board_name {
    type: string
    label: "Company Name"
    sql: ${TABLE}.BoardName ;;
    group_label: "Company Info"
  }

  # dimension: bonus {
  #   type: number
  #   sql: ${TABLE}.Bonus ;;
  #   group_label: "Bonus Info"
  # }

  # dimension: bonus_ratio {
  #   type: number
  #   sql: ${TABLE}.BonusRatio ;;
  #   group_label: "Bonus Info"
  # }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: director_id {
    type: string
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
    description: "Ratio Equity Linked Compensation as a proportion of total compensation for the individual based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.EqLinkRemRatio ;;
  }

  dimension: est_val_opt_award {
    type: number
    label: "Estimated Value of Options Awarded"
    description: "in Last Year (in 000s) A valuation of Options awarded during the period based on the closing stock price of the Annual Report Date selected"
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
    description: "The proportion of male directors at the Annual Report Date selected"
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

  # dimension: int_val_opt_held {
  #   type: number
  #   label: "Intrinsic Value of Options Held"
  #   sql: ${TABLE}.IntValOptHeld ;;
  #   group_label: "Intrinsic Value of Options"
  # }

  # dimension: intr_val_opt_award {
  #   type: number
  #   label: "Intrinsic Value of Options Awarded"
  #   sql: ${TABLE}.IntrValOptAward ;;
  #   group_label: "Intrinsic Value of Options"
  # }

  dimension: isin {
    label: "Company_ISIN"
    type: string
    sql: ${TABLE}.ISIN ;;
    group_label: "Company Info"
  }

  dimension: ltipvalue {
    type: number
    label: "Value of LTIP Awarded"
    description: "Value of LTIPs awarded during the period based on the closing stock price of the Annual Report Date selected "
    sql: ${TABLE}.LTIPValue ;;
  }

  dimension: nationality_mix {
    type: number
    description: "Proportion of Directors from different countries at the Annual Report Date selected"
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
    label: "Individual Network Size"
    description: "Network size of selected indivdual (number of overlaps through employment, other activities, and education)"
    sql: ${TABLE}.NetworkSize ;;
  }

  dimension: no_quals {
    type: number
    label: "Number of Qualifications"
    description: "The average number of qualifications at undergraduate level and and above forall the Directors at the Annual Report Date selected"
    sql: ${TABLE}.NoQuals ;;
  }

  dimension: number_directors {
    type: number
    label: "Number of Directors on Board"
    sql: ${TABLE}.NumberDirectors ;;
  }

  dimension: other {
    type: number
    description: "(in 000s) Value of annual ad hoc cash payments such as relocation or fringe benefits awarded during the period"
    sql: ${TABLE}.Other ;;
  }

  dimension: pen_emp_con {
    type: number
    label: "Employers Defined Contribution"
    description: "for each Director (in 000s) Employers Defined Retirement/Pension Contribution for each Director in a report period"
    sql: ${TABLE}.PenEmpCon ;;
  }

  dimension: perf_total {
    type: number
    label: "LTIP Value / Total Awards for the Period"
    description: "Performance to total - Ratio of Value of LTIPs Held to Total Compensation for the period"
    sql: ${TABLE}.PerfTotal ;;
  }

  dimension: rem_chge_last {
    type: number
    label: "Remuneration Change since Last R&A"
    description: "Percentage change in total compensation from the previous report period for the individual"
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
    description: "(in 000s) Base annual pay in cash for each Director in a report period"
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
    description: "Measurement of the Clustering of Directors around retirement age at the Annual Report Date selected"
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
    description: "Time in Company for the individual at a selected Annual Report Date"
    label: "Time in Company"
    sql: ${TABLE}.TimeInCo ;;
  }

  dimension: time_retirement {
    type: number
    description: "Time to Retirement for the individual at a selected Annual Report Date assuming a retirement age of 70"
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
    description: "Total stock (ValEqAward), option (EstValOptAward) and LTIP (LTIPValue) awards based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.TotEqAtRisk ;;
  }

  dimension: tot_eq_linked_wlth {
    type: number
    label: "Total Value of Equity Linked Wealth"
    description: "A valuation of Total Wealth at the end of the period for the individual based on the closing stock price of the Annual Report Date selected 4"
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
    description: "(in 000s) Total awards for the period"
    label: "Total Awards for the Remuneration Period"
    sql: ${TABLE}.TotRemPeriod ;;
  }

  dimension: total_compensation {
    type: number
    description: "(in 000s) Salary plus Bonus"
    group_label: "Compensation"
    sql: ${TABLE}.TotalCompensation ;;
  }

  dimension: total_direct_comp {
    type: number
    group_label: "Compensation"
    label: "Total Direct Compensation"
    description: "n (000s) (Salary+Bonus+Other+PenEmpCont) Total Direct Compensation equals Salary plus Bonus plus Other Compensation plus Employers Devined Retirement/Pension Contribution for the period"
    sql: ${TABLE}.TotalDirectComp ;;
  }

  # dimension: val_eq_award {
  #   type: number
  #   label: "Value of Equity Awarded in last year"
  #   description: "Value of shares awarded during the period based on the closing stock price of the Annual Report Date selected "
  #   sql: ${TABLE}.ValEqAward ;;
  # }

  dimension: val_ltipheld {
    type: number
    label: "Value of Long Term Incentive Plans Held"
    description: "Value of LTIPs held at the end of the report for the individual based on the closing stock price of the Annual Report Date selected 1"
    sql: ${TABLE}.ValLTIPHeld ;;
  }

  dimension: val_tot_eq_held {
    type: number
    label: "Value of Total Equity Held"
    description: " (in 000s) Value of shares held at the end of the reporting period for the individual based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.ValTotEqHeld ;;
  }

  dimension: wealth_delta {
    type: number
    label: "WealthDelta"
    description: "(in 000s) Change in wealth in the company (Total Equity Linked Wealth) for each 1% change in the stock price at the Annual Report Date selected for the individual"
    sql: ${TABLE}.WealthDelta ;;
  }

######################################################################################


  measure: count {
    type: count
    drill_fields: [hocountry_name, role_name, director_name, board_name]
  }

  dimension: attrition_ {
    description: "Number of Directors that have left a role as a proportion of average number of Directors for the preceding reporting period at the Annual Report Date selected"
    type: number
    sql: ${TABLE}.Attrition ;;
  }


  dimension: avg_time_oth_co_ {
    label: "Average Time in Other Companies"
    description: "The Average Time that a Director sits on the Board of Quoted Companies"
    type: number
    sql: ${TABLE}.AvgTimeOthCo ;;
  }

  dimension: eq_link_rem_ratio_ {
    type: number
    label: "Equity Linked Remuneration Ratio"
    description: "Ratio Equity Linked Compensation as a proportion of total compensation for the individual based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.EqLinkRemRatio ;;
  }

  dimension: est_val_opt_award_ {
    type: number
    label: "Estimated Value of Options Awarded"
    description: "in Last Year (in 000s) A valuation of Options awarded during the period based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.EstValOptAward ;;
    group_label: "Estimated Value of Options"
  }

  dimension: est_val_opt_held_ {
    type: number
    label: "Estimated Value of Options Held"
    sql: ${TABLE}.EstValOptHeld ;;
    group_label: "Estimated Value of Options"
  }

  dimension: gender_ratio_ {
    type: number
    description: "The proportion of male directors at the Annual Report Date selected"
    sql: ${TABLE}.GenderRatio ;;
  }

  dimension: ltipvalue_ {
    type: number
    label: "Value of LTIP Awarded"
    description: "Value of LTIPs awarded during the period based on the closing stock price of the Annual Report Date selected "
    sql: ${TABLE}.LTIPValue ;;
  }

  dimension: nationality_mix_ {
    type: number
    description: "Proportion of Directors from different countries at the Annual Report Date selected"
    sql: ${TABLE}.NationalityMix ;;
  }


  dimension: network_size_ {
    type: number
    label: "Individual Network Size"
    description: "Network size of selected indivdual (number of overlaps through employment, other activities, and education)"
    sql: ${TABLE}.NetworkSize ;;
  }

  dimension: no_quals_ {
    type: number
    label: "Number of Qualifications"
    description: "The average number of qualifications at undergraduate level and and above forall the Directors at the Annual Report Date selected"
    sql: ${TABLE}.NoQuals ;;
  }

  dimension: number_directors_ {
    type: number
    label: "Number of Directors on Board"
    sql: ${TABLE}.NumberDirectors ;;
  }

  dimension: other_ {
    type: number
    description: "(in 000s) Value of annual ad hoc cash payments such as relocation or fringe benefits awarded during the period"
    sql: ${TABLE}.Other ;;
  }

  dimension: pen_emp_con_ {
    type: number
    label: "Employers Defined Contribution"
    description: "for each Director (in 000s) Employers Defined Retirement/Pension Contribution for each Director in a report period"
    sql: ${TABLE}.PenEmpCon ;;
  }

  dimension: perf_total_ {
    type: number
    label: "LTIP Value / Total Awards for the Period"
    description: "Performance to total - Ratio of Value of LTIPs Held to Total Compensation for the period"
    sql: ${TABLE}.PerfTotal ;;
  }

  dimension: rem_chge_last_ {
    type: number
    label: "Remuneration Change since Last R&A"
    description: "Percentage change in total compensation from the previous report period for the individual"
    sql: ${TABLE}.RemChgeLast ;;
  }


  dimension: salary_ {
    type: number
    description: "(in 000s) Base annual pay in cash for each Director in a report period"
    sql: ${TABLE}.Salary ;;
  }


  dimension: stdevage_ {
    type: number
    label: "SD of Age"
    sql: ${TABLE}.STDEVAge ;;
    group_label: "Standard Deviation"
  }

  dimension: stdevno_quals_ {
    type: number
    label: "SD of Total Number of Qualifications"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVNoQuals ;;
  }

  dimension: stdevtime_brd_ {
    type: number
    label: "SD of Time on Board"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTimeBrd ;;
  }

  dimension: stdevtime_in_co_ {
    type: number
    label: "SD of Time in Company"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTimeInCo ;;
  }

  dimension: stdevtot_curr_no_lstd_brd_{
    type: number
    label: "SD of Total Number of Current Listed Boards sat on"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTotCurrNoLstdBrd ;;
  }

  dimension: stdevtot_no_lstd_brd_ {
    type: number
    label: "SD of Total Number of Listed Boards sat on"
    group_label: "Standard Deviation"
    sql: ${TABLE}.STDEVTotNoLstdBrd ;;
  }

  dimension: succession_rate{
    type: number
    description: "Measurement of the Clustering of Directors around retirement age at the Annual Report Date selected"
    sql: ${TABLE}.Succession ;;
  }


  dimension: time_brd_ {
    type: number
    label: "Time on Board"
    sql: ${TABLE}.TimeBrd ;;
  }

  dimension: time_in_co_ {
    type: number
    description: "Time in Company for the individual at a selected Annual Report Date"
    label: "Time in Company"
    sql: ${TABLE}.TimeInCo ;;
  }

  dimension: time_retirement_ {
    type: number
    description: "Time to Retirement for the individual at a selected Annual Report Date assuming a retirement age of 70"
    label: "Time to Retirement"
    sql: ${TABLE}.TimeRetirement ;;
  }

  dimension: time_role_ {
    type: number
    label: "Time in Role"
    sql: ${TABLE}.TimeRole ;;
  }

  dimension: tot_curr_no_lstd_brd_ {
    type: number
    label: "Listed Boards"
    group_label: "Total Current Number of Boards sitting on"
    sql: ${TABLE}.TotCurrNoLstdBrd ;;
  }

  dimension: tot_curr_no_oth_lstd_brd_ {
    type: number
    label: "Other Boards"
    group_label: "Total Current Number of Boards sitting on"
    sql: ${TABLE}.TotCurrNoOthLstdBrd ;;
  }

  dimension: tot_curr_no_un_lstd_brd_ {
    type: number
    label: "Unlisted Boards"
    group_label: "Total Current Number of Boards sitting on"
    sql: ${TABLE}.TotCurrNoUnLstdBrd ;;
  }

  dimension: tot_eq_at_risk_ {
    type: number
    label: "Total Stock, Option, and LTIP Awards"
    description: "Total stock (ValEqAward), option (EstValOptAward) and LTIP (LTIPValue) awards based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.TotEqAtRisk ;;
  }

  dimension: tot_eq_linked_wlth_ {
    type: number
    label: "Total Value of Equity Linked Wealth"
    description: "A valuation of Total Wealth at the end of the period for the individual based on the closing stock price of the Annual Report Date selected 4"
    sql: ${TABLE}.TotEqLinkedWlth ;;
  }

  dimension: tot_no_lstd_brd_ {
    type: number
    label: "Listed Boards"
    group_label: "Total Number of Boards sat on"
    sql: ${TABLE}.TotNoLstdBrd ;;
  }

  dimension: tot_no_oth_lstd_brd_ {
    type: number
    label: "Other Boards"
    group_label: "Total Number of Boards sat on"
    sql: ${TABLE}.TotNoOthLstdBrd ;;
  }

  dimension: tot_no_un_lstd_brd_ {
    type: number
    label: "Unlisted Boards"
    group_label: "Total Number of Boards sat on"
    sql: ${TABLE}.TotNoUnLstdBrd ;;
  }

  dimension: tot_rem_period_ {
    type: number
    description: "(in 000s) Total awards for the period"
    label: "Total Awards for the Remuneration Period"
    sql: ${TABLE}.TotRemPeriod ;;
  }

  dimension: total_compensation_ {
    type: number
    description: "(in 000s) Salary plus Bonus"
    group_label: "Compensation"
    sql: ${TABLE}.TotalCompensation ;;
  }

  dimension: total_direct_comp_ {
    type: number
    group_label: "Compensation"
    label: "Total Direct Compensation"
    description: "n (000s) (Salary+Bonus+Other+PenEmpCont) Total Direct Compensation equals Salary plus Bonus plus Other Compensation plus Employers Devined Retirement/Pension Contribution for the period"
    sql: ${TABLE}.TotalDirectComp ;;
  }


  dimension: val_ltipheld_ {
    type: number
    label: "Value of Long Term Incentive Plans Held"
    description: "Value of LTIPs held at the end of the report for the individual based on the closing stock price of the Annual Report Date selected 1"
    sql: ${TABLE}.ValLTIPHeld ;;
  }

  dimension: val_tot_eq_held_ {
    type: number
    label: "Value of Total Equity Held"
    description: " (in 000s) Value of shares held at the end of the reporting period for the individual based on the closing stock price of the Annual Report Date selected"
    sql: ${TABLE}.ValTotEqHeld ;;
  }

  dimension: wealth_delta_ {
    type: number
    label: "WealthDelta"
    description: "(in 000s) Change in wealth in the company (Total Equity Linked Wealth) for each 1% change in the stock price at the Annual Report Date selected for the individual"
    sql: ${TABLE}.WealthDelta ;;
  }

}
