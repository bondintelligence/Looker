view: muni_forecast_30 {
  derived_table: {
    sql: SELECT "Predicted Price" AS Indicator, Date, Price AS Price FROM (
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
      ORDER BY num_row DESC)
      UNION ALL
      SELECT "Historical Price" AS Indicator, TIMESTAMP(DATETIME(DATE (EXTRACT(DATE FROM Trade_Date)), Time_of_Trade)) AS Date, Dollar_Price_of_the_trade AS Price FROM `bi-model-development.timeseries.muni`
      WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
      ORDER BY Date DESC LIMIT 250 ;;
  }


  parameter: CUSIP_Parameter {
    type: unquoted
    default_value: "01757LFH4"
  }

  dimension: Price_Dimension {
    type: number
    sql: ${TABLE}.Price;;
  }


  dimension: Price_Indicator {
    type: string
    sql: ${TABLE}.Indicator;;
  }

  dimension: Date {
    type: date_time
    sql: ${TABLE}.Date ;;
  }
  measure: Price {
    type: average
    sql: ${TABLE}.Price ;;
  }

  measure: Average {
    type:  average
  }

}
