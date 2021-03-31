view: risk_predicted_corp {
  derived_table: {

    sql: SELECT * FROM ML.PREDICT(MODEL `bi-model-
      development.looker_FINAL.risk_corp_model`,

      (
      SELECT
      OFFERING_DATE, OFFERING_AMT, OFFERING_PRICE, PRINCIPAL_AMT,
      MATURITY,
      COUPON, DATED_DATE, FIRST_INTEREST_DATE, LAST_INTEREST_DATE,
      NCOUPS, T_DVolume, T_Yld_Pt,
      ((CASE WHEN {% parameter Yield_Parameter %} IS NULL THEN ((YIELD *
      POWER(4.16508023e+01, 0.5)) + 5.25625364e+00)
      ELSE {% parameter Yield_Parameter %}
      END) - 5.25625364e+00)/POWER(4.16508023e+01, 0.5) AS YIELD,
      ((CASE WHEN {% parameter Price_EOM_Parameter %} IS NULL THEN ((PRICE_EOM
      * POWER(1.76568368e+02, 0.5)) + 1.04157195e+02)
      ELSE {% parameter Price_EOM_Parameter %}
      END) - 1.04157195e+02)/POWER(1.76568368e+02, 0.5) AS PRICE_EOM,
      ((CASE WHEN {% parameter T_Volume_Parameter %} IS NULL THEN ((T_Volume *
      POWER(1.46914264e+16, 0.5)) + 4.04001929e+07)
      ELSE {% parameter T_Volume_Parameter %}
      END) - 4.04001929e+07)/POWER(1.46914264e+16, 0.5) AS T_Volume,
      ((CASE WHEN {% parameter Duration_Parameter %} IS NULL THEN ((DURATION *
      POWER(1.75036897e+01, 0.5)) + 5.69104413e+00)
      ELSE {% parameter Duration_Parameter %}
      END) - 5.69104413e+00)/POWER(1.75036897e+01, 0.5) AS DURATION,
      ((CASE WHEN {% parameter Amount_Outstanding_Parameter %} IS NULL THEN
      ((AMOUNT_OUTSTANDING * POWER(4.53987950e+09, 0.5)) + 3.88462634e+03)
      ELSE {% parameter Amount_Outstanding_Parameter %}
      END) - 3.88462634e+03)/POWER(4.53987950e+09, 0.5) AS
      AMOUNT_OUTSTANDING,
      GAP, COUPMONTH, COUPAMT, COUPACC, MULTICOUPS, RET_EOM, TMT,
      REMCOUPS, CUSIP
      FROM `bi-model-development.looker_FINAL.risk_corp_dataset`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
      LIMIT 1
      )
      )
      ;;
  }
  parameter: CUSIP_Parameter {
    type: unquoted
  }
  parameter: Yield_Parameter {
    type: number
  }
  parameter: Price_EOM_Parameter {
    type: number
  }
  parameter: T_Volume_Parameter {
    type: number
  }

  parameter: Duration_Parameter {
    type: number
  }
  parameter: Amount_Outstanding_Parameter {
    type: number
  }

  dimension: predicted_class {
    type: number
    hidden: yes
    can_filter: no
    sql: ${TABLE}.predicted_R_FR ;;
  }
# dimension: evaluated_risk {
# type: string
# sql:
# CASE WHEN ${predicted_class} = 4 THEN "Low"
# WHEN ${predicted_class} = 2 OR ${predicted_class} = 3 THEN "Medium"
# WHEN ${predicted_class} = 1 OR ${predicted_class} = 0 THEN "High"
# ELSE NULL END
# ;;
# }
  measure: amount_outstanding {
    type: number
    value_format: "0.###"
    can_filter: no
    sql: ((${TABLE}.AMOUNT_OUTSTANDING * POWER(4.53987950e+09, 0.5)) +
      3.88462634e+03) ;;
  }
  measure: T_Volume {
    type: number
    value_format: "0"
    can_filter: no
    sql: ((${TABLE}.T_Volume * POWER(1.46914264e+16, 0.5)) + 4.04001929e+07) ;;
  }
  measure: Yield {
    type: number
    value_format: "0.###"
    can_filter: no
    sql: ((${TABLE}.YIELD * POWER(4.16508023e+01, 0.5)) + 5.25625364e+00) ;;
  }
  measure: price_EOM {
    type: number
    value_format: "0.#"
    can_filter: no
    sql: ((${TABLE}.PRICE_EOM * POWER(1.76568368e+02, 0.5)) + 1.04157195e+02) ;;
  }
  measure: duration {
    type: number
    value_format: "0.##"
    can_filter: no
    sql: ((${TABLE}.DURATION * POWER(1.75036897e+01, 0.5)) + 5.69104413e+00) ;;
  }
  measure: evaluated_risk {
    type: string
    can_filter: no
    sql:

    CASE WHEN ${predicted_class} = 4 THEN "Low"
    WHEN ${predicted_class} = 2 OR ${predicted_class} = 3 THEN "Medium"
    WHEN ${predicted_class} = 1 OR ${predicted_class} = 0 THEN "High"
    ELSE NULL END
    ;;
  }
  set: detail {
    fields: [
      duration, amount_outstanding, Yield, price_EOM, T_Volume
    ]
  }
}
