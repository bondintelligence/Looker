view: mergent_bond_redemption {
  sql_table_name: `bi-model-development.looker_FINAL.Mergent_Bond_Redemption`
    ;;

  dimension: accel_opt_info {
    type: string
    sql: ${TABLE}.ACCEL_OPT_INFO ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.ACTION_TYPE ;;
  }

  dimension: call_amount {
    type: number
    sql: ${TABLE}.CALL_AMOUNT ;;
  }

  dimension_group: call_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.CALL_DATE, "/", "-");;
  }

  dimension: call_frequency {
    type: string
    sql: ${TABLE}.CALL_FREQUENCY ;;
  }

  dimension: call_in_whole {
    type: string
    sql: ${TABLE}.CALL_IN_WHOLE ;;
  }

  dimension: call_notice_days {
    type: number
    sql: ${TABLE}.CALL_NOTICE_DAYS ;;
  }

  dimension: call_price {
    type: number
    sql: ${TABLE}.CALL_PRICE ;;
  }

  dimension: callable {
    type: string
    sql: ${TABLE}.CALLABLE ;;
  }

  dimension: complete_cusip {
    type: string
    label: "Complete CUSIP"
    sql: ${TABLE}.COMPLETE_CUSIP ;;
  }

  dimension: discrete_call {
    type: string
    sql: ${TABLE}.DISCRETE_CALL ;;
  }

  dimension: index_redemption {
    type: string
    sql: ${TABLE}.INDEX_REDEMPTION ;;
  }

  dimension: initial_call_data {
    type: string
    sql: ${TABLE}.INITIAL_CALL_DATA ;;
  }

  dimension: ipo_clawback {
    type: string
    label: "IPO Clawback"
    sql: ${TABLE}.IPO_CLAWBACK ;;
  }

  dimension: issue_cusip {
    type: string
    label: "Issue CUSIP"
    sql: ${TABLE}.ISSUE_CUSIP ;;
  }

  dimension: issue_id {
    type: number
    sql: ${TABLE}.ISSUE_ID ;;
  }

  dimension: issue_name {
    type: string
    sql: ${TABLE}.ISSUE_NAME ;;
  }

  dimension: issuer_cusip {
    type: string
    label: "Issue CUSIP"
    sql: ${TABLE}.ISSUER_CUSIP ;;
  }

  dimension: issuer_id {
    type: number
    sql: ${TABLE}.ISSUER_ID ;;
  }

  dimension: maint_replac {
    type: string
    sql: ${TABLE}.MAINT_REPLAC ;;
  }

  dimension: make_whole {
    type: string
    sql: ${TABLE}.MAKE_WHOLE ;;
  }

  dimension_group: make_whole_end_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MAKE_WHOLE_END_DATE, "/", "-");;
  }

  dimension: make_whole_spread {
    type: string
    sql: ${TABLE}.MAKE_WHOLE_SPREAD ;;
  }

  dimension_group: make_whole_start_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MAKE_WHOLE_START_DATE, "/", "-");;
  }

  dimension_group: maturity {
    type: time
    label: "Maturity Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MATURITY, "/", "-");;
  }

  dimension_group: mr_date {
    type: time
    label: "MR Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.MR_DATE, "/", "-");;
  }

  dimension: mr_price {
    type: number
    label: "MR Price"
    sql: ${TABLE}.MR_PRICE ;;
  }

  dimension_group: next_call_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.NEXT_CALL_DATE, "/", "-");;
  }

  dimension: next_call_price {
    type: number
    sql: ${TABLE}.NEXT_CALL_PRICE ;;
  }

  dimension: next_sf_amount {
    type: number
    label: "Next SF Amount"
    sql: ${TABLE}.NEXT_SF_AMOUNT ;;
  }

  dimension_group: next_sf_date {
    type: time
    label: "Next SF Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: yes
    datatype: date
    sql: REPLACE(${TABLE}.NEXT_SF_DATE, "/", "-");;
  }

  dimension: next_sf_price {
    type: number
    label: "Next SF Price"
    sql: ${TABLE}.NEXT_SF_PRICE ;;
  }

  dimension: next_sf_skip {
    type: string
    label: "Next SF Skip"
    sql: ${TABLE}.NEXT_SF_SKIP ;;
  }

  dimension_group: offering_date {
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
    sql: CONCAT(SUBSTRING(${TABLE}.OFFERING_DATE, 1, 4),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 5, 2),"-",SUBSTRING(${TABLE}.OFFERING_DATE, 7, 2));;
  }




  dimension: prospectus_issuer_name {
    type: string
    label: "Issuer Name"
    sql: ${TABLE}.PROSPECTUS_ISSUER_NAME ;;
  }

  dimension: sf_accel_pct {
    type: number
    label: "SF Accel Pct"
    sql: ${TABLE}.SF_ACCEL_PCT ;;
  }

  dimension: sinking_fund {
    type: string
    sql: ${TABLE}.SINKING_FUND ;;
  }

  dimension: sudden_death_par {
    type: string
    sql: ${TABLE}.SUDDEN_DEATH_PAR ;;
  }

  dimension: sudden_death_premium {
    type: string
    sql: ${TABLE}.SUDDEN_DEATH_PREMIUM ;;
  }

  measure: count {
    type: count
    drill_fields: [prospectus_issuer_name, issue_name]
  }
}
