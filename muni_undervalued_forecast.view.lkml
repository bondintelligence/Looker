view: muni_undervalued_forecast {
  derived_table: {
    sql: SELECT ((SELECT Price FROM (
      SELECT predicted_data.num_row, predicted_data.Predicted_Price AS Price, pred_dates.Pred_Date AS Date
      FROM
      (SELECT ROW_NUMBER() OVER() AS num_row, (Predicted_Price * ((SELECT max FROM `bi-model-development.timeseries.LSTM_Muni_Scaled_Dates_Interpolated`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}" LIMIT 1) - (SELECT min FROM `bi-model-development.timeseries.LSTM_Muni_Scaled_Dates_Interpolated`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}" LIMIT 1)) + (SELECT min FROM `bi-model-development.timeseries.LSTM_Muni_Scaled_Dates_Interpolated`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}" LIMIT 1)) AS Predicted_Price FROM
      (SELECT * FROM UNNEST ((SELECT dense_1 FROM ML.PREDICT(MODEL `bi-model-development.timeseries.LSTM_Muni_Model`,
      (SELECT ARRAY(SELECT Price FROM `bi-model-development.timeseries.LSTM_Muni_Scaled_Dates_Interpolated`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}") AS lstm_4_input)))) AS Predicted_Price
      WITH OFFSET AS offset
      ORDER BY offset)) AS predicted_data
      FULL JOIN
      (SELECT ROW_NUMBER() OVER() AS num_row, Pred_Date FROM `bi-model-development.timeseries.LSTM_Muni_Scaled_Dates_Interpolated`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}") AS pred_dates
      ON predicted_data.num_row = pred_dates.num_row
      ORDER BY num_row ASC LIMIT 1)) - (SELECT Price FROM(
      SELECT TIMESTAMP(DATETIME(DATE (EXTRACT(DATE FROM Trade_Date)), Time_of_Trade)) AS Date, Dollar_Price_of_the_trade AS Price FROM `bi-model-development.timeseries.muni`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
      ORDER BY Date DESC LIMIT 1))) AS Value;;
  }
  parameter: CUSIP_Parameter {
    type: unquoted
    default_value: "01757LFH4"
  }

  dimension: Raw_Value {
    type: number
    sql: ${TABLE}.Value;;
  }
  dimension: Value {
    type: string
    sql: ${TABLE}.Value ;;
    html: <p style="color: #1f3e5a; font-size: 150%; text-align:center; padding: 0 0 10px 0"><b>{{ rendered_value }}</b></p>;;
    case: {
      when: {
        sql: ${TABLE}.Value >= 2.5 ;;
        label: "Strong Hold"
        #  (Will increase greatly in value)
      }
      when: {
        sql: ${TABLE}.Value > 0 AND ${TABLE}.Value < 2.5 ;;
        label: "Hold"
        # (Will increase by less than a dollar in value)
      }
      when: {
        sql: ${TABLE}.Value > -2.5 AND ${TABLE}.Value <= 0 ;;
        label: "Sell"
        # (Will decrease by less than a dollar in value)
      }
      when: {
        sql: ${TABLE}.Value <=-2.5;;
        label: "Strong Sell"
        # (Will decrease greatly in value)
      }
    }
  }
  measure: count {
    type: count
  }

}
