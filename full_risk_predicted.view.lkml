view: full_risk_predicted {
    derived_table: {
    sql:  SELECT predicted_R_FR AS Risk, "Corp" As BondType FROM ML.PREDICT(MODEL `bi-model-development.looker_FINAL.risk_corp_model`,
            (
            SELECT
            OFFERING_DATE, OFFERING_AMT, OFFERING_PRICE, PRINCIPAL_AMT, MATURITY,
            COUPON, DATED_DATE, FIRST_INTEREST_DATE, LAST_INTEREST_DATE,
            NCOUPS, T_DVolume, T_Yld_Pt, YIELD, PRICE_EOM, T_Volume, DURATION, AMOUNT_OUTSTANDING,
            GAP, COUPMONTH, COUPAMT, COUPACC, MULTICOUPS, RET_EOM, TMT, REMCOUPS, CUSIP
            FROM `bi-model-development.looker_FINAL.risk_corp_dataset`
            WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
            )
            )
            UNION ALL
            SELECT predicted_Yield_Treasury AS Risk, "Muni" AS BondType FROM ML.PREDICT(MODEL `bi-model-development.risk_regression.model9_substitute_v2`,
              (
              SELECT int64_field_0, Year, Population, Number_of_Social_Associations, AR___10000, AR_Quartile,
              _80th_Percentile_Income, _20th_Percentile_Income,
              Top_Performers_s2, IR_Quartile, FIPS,
              __Hispanic, _not_Hispanic, __Non_Hispanic_White, Not_Proficient_in_English, _Proficient,
              __Rural, _Non_Rural, Segregation_index____black_white, Segregation_Index___non_white_white,
              Average_Daily_PM2_5, ADP_Quartile, POV_Quartile_poll, Total_households_dem,
              Average_household_size_dem, Average_family_size_dem, Elementary_school_Enrollment_grades_1_8_dem,
              High_school_dem, College_or_graduate_school_dem, Percent_high_school_graduate_or_higher_dem,
              Percent_bachelor_s_degree_or_higher_dem, Europe_dem, Asia_dem, Africa_dem, Oceania_dem,
              South_America_dem, Language_other_than_English_dem, Percent_Language_other_than_English_dem,
              Trade_Date, Trade_Type_Indicator_1, Trade_Type_Indicator_2, Trade_Type_Indicator_3,
              Interest_rate_of_the_issue_traded, Days_between_maturity_date_and_trade_date,
              The_par_value_of_the_trade, Dollar_Price_of_the_trade,
              Broker_s_Broker_Indicator_1,
              Broker_s_Broker_Indicator_2, Broker_s_Broker_Indicator_3, List_Offering_Price_Takedown_Indicator_1,
              List_Offering_Price_Takedown_Indicator_2, Version_Number, Alternative_Trading_System_ATS_Indicator_1,
              Alternative_Trading_System_ATS_Indicator_2, Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator_1,
              Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator_2, White_MR2, Black_or_African_American_MR2,
              American_Indian_and_Alaska_Native_MR2, Asian_MR2, Native_Hawaiian_and_Other_Pacific_Islander_MR2,
              Some_other_race_MR2, Two_or_more_races_MR2, Total_Population_MAge2, Male_MAge2, Female_MAge2, _0_5_MAge2,
              _5_9_MAge2, _10_14_MAge2, _15_19_MAge2, _20_24_MAge2, _25_29_MAge2, _30_34_MAge2, _35_39_MAge2, _40_44_MAge2,
              _45_49_MAge2, _50_54_MAge2, _55_59_MAge2, _60_64_MAge2, _70_74_MAge2, _75_79_MAge2, _80th_Percentile_Income_1,
              Median_age_MAge2, Percent_Vacant_housing_units_MH, Owner_occupied_MH, Renter_occupied_MH, Percent_Occupied_housing_units_MH,
              Less_than_50_000_MH, _50_000_to_99_999_MH, _100_000_to_149_999_MH, _150_000_to_199_999_MH, _200_000_to_299_999_MH,
              _300_000_to_499_999_MH, _500_000_to_999_999_MH, _1_000_000_or_more_MH, Median_Property_Value_dollars_MH, Median_Gross_Rent_dollars_MH,
              Unemployment_Rate_eco, Poverty_Rate_eco,
              High_school_graduate_edu,
              Some_college_no_degree_edu, Associate_s_degree_edu, Bachelor_s_degree_edu, Graduate_or_professional_degree_edu,
              Coupon_Frequency, Issuer_Industry_1, Issuer_Industry_2, Issuer_Industry_3, Issuer_Industry_4, Issuer_Industry_5,
              Issuer_Industry_6, Issuer_Industry_7, Issuer_Industry_8, Issuer_Industry_9, Issuer_Industry_10,
              Issuer_Industry_11, Issuer_Industry_12, Issuer_Industry_13, Issuer_Industry_14, Issuer_Industry_15,
              Issuer_Industry_16, Issuer_Industry_17, Issuer_Industry_18, Issuer_Industry_19, Issuer_Industry_20,
              Issuer_Industry_22, Issuer_Type_1, Issuer_Type_2, Issuer_Type_3, Issuer_Type_4, Issuer_Type_5, Issuer_Type_6,
              Issuer_Type_7, Issue_Size, Price_At_Issue, Yield_at_Issue, TaxProvision_1, TaxProvision_2, TaxProvision_3,
              TaxProvision_4, TaxProvision_5, TaxProvision_6, TaxProvision_7, TaxProvision_8, TaxProvision_9,
              TaxProvision_10, TaxProvision_11, Ratings1, Ratings2, Ratings3, CUSIP
              FROM `bi-model-development.risk_regression.muni_new_July13`
              WHERE CUSIP = "{% parameter CUSIP_Parameter %}"
              ORDER BY Trade_Date DESC
              LIMIT 1
              )
              )
                  ;;
  }

  parameter: CUSIP_Parameter {
    type: unquoted
    suggest_explore: risk_predicted_corp_source
    suggest_dimension: risk_predicted_corp_source.CUSIP
  }

  measure: evaluated_risk {
    type: string
    can_filter: no
    value_format: "0.00\%"
    sql:(CASE WHEN ${TABLE}.BondType ="Muni" AND (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) > 1 THEN 1.00
        WHEN ${TABLE}.BondType ="Muni" AND (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) < 0 THEN 0.00
        WHEN ${TABLE}.BondType ="Muni" AND (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) >= 0 AND (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) <=1 THEN
        (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) * 100
        WHEN ${TABLE}.BondType ="Corp" AND ${TABLE}.Risk = 4 THEN 0.00
        WHEN ${TABLE}.BondType ="Corp" AND ${TABLE}.Risk = 3 THEN 0.25
        WHEN ${TABLE}.BondType ="Corp" AND ${TABLE}.Risk = 2 THEN 0.50
        WHEN ${TABLE}.BondType ="Corp" AND ${TABLE}.Risk = 1 THEN 0.75
        WHEN ${TABLE}.BondType ="Corp" AND ${TABLE}.Risk = 0 THEN 1.00
        ELSE NULL END);;
    # sql:(CASE WHEN ${TABLE}.BondType ="MUNI" THEN (
    #       CASE WHEN (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) > 1 THEN 1.00
    #       WHEN (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) < 0 THEN 0.00
    #       ELSE (((${TABLE}.Risk * POWER(8.27610513, 0.5)) - 0.01111986 + 1)/2) END)
    #     ELSE (
    #       CASE WHEN ${TABLE}.Risk = 4 THEN 0.00
    #       WHEN ${TABLE}.Risk = 3 THEN 0.25
    #       WHEN ${TABLE}.Risk = 2 THEN 0.50
    #       WHEN ${TABLE}.Risk = 1 THEN 0.75
    #       WHEN ${TABLE}.Risk = 0 THEN 1.00
    #       ELSE NULL END));;

  }

}
