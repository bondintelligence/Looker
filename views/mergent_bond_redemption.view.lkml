view: mergent_bond_redemption {
  # sql_table_name: `bi-model-development.looker_FINAL.Mergent_Bond_Redemption`
  # ;;

  derived_table: {
    sql: SELECT * FROM `bi-model-development.looker_FINAL.Mergent_Bond_Redemption`
    WHERE complete_cusip IS NOT NULL AND
    make_whole_start_date IS NOT NULL AND
    make_whole_end_date IS NOT NULL AND
    make_whole_spread IS NOT NULL AND
    maint_replac IS NOT NULL AND
    sinking_fund IS NOT NULL AND
    callable IS NOT NULL AND
    call_frequency IS NOT NULL AND
    next_sf_date IS NOT NULL AND
    next_sf_price IS NOT NULL AND
    next_sf_amount IS NOT NULL AND
    sudden_death_par IS NOT NULL AND
    sudden_death_premium IS NOT NULL AND
    ipo_clawback IS NOT NULL AND
    discrete_call IS NOT NULL AND
    call_in_whole IS NOT NULL AND
    index_redemption IS NOT NULL AND
    issue_name IS NOT NULL AND
    issue_id IS NOT NULL AND
    prospectus_issuer_name IS NOT NULL AND
    issuer_id IS NOT NULL AND
    offering_date IS NOT NULL;;
  }

  # dimension: accel_opt_info {
  #   type: string
  #   label: "Accerlation_Option_Info"
  #   group_label: "Sinking Fund"
  #   description: "Provides commentary on the acceleration option associated with the issue's sinking fund."
  #   sql: ${TABLE}.ACCEL_OPT_INFO ;;
  # }

  # dimension: action_type {
  #   type: string
  #   description: "A four-letter code representing the type of action that took place to change the amount outstanding."
  #   sql: ${TABLE}.ACTION_TYPE ;;
  # }

  # dimension: call_amount {
  #   type: number
  #   sql: ${TABLE}.CALL_AMOUNT ;;
  # }

  # dimension_group: call_date {
  #   type: time
  #   label: "Call"
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: REPLACE(${TABLE}.CALL_DATE, "/", "-");;
  # }

  dimension: call_frequency {
    type: string
    sql: ${TABLE}.CALL_FREQUENCY ;;
    case: {
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "A"  ;;
        label: "Annual"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "C"  ;;
        label: "Continuously"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "D"  ;;
        label: "Every 3 Years"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "E"  ;;
        label: "Every 5 Years"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "F"  ;;
        label: "Every 2 Years"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "G"  ;;
        label: "Daily"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "H"  ;;
        label: "Every 4 Years"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "M"  ;;
        label: "Monthly"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "N"  ;;
        label: "Other"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "O"  ;;
        label: "Once"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "Q"  ;;
        label: "Quarterly"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "S"  ;;
        label: "Semi-Annual"
      }
      when: {
        sql:${TABLE}.CALL_FREQUENCY = "T"  ;;
        label: "Twice"
      }
    }
  }

  dimension: call_in_whole {
    type: string
    description: "A flag indicating whether an issue is callable only as a whole but not in part"
    sql: ${TABLE}.CALL_IN_WHOLE ;;
  }

  # dimension: call_notice_days {
  #   type: number
  #   description: "Represents the number of days which the holder of a bond must be notified in advance of a redemption by the issuing company."
  #   sql: ${TABLE}.CALL_NOTICE_DAYS ;;
  # }

  # dimension: call_price {
  #   type: number
  #   sql: ${TABLE}.CALL_PRICE ;;
  # }

  dimension: callable {
    type: string
    sql: ${TABLE}.CALLABLE ;;
  }

  dimension: complete_cusip {
    type: string
    label: "Complete CUSIP"
    primary_key: yes
    sql: ${TABLE}.COMPLETE_CUSIP ;;
  }

  dimension: discrete_call {
    type: string
    sql: ${TABLE}.DISCRETE_CALL ;;
  }

  dimension: index_redemption {
    type: string
    description: "A flag indicating whether an issue is subject to redemption."
    sql: ${TABLE}.INDEX_REDEMPTION ;;
  }

  # dimension: initial_call_data {
  #   type: string
  #   sql: ${TABLE}.INITIAL_CALL_DATA ;;
  # }

  dimension: ipo_clawback {
    type: string
    label: "IPO Clawback"
    description: "PO_CLAWBACK, lists the provisions applicable if the issuer has the right to call the issue with the proceeds of an initial or subsequent stock offering."
    sql: ${TABLE}.IPO_CLAWBACK ;;
  }

  # dimension: issue_cusip {
  #   type: string
  #   label: "Issue CUSIP"
  #   sql: ${TABLE}.ISSUE_CUSIP ;;
  # }

  dimension: issue_id {
    type: number
    sql: ${TABLE}.ISSUE_ID ;;
  }

  dimension: issue_name {
    type: string
    sql: ${TABLE}.ISSUE_NAME ;;
  }

  # dimension: issuer_cusip {
  #   type: string
  #   label: "Issuer CUSIP"
  #   sql: ${TABLE}.ISSUER_CUSIP ;;
  # }

  dimension: issuer_id {
    type: number
    sql: ${TABLE}.ISSUER_ID ;;
  }

  dimension: maint_replac {
    type: string
    label: "maintenance_and_replacement"
    group_label: "maintenance_and_replacement"
    description: "lists the details of the issue's maintenance and replacement (M&R) fund requirements. An M&R fund is used to assure that mortgaged property is kept in good operating condition. Electric utility bond indentures usually require that a certain percentage of gross operating revenues, a percentage of the aggregate bonded indebtedness, or a percentage of the utility's property account be paid to the trustee for the M&R fund. A major portion of the M&R requirement is usually satisfied with normal maintenance expenditures. To the extent that there is an additional requirement, the company may contribute cash, the pledge of unbonded property additions, or bonds."
    sql: ${TABLE}.MAINT_REPLAC ;;
  }

  dimension: make_whole {
    type: string
    description: "A flag indicating that a premium could be paid if the bond where to be called for redemption."
    sql: ${TABLE}.MAKE_WHOLE ;;
  }

  dimension_group: make_whole_end_date {
    label: "Make Whole End"
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
    convert_tz: yes
    datatype: date
    description: "The date on which a make whole call option (if applicable) will expire."
    sql: REPLACE(${TABLE}.MAKE_WHOLE_END_DATE, "/", "-");;
  }

  dimension: make_whole_spread {
    type: string
    description: "If applicable, the spread above a comparable treasury issue that will have to be paid if the make whole call option is exercised or pertinent information"
    sql: ${TABLE}.MAKE_WHOLE_SPREAD ;;
  }

  dimension_group: make_whole_start_date {
    label: "Make Whole Start"
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
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MAKE_WHOLE_START_DATE, "/", "-");;
  }

  # dimension_group: maturity {
  #   type: time
  #   label: "Maturity"
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: REPLACE(${TABLE}.MATURITY, "/", "-");;
  # }

  # dimension_group: mr_date {
  #   type: time
  #   label: "m&r_Date"
  #   group_label: "maintenance_and_replacement"
  #   description: "Date on which bonds may be called using money in the maintenance and replacement fund."
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: REPLACE(${TABLE}.MR_DATE, "/", "-");;
  # }

  # dimension: mr_price {
  #   type: number
  #   label: "m&r_Price"
  #   group_label: "maintenance_and_replacement"
  #   description: "The price at which bonds may be called where funded by moneys in the maintenance and replacement fund."
  #   sql: ${TABLE}.MR_PRICE ;;
  # }

  # dimension_group: next_call_date {
  #   description: "The next date on which a call for redemption by the issuer would become effective."
  #   label: "Next Call"
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     day_of_week,
  #     day_of_month,
  #     month_name,
  #     year
  #   ]
  #   convert_tz: yes
  #   datatype: date
  #   sql: REPLACE(${TABLE}.NEXT_CALL_DATE, "/", "-");;
  # }

  # dimension: next_call_price {
  #   label: "Redemption"
  #   type: number
  #   sql: ${TABLE}.NEXT_CALL_PRICE ;;
  # }

  dimension: next_sf_amount {
    type: number
    label: "Next Sinking Fund Amount"
    group_label: "Sinking Fund"
    description: "The dollar amount of the issue (in $000’s) that will be redeemed on the next_sf_date (unless skipped)."
    sql: ${TABLE}.NEXT_SF_AMOUNT ;;
  }

  dimension_group: next_sf_date {
    type: time
    label: "Sinking Fund Next"
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
    convert_tz: yes
    datatype: date
    group_label: "Sinking Fund"
    sql: REPLACE(${TABLE}.NEXT_SF_DATE, "/", "-");;
  }

  dimension: next_sf_price {
    type: number
    label: "Next Sinking Fund Price"
    group_label: "Sinking Fund"
    sql: ${TABLE}.NEXT_SF_PRICE ;;
  }

  # dimension: next_sf_skip {
  #   type: string
  #   label: "Next Sinking Fund Skip"
  #   group_label: "Sinking Fund"
  #   description: "A flag indicating that the sinking fund payment for the next_sf_date is going to be skipped."
  #   sql: ${TABLE}.NEXT_SF_SKIP ;;
  # }

  dimension_group: offering_date {
    label: "Issue Offering"
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
    sql: CONCAT(SUBSTRING(${TABLE}.OFFERING_DATE, 1, 4),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 5, 2),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 7, 2));;
  }



  dimension: prospectus_issuer_name {
    type: string
    label: "Issuer Name"
    sql: ${TABLE}.PROSPECTUS_ISSUER_NAME ;;
  }

  # dimension: sf_accel_pct {
  #   type: number
  #   label: "Sinking Fund Acceleration Pct"
  #   group_label: "Sinking Fund"
  #   description: "A field indicating by how much (in percent) the issuer can increase a sinking fund payment."
  #   sql: ${TABLE}.SF_ACCEL_PCT ;;
  # }

  dimension: sinking_fund {
    type: string
    group_label: "Sinking Fund"
    sql: ${TABLE}.SINKING_FUND ;;
  }

  dimension: sudden_death_par {
    type: string
    description: "A flag denoting that the issuer has the right to call the issue at par under certain conditions not specified by the normal call schedule. Sudden death calls are triggered when tax laws are changed (Yankee issues), an asset is sold (asset backed issue), or other extraordinary events occur."
    sql: ${TABLE}.SUDDEN_DEATH_PAR ;;
  }

  dimension: sudden_death_premium {
    type: string
    description: "A flag denoting the issuer has the right to call the issue at a premium under certain conditions not specified by the normal call schedule. Sudden death calls are"
    sql: ${TABLE}.SUDDEN_DEATH_PREMIUM ;;
  }

  measure: count {
    type: count
    drill_fields: [prospectus_issuer_name, issue_name]
  }


}
