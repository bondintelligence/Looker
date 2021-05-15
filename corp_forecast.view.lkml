view: corp_forecast {
  derived_table: {
    sql: SELECT
        DATE,
        CUSIP,
        PRICE_EOM,
        INDICATOR
      FROM
        timeseries.LSTM_Corp_Full_Data
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: price_eom_ {
    type: average
    label: "Price"
    value_format: "$#.00;($#.00)"
    sql: CAST(${TABLE}.PRICE_EOM AS FLOAT64) ;;
  }

  measure: avg_hist {
    type: average
    hidden: yes
    filters: [indicator: "Historical"]
    sql: ${price_eom} ;;
  }

  measure: avg_pred {
    type: average
    hidden: yes
    filters: [indicator: "Predicted"]
    sql: ${price_eom} ;;
  }
  measure: diff {
    type: number
    hidden: yes
    sql: ${avg_pred} - ${avg_hist} ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: cusip {
    type: string
    label: "CUSIP"
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: price_eom {
    type: number
    label: "Price"
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}.PRICE_EOM ;;
  }

  dimension: indicator {
    type: string
    label: "Price Indicator"
    sql: ${TABLE}.INDICATOR ;;
  }

  measure: recommendation {
    type: string
    html: <p style="color: #1f3e5a; font-size: 150%; text-align:center; padding: 0 0 10px 0"><b>{{ rendered_value }}</b></p>;;
    case: {
      when: {
        sql: ${diff} >= 2.5;;
        label: "Strong Hold"
      }
      when: {
        sql: ${diff} >= 0;;
        label: "Hold"
      }
      when: {
        sql: ${diff} >= -2.5;;
        label: "Sell"
      }
      else: "Strong Sell"
    }
  }

  set: detail {
    fields: [date, cusip, price_eom, indicator]
  }
}
