view: trace_enhanced {
  derived_table: {
    sql: SELECT * FROM `bi-model-development.looker_FINAL.TRACE_Enhanced`
          WHERE company_symbol IS NOT NULL
          AND (cntra_mp_id = "C" OR cntra_mp_id = "D")
          AND cusip_id IS NOT NULL
          AND yld_pt IS NOT NULL
            ;;

  }

  dimension: cusip_id {
    type: string
    description: "Unique identifier assigned to each bond by Standard & Poor’s CUSIP Service Bureau."
    label: "CUSIP"
    primary_key: yes
    sql: ${TABLE}.cusip_id ;;
  }

  dimension: bond_sym_id {
    type: string
    description: "Unique FINRA identifier assigned to each issue."
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
    description: "This field represents the date and the time that the trade was executed."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year,
      hour,
      minute,
      second
    ]
    label: "Execution"
    sql: CAST(CONCAT(${TABLE}.trd_exctn_dt, " ", ${TABLE}.trd_exctn_tm) AS DATETIME) ;;
    datatype: datetime
    convert_tz: no
  }

  dimension_group: trd_rpt_dt {
    type: time
    description: "This field represents the date and the time that the trade was reported to TRACE."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    label: "Report"
    sql: CAST(CONCAT(${TABLE}.trd_rpt_dt, " ", ${TABLE}.trd_rpt_tm) AS DATETIME) ;;
    datatype: datetime
    convert_tz: no
  }

  dimension: msg_seq_nb {
    type: string
    description: "Seven digit identifier. Abbreviated Control Number where last 7 digits are used."
    label: "Message Sequence Number"
    sql: ${TABLE}.msg_seq_nb ;;
  }

  dimension: trc_st {
    type: string
    description: "The type of report."
    label: "Trade Status"
    case: {
      when: {
        sql: ${TABLE}.trc_st = "T" ;;
        label: "Trade Report"
      }
      when: {
        sql: ${TABLE}.trc_st = "X" ;;
        label: "Trade Cancel"
      }
      when: {
        sql: ${TABLE}.trc_st = "C" ;;
        label: "Cancelled Correction"
      }
      when: {
        sql: ${TABLE}.trc_st = "R" ;;
        label: "New Correction"
      }
      when: {
        sql: ${TABLE}.trc_st = "Y" ;;
        label: "Reversal (a transaction that has been reverse more than 20 days after it was input)"
      }
    }
  }

  # dimension: scrty_type_cd {
  #   type: string
  #   description: "Identifies the type of security reported in the trade."
  #   label: "Security Type"
  #   case: {
  #     when: {
  #       sql: ${TABLE}.scrty_type_cd = "C" ;;
  #       label: "Corporate Bond"
  #     }
  #     when: {
  #       sql: ${TABLE}.scrty_type_cd = "E" ;;
  #       label: "Equity Linked Note"
  #     }
  #   }
  #   sql: ${TABLE}.scrty_type_cd ;;
  # }

  # dimension: wis_fl {
  #   type: string
  #   description: "Indicates if the bond was traded on a ‘When Issued’ basis."
  #   label: "When Issued Indicator"
  #   sql: ${TABLE}.wis_fl ;;
  # }

  # dimension: cmsn_trd {
  #   type: string
  #   description: "Indicates if the reported price is inclusive of dealer commission."
  #   label: "Commission Indicator"
  #   sql: ${TABLE}.cmsn_trd ;;
  # }

  dimension: entrd_vol_qt {
    type: number
    description: "The uncapped par value volume reported on the trade. May include a decimal, if entered (for mixed-lot and baby bond trades)."
    label: "Quantity (Entered Quantity in par value amount)"
    sql: ${TABLE}.entrd_vol_qt ;;
  }

  dimension: rptd_pr {
    type: number
    description: "This field represents the reported bond price. Is inclusive of any mark-ups, and/or mark-downs reported by the rm in the trade transaction. It is in percentage of the par value."
    label: "Price"
    value_format: "$#,##0.00"
    sql: ${TABLE}.rptd_pr ;;
  }

  dimension: yld_sign_cd {
    type: string
    description: "This field indicates the yield direction for the subsequent Yield field."
    label: "Yield Direction"
    case: {
      when: {
        sql: ${TABLE}.yld_sign_cd = "-" ;;
        label: "-"
      }
      else: "+"
    }
  }

  dimension: yld_pt {
    type: number
    description: "This field indicates the efective rate of return earned on a security, expressed as a percentage. The field will be blank if no yield is available. Yield as calculated by FINRA."
    label: "Yield"
    value_format: "0.00\%"
    sql: ${TABLE}.yld_pt;;
    }
          # CASE
          # WHEN ${TABLE}.yld_sign_cd = "-" THEN -1 * CAST(${TABLE}.yld_pt AS FLOAT64)
          # ELSE CAST(${TABLE}.yld_pt AS FLOAT64)
          # END;;


  dimension: asof_cd {
    type: string
    description: "This field indicates if the transaction being reported is an As/Of trade or Reversal from a prior business day."
    label: "As Of Indicator"
    case: {
      when: {
        sql: ${TABLE}.asof_cd = "A" ;;
        label: "As-of"
      }
      when: {
        sql: ${TABLE}.asof_cd = "R" ;;
        label: "Reversal"
      }
      else: "Regular Trade"
    }
  }

  # dimension: days_to_sttl_ct {
  #   type: string
  #   description: "Used when Sale Condition = ‘R’, this field will represent the number of days to settlement associated with the transaction. Otherwise, the field will contain the value ‘N/A’."
  #   label: "Seller Sales Day"
  #   sql: ${TABLE}.days_to_sttl_ct ;;
  # }

  # dimension: sale_cndtn_cd {
  #   type: string
  #   description: "This field will indicate if there are any special conditions or modifiers applicable to the trade transaction, using alphanumeric or special characters."
  #   label: "Sale Condition"
  #   case: {
  #     when: {
  #       sql: ${TABLE}.sale_cndtn_cd = "A" ;;
  #       label: "Trades Reported Outside Market Hours"
  #     }
  #     when: {
  #       sql: ${TABLE}.sale_cndtn_cd = "C" ;;
  #       label: "Cash Sale"
  #     }
  #     when: {
  #       sql: ${TABLE}.sale_cndtn_cd = "N" ;;
  #       label: "Next Day Settlement"
  #     }
  #     when: {
  #       sql: ${TABLE}.sale_cndtn_cd = "R" ;;
  #       label: "Sellers Option Settlement"
  #     }
  #     when: {
  #       sql: ${TABLE}.sale_cndtn_cd = "W" ;;
  #       label: "Weighted Average Price"
  #     }
  #     when: {
  #       sql: ${TABLE}.sale_cndtn_cd = "Z" ;;
  #       label: "Sold Out of Sequence (Reported Late)"
  #     }
  #     else: "Regular Trade"
  #   }
  # }

  # dimension: sale_cndtn2_cd {
  #   type: string
  #   description: "This field is used to describe a second sale condition that is applicable to the trade."
  #   label: "Second Modifier"
  #   case: {
  #     when: {
  #       sql: ${TABLE}.sale_cndtn2_cd = "A" ;;
  #       label: "Trades Reported Outside Market Hours"
  #     }
  #     when: {
  #       sql: ${TABLE}.sale_cndtn2_cd = "Z" ;;
  #       label: "Sold Out of Sequence (Reported Late)"
  #     }
  #     else: "Single or No Modifiers on Trade"
  #   }
  # }

  dimension: rpt_side_cd {
    type: string
    description: "This field is used to identify whether the reported trade is a buy or sell."
    label: "Buy/Sell Indicator"
    sql: ${TABLE}.rpt_side_cd ;;
  }

  dimension: buy_cmsn_rt {
    type: number
    description: "Represents the commission rate charged by the buyer, if applicable. Reported as dollar amount."
    label: "Buyers Commission"
    sql: ${TABLE}.buy_cmsn_rt ;;
  }

  dimension: buy_cpcty_cd {
    type: string
    description: "Represents the capacity reported by the buyer."
    label: "Buyer Capacity"
    case: {
      when: {
        sql: ${TABLE}.buy_cpcty_cd = "A" ;;
        label: "Agency"
      }
      when: {
        sql: ${TABLE}.buy_cpcty_cd = "P" ;;
        label: "Principal"
      }
      else: "N/A"
    }
  }

  dimension: sell_cmsn_rt {
    type: number
    description: "Represents the commission rate charged by the seller, if applicable. Reported as dollar amount."
    label: "Seller Commission"
    sql: ${TABLE}.sell_cmsn_rt ;;
  }

  dimension: sell_cpcty_cd {
    type: string
    description: "Represents the capacity reported by the seller."
    label: "Seller Capacity"
    case: {
      when: {
        sql: ${TABLE}.sell_cpcty_cd = "A" ;;
        label: "Agency"
      }
      when: {
        sql: ${TABLE}.sell_cpcty_cd = "P" ;;
        label: "Principal"
      }
      else: "N/A"
    }
  }

  dimension: cntra_mp_id {
    type: string
    description: "Identies the type of trade based on the contra party reported."
    label: "Contra Party Indicator"
    case: {
      when: {
        sql: ${TABLE}.cntra_mp_id = "C" ;;
        label: "Customer Trade"
      }
      when: {
        sql: ${TABLE}.cntra_mp_id = "D" ;;
        label: "Inter Dealer Trade"
      }
    }
    sql: ${TABLE}.cntra_mp_id ;;
  }

  # dimension: agu_qsr_id {
  #   type: string
  #   description: "This field indicates whether the trade is an AGU (Automatic Give Up) or QSR (Qualified Service Representative) trade, or a regular trade."
  #   label: "AGU Indicator"
  #   case: {
  #     when: {
  #       sql: ${TABLE}.agu_qsr_id = "A" ;;
  #       label: "AGU Trade"
  #     }
  #     when: {
  #       sql: ${TABLE}.agu_qsr_id = "Q" ;;
  #       label: "QSR Trade"
  #     }
  #     else: "Regular (non-AGU/non-QSR) Trade"
  #   }
  # }

  dimension: spcl_trd_fl {
    type: string
    description: "This field indicates the existence of a special trade condition (as defined in FINRA Rule 6730(d)(4)(A)) that impacted the execution price."
    label: "Special Price Indicator"
    case: {
      when: {
        sql: ${TABLE}.spcl_trd_fl = "Y" ;;
        label: "Special Price Trade"
      }
      when: {
        sql: ${TABLE}.spcl_trd_fl = "N" ;;
        label: "Non-Special Price Trade"
      }
    }
    sql: ${TABLE}.spcl_trd_fl ;;
  }

  dimension: trdg_mkt_cd {
    type: string
    description: "This field indicates whether a trade was reported as a secondary market trade or a primary market trade. Trades reported with the S1 trading market indicator are eligible for dissemination. Trades reported with the P1 trading market indicator are not eligible for dissemination and are reportable on a T+1 basis."
    label: "Trading Market Indicator"
    case: {
      when: {
        sql: ${TABLE}.trdg_mkt_cd = "S1" ;;
        label: "Secondary Market Trade or a Primary Market Trade Executed at a Market Price"
      }
      when: {
        sql: ${TABLE}.trdg_mkt_cd = "P1" ;;
        label: "Primary Market Trade That Qualifies as a List or Fixed Offering Price Transaction, or a Takedown Transaction"
      }
    }
    sql: ${TABLE}.trdg_mkt_cd ;;
  }

  dimension: dissem_fl {
    type: string
    description: "Indicates whether the trade was disseminated (via BTDS, or ATDS for Agency Bonds) or not."
    label: "Dissemination Flag"
    sql: ${TABLE}.dissem_fl ;;
  }

  dimension: sub_prdct {
    type: string
    description: "Identies the type of security reported in the trade."
    label: "Sub-Product"
    case: {
      when: {
        sql: ${TABLE}.sub_prdct = "AGCY" ;;
        label: "Agency (in agency file only)"
      }
      when: {
        sql: ${TABLE}.sub_prdct = "CORP" ;;
        label: "Corporates (in corporate file only)"
      }
      when: {
        sql: ${TABLE}.sub_prdct = "CHRC" ;;
        label: "Church Bonds (in corporate file only)"
      }
      when: {
        sql: ${TABLE}.sub_prdct = "ELN" ;;
        label: "Equity Linked Notes (in corporate file only)"
      }
    }
  }

  dimension_group: stlmnt_dt {
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
    label: "Settlement"
    sql: CAST(${TABLE}.stlmnt_dt AS DATE) ;;
    datatype: date
    convert_tz: no
  }

  dimension: trd_mod_3 {
    type: string
    label: "Trade Modifier 3"
    case: {
      when: {
        sql: ${TABLE}.trd_mod_3 = "Z" ;;
        label: "Reported Late"
      }
      when: {
        sql: ${TABLE}.trd_mod_3 = "T" ;;
        label: "Reported After Market Hours"
      }
      when: {
        sql: ${TABLE}.trd_mod_3 = "U" ;;
        label: "Reported Late After-Market Hours"
      }
      else: "N/A"
    }
  }

  dimension: trd_mod_4 {
    type: string
    label: "Trade Modifier 4"
    case: {
      when: {
        sql: ${TABLE}.trd_mod_4 = "W" ;;
        label: "Weighted Avg Price"
      }
      else: "Regular Trade"
    }
  }



  dimension: rptg_party_type {
    type: string
    label: "Reporting Party Type"
    case: {
      when: {
        sql: ${TABLE}.rptg_party_type = "D" ;;
        label: "Broker/Dealer"
      }

        when: {
          sql: ${TABLE}.rptg_party_type = "T" ;;
          label: "Alternative Trading System"
        }
        }
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
    # case: {
    #   when: {
    #     sql: (${TABLE}.ats_indicator IS NULL);;
    #     label: "N"
    #   }
    # }
  }
  dimension_group: first_trade_ctrl_date {
    type: time
    description: "Populated on Cancels, Corrections and Reversals."
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
    label: "First Trade Control"
    sql: CAST(${TABLE}.first_trade_ctrl_date AS DATE) ;;
    datatype: date
    convert_tz: no
  }
  dimension: first_trade_ctrl_num {
    type: string
    description: "Populated on Cancels, Corrections and Reversals."
    label: "First Trade Control Number"
    sql: ${TABLE}.first_trade_ctrl_num ;;
  }

  #######################################################################


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: average_yield {
    type: average
    sql: CAST(${yld_pt} AS FLOAT64);;
    value_format: "0.00"
    label: "Average Yield"
  }


  measure: average_price{
    label: "Average Price"
    sql: CAST(${TABLE}.rptd_pr AS FLOAT64);;
    value_format_name: usd
    type: average
  }


  measure: entrd_vol_qt_ {
    type: number
    description: "The uncapped par value volume reported on the trade. May include a decimal, if entered (for mixed-lot and baby bond trades)."
    label: "Quantity (Entered Quantity in par value amount)"
    sql: ${TABLE}.entrd_vol_qt ;;
  }



  measure: rptd_pr_ {
    type: number
    description: "This field represents the reported bond price. Is inclusive of any mark-ups, and/or mark-downs reported by the rm in the trade transaction. It is in percentage of the par value."
    label: "Price"
    value_format: "$#,##0.00"
    sql: ${TABLE}.rptd_pr ;;
  }



  measure: yld_pt_ {
    type: number
    description: "This field indicates the efective rate of return earned on a security, expressed as a percentage. The field will be blank if no yield is available. Yield as calculated by FINRA."
    label: "Yield"
    value_format: "0.00\%"
    sql: ${TABLE}.yld_pt;;
    }

    measure: buy_cmsn_rt_ {
      type: number
      description: "Represents the commission rate charged by the buyer, if applicable. Reported as dollar amount."
      label: "Buyers Commission"
      sql: ${TABLE}.buy_cmsn_rt ;;
    }




    measure: sell_cmsn_rt_ {
      type: number
      description: "Represents the commission rate charged by the seller, if applicable. Reported as dollar amount."
      label: "Seller Commission"
      sql: ${TABLE}.sell_cmsn_rt ;;
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
      #scrty_type_cd,
      # wis_fl,
      #cmsn_trd,
      entrd_vol_qt,
      rptd_pr,
      # yld_sign_cd,
      yld_pt,
      asof_cd,
      # sale_cndtn_cd,
      # sale_cndtn2_cd,
      # days_to_sttl_ct,
      # sale_cndtn_cd,
      # sale_cndtn2_cd,
      # agu_qsr_id,
      rpt_side_cd,
      buy_cmsn_rt,
      buy_cpcty_cd,
      sell_cmsn_rt,
      sell_cpcty_cd,
      cntra_mp_id,
      spcl_trd_fl,
      trdg_mkt_cd,
      dissem_fl,
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
      first_trade_ctrl_date_date,
      first_trade_ctrl_date_week,
      first_trade_ctrl_date_month,
      first_trade_ctrl_date_quarter,
      first_trade_ctrl_date_year,
      first_trade_ctrl_num
    ]
  }
}
