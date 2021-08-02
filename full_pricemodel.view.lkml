view: full_pricemodel {
  # You can specify the table name if it's different from the view name:
  derived_table: {
    sql: SELECT predicted_Dollar_Price_of_the_trade FROM (
          SELECT model.dense_65 AS predicted_Dollar_Price_of_the_trade, model.dense_60_input[OFFSET(13)] AS T_Volume,
          model.dense_60_input[OFFSET(21)] AS DURATION, "0_Coupon" AS Used_Model
          FROM ML.PREDICT(MODEL `bi-model-development.corp_price_models.price_corp_coupon_0`,(
          SELECT[
          (cols.BOND_TYPE_1 - 9.40359555e-01)/POWER(5.60834625e-02, 0.5),
          (cols.BOND_TYPE_2 - 4.49919148e-02)/POWER(4.29676424e-02, 0.5),
          (cols.BOND_TYPE_3 - 1.46485304e-02)/POWER(1.44339509e-02, 0.5),
          (cols.SECURITY_LEVEL_1 - 9.86492914e-01)/POWER(1.33246451e-02, 0.5),
          (cols.SECURITY_LEVEL_2 - 1.31266052e-02)/POWER(1.29542974e-02, 0.5),
          (cols.SECURITY_LEVEL_4 - 2.85360982e-04)/POWER(2.85279551e-04, 0.5),
          (cols.CONV - 2.56824883e-03)/POWER(2.56165293e-03, 0.5),
          (cols.OFFERING_AMT - 4.58271057e+04)/POWER(5.05928431e+10, 0.5),
          (cols.PRINCIPAL_AMT - 8.97955969e+02)/POWER(1.46344628e+05, 0.5),
          (cols.COUPON - 7.10311043e-03)/POWER(4.07679326e-02, 0.5),
          (cols.NCOUPS - 0.00000000e+00),
          (cols.RATING_CLASS_1 - 9.96385428e-01)/POWER(3.60150730e-03, 0.5),
          (cols.RATING_CLASS_2 - 3.61457243e-03)/POWER(3.60150730e-03, 0.5),
          (cols.T_Volume - 7.10775199e+06)/POWER(2.46348681e+15, 0.5),
          (cols.COUPMONTH - 3.04991439e+01)/POWER(9.94538024e+02, 0.5),
          (cols.COUPAMT - 0.00000000e+00),
          (cols.COUPACC - 0.00000000e+00),
          (cols.MULTICOUPS - 1.00000000e+00),
          (cols.RET_EOM - 3.39245770e+00)/POWER(4.24137340e+01, 0.5),
          (cols.TMT - 1.13152022e+00)/POWER(4.35193746e-01, 0.5),
          (cols.REMCOUPS - 1.00000000e+00),
          (cols.DURATION - 3.26492581e+00)/POWER(2.41067510e+01, 0.5),
          (cols.DEFAULTED_1 - 9.95481784e-01)/POWER(4.49780127e-03, 0.5),
          (cols.DEFAULTED_2 - 4.51821554e-03)/POWER(4.49780127e-03, 0.5)] AS dense_60_input
          FROM `bi-model-development.corp_price_models.Price_corp_coupon_0_dataset` AS cols
            WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
          )) AS model
          UNION ALL
          SELECT model_2.dense_4 AS predicted_Dollar_Price_of_the_trade, model_2.dense_input[OFFSET(16)] AS T_Volume,
          model_2.dense_input[OFFSET(24)] AS DURATION, "Positive_Coupon" AS Used_Model
          FROM ML.PREDICT(MODEL `bi-model-development.corp_price_models.price_corp_positive_coupon` ,(
          SELECT[
          (cols_2.BOND_TYPE_1 - 8.71200102e-01)/POWER(1.12210484e-01, 0.5),
          (cols_2.BOND_TYPE_2 - 1.28766350e-01)/POWER(1.12185577e-01, 0.5),
          (cols_2.SECURITY_LEVEL_1 - 8.76920131e-01)/POWER(1.07931215e-01, 0.5),
          (cols_2.SECURITY_LEVEL_2 - 6.66162506e-02)/POWER(6.21785258e-02, 0.5),
          (cols_2.SECURITY_LEVEL_3 - 3.68307238e-02)/POWER(3.54742216e-02, 0.5),
          (cols_2.SECURITY_LEVEL_4 - 1.90136445e-02)/POWER(1.86521258e-02, 0.5),
          (cols_2.SECURITY_LEVEL_5 - 1.38387796e-04)/POWER(1.38368645e-04, 0.5),
          (cols_2.SECURITY_LEVEL_6 - 4.80862645e-04)/POWER(4.80631416e-04, 0.5),
          (cols_2.CONV - 8.89036751e-04)/POWER(8.88246365e-04, 0.5),
          (cols_2.PRINCIPAL_AMT - 1.14364056e+03)/POWER(1.92992571e+07, 0.5),
          (cols_2.COUPON - 5.86444853e+00)/POWER(3.44041240e+00, 0.5),
          (cols_2.NCOUPS - 2.13784962e+00)/POWER(1.29649090e+00, 0.5),
          (cols_2.N_FR - 7.91656474e+00)/POWER(9.21493850e+00, 0.5),
          (cols_2.RATING_NUM - 8.19544271e+00)/POWER(9.04790312e+00, 0.5),
          (cols_2.RATING_CLASS_1 - 8.50078490e-01)/POWER(1.27445051e-01, 0.5),
          (cols_2.RATING_CLASS_2 - 1.49921510e-01)/POWER(1.27445051e-01, 0.5),
          (cols_2.T_Volume - 4.10469721e+07)/POWER(1.50954044e+16, 0.5),
          (cols_2.T_Yld_Pt - 4.87351403e+00)/POWER(1.33382536e+02, 0.5),
          (cols_2.COUPMONTH - 6.71115853e+01)/POWER(3.66969656e+03, 0.5),
          (cols_2.COUPAMT - 4.88843386e-01)/POWER(1.31262653e+00, 0.5),
          (cols_2.COUPACC - 1.51541008e+00)/POWER(1.03854277e+00, 0.5),
          (cols_2.MULTICOUPS - 1.01171544e+00)/POWER(6.52446919e-02, 0.5),
          (cols_2.TMT - 9.49545737e+00)/POWER(1.01405062e+02, 0.5),
          (cols_2.REMCOUPS - 2.06242338e+01)/POWER(6.32301828e+02, 0.5),
          (cols_2.DURATION - 5.85010920e+00)/POWER(1.82794824e+01, 0.5),
          (cols_2.DEFAULTED_1 - 9.95269654e-01)/POWER(4.70797031e-03, 0.5),
          (cols_2.DEFAULTED_2 - 4.73034649e-03)/POWER(4.70797031e-03, 0.5)
          ] AS dense_input FROM `bi-model-development.corp_price_models.Price_corp_positive_coupon_dataset` AS cols_2
            WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
          )) AS model_2)
          UNION ALL
    SELECT model_muni.predicted_Dollar_Price_of_the_trade
    FROM ML.PREDICT(MODEL `bi-model-development.looker_FINAL.price_muni_boosted_model`,
    (
    SELECT
    (cols.Income_Ratio - 4.78707613)/POWER(0.416192260, 0.5) AS Income_Ratio,
    (cols._80th_Percentile_Income - 1.10834510e+05)/POWER(5.46152171e+08, 0.5) AS _80th_Percentile_Income,
    (cols.FIPS - 2.17677827e+04)/POWER(3.15575966e+08, 0.5) AS FIPS,
    (cols.Africa_dem - 1.04641487e+04)/POWER(2.05322957e+08, 0.5) AS Africa_dem,
    (cols.Trade_Date - 7.94418234e+04)/POWER(9.70011616e+04, 0.5) AS Trade_Date,
    (cols._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted - 2.38129247e+00)/POWER(2.26253201e-01, 0.5) AS _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted,
    (cols.Interest_rate_of_the_issue_traded - 4.21839171e+00)/POWER(1.65615697e+00, 0.5) AS Interest_rate_of_the_issue_traded,
    (cols.Days_between_maturity_date_and_trade_date - 4.42480705e+03)/POWER(8.97276123e+06, 0.5) AS Days_between_maturity_date_and_trade_date,
    (cols.The_yield_of_the_trade - 2.37509641e+00)/POWER(7.67943277e+00, 0.5) AS The_yield_of_the_trade,
    (cols.Issuer_Industry - 1.05359266e+02)/POWER(5.65820163e+00, 0.5) AS Issuer_Industry,
    (cols.Issue_Size - 1.60207594e+08)/POWER(4.60561611e+16, 0.5) AS Issue_Size,
    (cols.MaturitySize - 1.88481748e+07)/POWER(1.76399804e+15, 0.5) AS MaturitySize,
    (cols.Price_At_Issue - 1.04254845e+02)/POWER(2.82825359e+02, 0.5) AS Price_At_Issue,
    (cols.Yield_at_Issue - 3.41463484e+00)/POWER(2.02232741e+00, 0.5) AS Yield_at_Issue,
    (cols._85_MAge2 - 2.87041104e+04)/POWER(1.59689889e+09, 0.5) AS _85_MAge2,
    (cols._20_24_MAge2 - 1.16123435e+05)/POWER(2.88425738e+10, 0.5) AS _20_24_MAge2,
    (cols._Proficient - 9.58538532e+01)/POWER(1.50505168e+01, 0.5) AS _Proficient,
    (cols.__Non_Hispanic_White - 5.96917660e+01)/POWER(3.68286386e+02, 0.5) AS __Non_Hispanic_White,
    (cols.Ratings1 - 8.01936341e+01)/POWER(6.23614973e+02, 0.5) AS Ratings1,
    (cols.Ratings2 - 8.02749197e+01)/POWER(6.31857179e+02, 0.5) AS Ratings2,
    (cols.Ratings3 - 8.10222250e+01)/POWER(6.27553773e+02, 0.5) AS Ratings3,
    (cols.Dollar_Price_of_the_Trade) AS Dollar_Price_of_the_Trade,
    (cols.CUSIP) AS CUSIP,
    Issuer_Industry_String, Trade_Date_Time, Maturity_date_of_the_issue_traded
    FROM `bi-model-development.looker_FINAL.price_muni_boosted_training` AS cols
    WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
    ORDER BY Trade_Date DESC
    )
    ) AS model_muni
    LIMIT 1;;
  }
  # Define your dimensions and measures here, like this:
  parameter: CUSIP_Parameter {
    type: unquoted
    # default_value: "00079FQY1"
    default_value: "026351AR7"
    suggest_explore: corp_pricemodel_source
    suggest_dimension: corp_pricemodel_source.CUSIP
  }

  measure: predicted_Dollar_Price_of_the_trade {
    type: number
    can_filter: no
    value_format: "$0.00"
    sql: ${TABLE}.predicted_Dollar_Price_of_the_trade ;;
  }

  measure: min_predicted_Dollar_Price_of_the_trade  {
    type: number
    sql: ${TABLE}.predicted_Dollar_Price_of_the_trade-5 ;;
    value_format: "$##.##"
  }
}
