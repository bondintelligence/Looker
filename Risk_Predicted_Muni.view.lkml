view: risk_predicted_muni {

    derived_table: {
      sql: SELECT CENTROID_ID as nearestCentroidID, NEAREST_CENTROIDS_DISTANCE[ORDINAL(CENTROID_ID)].DISTANCE AS nearestCentroidDistance, _20th_Percentile_Income,
              Days_between_maturity_date_and_trade_date, Median_Gross_Rent_dollars_MH,__Non_Hispanic_White,
              Percent_bachelor_s_degree_or_higher_dem, Poverty_Rate_eco, Ratings1, Ratings2, Ratings3, Trade_Date,
              Unemployment_Rate_eco, Yield_at_Issue, _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted
            FROM ML.PREDICT(MODEL `bi-model-development.looker_FINAL.risk_muni_model`,
              (
              SELECT
              ((CASE WHEN {% parameter _20th_Percentile_Income %} IS NULL THEN ((_20th_Percentile_Income * POWER(4.08144607e+07, 0.5)) + 2.40765872e+04)
                  ELSE {% parameter _20th_Percentile_Income%}
                  END) - 2.40765872e+04)/POWER(4.08144607e+07, 0.5) AS _20th_Percentile_Income,
              ((CASE WHEN {% parameter Days_between_maturity_date_and_trade_date %} IS NULL THEN ((Days_between_maturity_date_and_trade_date * POWER(8.81677773e+06, 0.5)) + 4.29082934e+03)
                  ELSE {% parameter Days_between_maturity_date_and_trade_date %}
                  END) - 4.29082934e+03)/POWER(8.81677773e+06, 0.5) AS Days_between_maturity_date_and_trade_date,
              ((CASE WHEN {% parameter Median_Gross_Rent_dollars_MH%} IS NULL THEN ((Median_Gross_Rent_dollars_MH * POWER(7.37373826e+04 , 0.5)) +  9.93629670e+02)
                ELSE {% parameter Median_Gross_Rent_dollars_MH%}
                END) - 9.93629670e+02)/POWER(7.37373826e+04, 0.5) AS Median_Gross_Rent_dollars_MH ,
              __Non_Hispanic_White AS __Non_Hispanic_White,
              percent_bachelor_s_degree_or_higher_dem AS Percent_bachelor_s_degree_or_higher_dem,
              ((CASE WHEN {% parameter Poverty_Rate_eco%} IS NULL THEN ((Poverty_Rate_eco * POWER(2.05444267e+01 , 0.5)) + 1.30039056e+01)
                ELSE {% parameter Poverty_Rate_eco%}
                END) - 1.30039056e+01)/POWER(2.05444267e+01, 0.5) AS Poverty_Rate_eco ,
              Ratings1 AS Ratings1,Ratings2 AS Ratings2,Ratings3 AS Ratings3,
              Trade_Date AS Trade_Date,
              ((CASE WHEN {% parameter Unemployment_Rate_eco %} IS NULL THEN ((Unemployment_Rate_eco * POWER(3.04280246e+00 , 0.5)) + 5.37110987e+00)
                ELSE {% parameter Unemployment_Rate_eco %}
                END) - 5.37110987e+00)/POWER(3.04280246e+00, 0.5) AS Unemployment_Rate_eco ,
             Yield_at_Issue AS Yield_at_Issue,
              ((CASE WHEN {% parameter _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted %} IS NULL THEN ((_10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted * POWER(2.27818760e-01 , 0.5)) + 2.39064800e+00)
                ELSE {% parameter _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted%}
                END) - 2.39064800e+00)/POWER(2.27818760e-01, 0.5) AS _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted,
              FROM `bi-model-development.looker_FINAL.risk_muni_dataset`
              WHERE CUSIP = "{% parameter CUSIP %}"
              LIMIT 1
              )
              )
         ;;
    }




#Parameters
    parameter: CUSIP {
      type: unquoted
      default_value: "036015PL3"
    }



    parameter: Days_between_maturity_date_and_trade_date {
      type: number
    }



    parameter: _10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted {
      type: number
    }



    parameter: Unemployment_Rate_eco {
      type: number
    }



    parameter: Poverty_Rate_eco {
      type:  number
    }



    parameter: Median_Gross_Rent_dollars_MH {
      type: number
    }



    parameter: _20th_Percentile_Income {
      type: number
    }





#Dimensions



    dimension: nearest_centroid_distance_ {
      type: number
      sql: ${TABLE}.nearestCentroidDistance  ;;
      hidden: yes
    }



    dimension: nearest_centroid_id_ {
      type: number
      sql: ${TABLE}.nearestCentroidID;;
      hidden: yes
    }



    dimension: _20th_percentile_income_ {
      type: number
      sql: ROUND(((${TABLE}._20th_Percentile_Income * POWER(4.08144607e+07, 0.5)) + 2.40765872e+04),2) ;;
      hidden: yes
    }



    dimension: days_between_maturity_date_and_trade_date_ {
      type: number
      sql: ROUND(((${TABLE}.Days_between_maturity_date_and_trade_date * POWER(8.81677773e+06, 0.5)) + 4.29082934e+03),2) ;;
      hidden: yes
    }



    dimension: median_gross_rent_dollars_mh_ {
      type: number
      sql: ROUND(((${TABLE}.Median_Gross_Rent_dollars_MH * POWER(7.37373826e+04 , 0.5)) +  9.93629670e+02),2) ;;
      hidden: yes
    }



    dimension: __non_hispanic_white_ {
      type: number
      sql: ROUND(((${TABLE}.__Non_Hispanic_White  * POWER(2.92049843e+02 , 0.5)) +  6.13443237e+01),2);;
      hidden: yes
    }



    dimension: percent_bachelor_s_degree_or_higher_dem_ {
      type: number
      sql: ROUND(((${TABLE}.Percent_bachelor_s_degree_or_higher_dem * POWER(6.93219238e+01   , 0.5)) +  3.27578339e+01),2) ;;
      hidden: yes
    }



    dimension: poverty_rate_eco_ {
      type: number
      sql: ROUND(((${TABLE}.Poverty_Rate_eco * POWER(2.05444267e+01 , 0.5)) + 1.30039056e+01),2) ;;
      hidden: yes
    }



    dimension: ratings1_ {
      type: number
      sql: ${TABLE}.Ratings1 ;;
      hidden: yes
    }



    dimension: ratings2_ {
      type: number
      sql: ${TABLE}.Ratings2 ;;
      hidden: yes
    }



    dimension: ratings3_ {
      type: number
      sql: ${TABLE}.Ratings3,0 ;;
      hidden: yes
    }



    dimension: trade_date_ {
      type: number
      sql: ROUND((( ${TABLE}.Trade_Date * POWER(9.68757300e+04  , 0.5)) + 7.94485367e+04),2)  ;;
      hidden: yes
    }



    dimension: unemployment_rate_eco_ {
      type: number
      sql: ROUND(((${TABLE}.Unemployment_Rate_eco * POWER(3.04280246e+00 , 0.5)) + 5.37110987e+00),2) ;;
      hidden: yes
    }



    dimension: yield_at_issue_ {
      type: number
      sql: ROUND(((${TABLE}.Yield_at_Issue * POWER(1.67104499e+00  , 0.5)) + 3.24888764e+00),2) ;;
      hidden: yes
    }



    dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted_ {
      type: number
      sql: ROUND(((${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted * POWER(2.27818760e-01 , 0.5)) + 2.39064800e+00),2) ;;
      hidden: yes
    }




#Measures



    measure: nearest_centroid_distance {
      type: number
      sql: ${nearest_centroid_distance_} ;;
      hidden: yes
    }



    measure: nearest_centroid_id {
      type: number
      sql: ${nearest_centroid_id_};;
      hidden: yes
    }



    measure: _20th_percentile_income {
      type: number
      sql: ${_20th_percentile_income_} ;;
      hidden: no
    }



    measure: days_between_maturity_date_and_trade_date {
      type: number
      sql: ${days_between_maturity_date_and_trade_date_} ;;
      hidden: no
    }



    measure: median_gross_rent_dollars_mh {
      type: number
      sql: ${median_gross_rent_dollars_mh_}  ;;
      hidden: no
    }



    measure: __non_hispanic_white {
      type: number
      sql: ${__non_hispanic_white_} ;;
      hidden: yes
    }



    measure: percent_bachelor_s_degree_or_higher_dem {
      type: number
      sql: ${percent_bachelor_s_degree_or_higher_dem_} ;;
      hidden: yes
    }



    measure: poverty_rate_eco {
      type: number
      sql: ${poverty_rate_eco_} ;;
      hidden: no
    }



    measure: ratings1 {
      type: number
      sql: ${ratings1_} ;;
      hidden: yes
    }



    measure: ratings2 {
      type: number
      sql: ${ratings2_} ;;
      hidden: yes
    }



    measure: ratings3 {
      type: number
      sql: ${ratings3_} ;;
      hidden: yes
    }



    measure: trade_date {
      type: number
      sql: ${trade_date_} ;;
      hidden: yes
    }



    measure: unemployment_rate_eco {
      type: number
      sql: ${unemployment_rate_eco_} ;;
      hidden: no
    }



    measure: yield_at_issue {
      type: number
      sql: ${yield_at_issue_} ;;
      hidden: yes
    }



    measure: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
      type: number
      sql: ${_10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted_} ;;
      hidden: no
    }




    measure: evaluated_risk {
      type: string
      sql:
          CASE WHEN ${nearest_centroid_id_} = 3 OR ${nearest_centroid_id_} = 6 THEN "Low"
          WHEN ${nearest_centroid_id_} = 2 OR ${nearest_centroid_id_} = 4 OR ${nearest_centroid_id_} = 5 THEN "Medium"
          WHEN ${nearest_centroid_id_} = 1 THEN "High"
          ELSE NULL END
          ;;
      hidden: no
    }

    measure: count {
      type: count
      drill_fields: [detail*]
      hidden: yes
    }




    set: detail {
      fields: [
        nearest_centroid_id,
        _20th_percentile_income,
        days_between_maturity_date_and_trade_date,
        median_gross_rent_dollars_mh,
        __non_hispanic_white,
        percent_bachelor_s_degree_or_higher_dem,
        poverty_rate_eco,
        ratings1,
        ratings2,
        ratings3,
        trade_date,
        unemployment_rate_eco,
        yield_at_issue,
        _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted
      ]
    }
  }
