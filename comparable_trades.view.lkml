view: comparable_trades {

  derived_table: {

    sql: SELECT * FROM `bi-model-development.looker_FINAL.muni`
          WHERE
          (
          (Geography IN (SELECT Geography FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %})) AND
          ((MaturitySize IN (SELECT MaturitySize FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %} LIMIT 1))
          OR (Issuer_Type IN (SELECT Issuer_Type FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %}))
          OR (Issuer_Industry IN (SELECT Issuer_Industry FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %})))
          AND ((Ratings1 IN (SELECT Ratings1 FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %}))
          OR (Ratings2 IN (SELECT Ratings2 FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %}))
          OR (Ratings3 IN (SELECT Ratings3 FROM bi-model-development.looker_FINAL.muni WHERE CUSIP = {% parameter CUSIP %}))))

          ORDER BY The_yield_of_the_trade DESC LIMIT 10
          ;;

    }

  dimension: _0_5_mage2 {
    type: number
    sql: ${TABLE}._0_5_MAge2 ;;
  }

  dimension: _100_000_to_149_999_mh {
    type: number
    sql: ${TABLE}._100_000_to_149_999_MH ;;
  }

  dimension: _10_14_mage2 {
    type: number
    sql: ${TABLE}._10_14_MAge2 ;;
  }

  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
  }

  dimension: _150_000_to_199_999_mh {
    type: number
    sql: ${TABLE}._150_000_to_199_999_MH ;;
  }

  dimension: _15_19_mage2 {
    type: number
    sql: ${TABLE}._15_19_MAge2 ;;
  }

  dimension: _1_000_000_or_more_mh {
    type: number
    sql: ${TABLE}._1_000_000_or_more_MH ;;
  }

  dimension: _200_000_to_299_999_mh {
    type: number
    sql: ${TABLE}._200_000_to_299_999_MH ;;
  }

  dimension: _20_24_mage2 {
    type: number
    sql: ${TABLE}._20_24_MAge2 ;;
  }

  dimension: _20th_explain {
    type: string
    sql: ${TABLE}._20th_Explain ;;
  }

  dimension: _20th_percentile_income {
    type: number
    sql: ${TABLE}._20th_Percentile_Income ;;
  }

  dimension: _25_29_mage2 {
    type: number
    sql: ${TABLE}._25_29_MAge2 ;;
  }

  dimension: _300_000_to_499_999_mh {
    type: number
    sql: ${TABLE}._300_000_to_499_999_MH ;;
  }

  dimension: _30_34_mage2 {
    type: number
    sql: ${TABLE}._30_34_MAge2 ;;
  }

  dimension: _35_39_mage2 {
    type: number
    sql: ${TABLE}._35_39_MAge2 ;;
  }

  dimension: _40_44_mage2 {
    type: number
    sql: ${TABLE}._40_44_MAge2 ;;
  }

  dimension: _45_49_mage2 {
    type: number
    sql: ${TABLE}._45_49_MAge2 ;;
  }

  dimension: _500_000_to_999_999_mh {
    type: number
    sql: ${TABLE}._500_000_to_999_999_MH ;;
  }

  dimension: _50_000_to_99_999_mh {
    type: number
    sql: ${TABLE}._50_000_to_99_999_MH ;;
  }

  dimension: _50_54_mage2 {
    type: number
    sql: ${TABLE}._50_54_MAge2 ;;
  }

  dimension: _55_59_mage2 {
    type: number
    sql: ${TABLE}._55_59_MAge2 ;;
  }

  dimension: _5_9_mage2 {
    type: number
    sql: ${TABLE}._5_9_MAge2 ;;
  }

  dimension: _60_64_mage2 {
    type: number
    sql: ${TABLE}._60_64_MAge2 ;;
  }

  dimension: _65_69_mage2 {
    type: number
    sql: ${TABLE}._65_69_MAge2 ;;
  }

  dimension: _70_74_mage2 {
    type: number
    sql: ${TABLE}._70_74_MAge2 ;;
  }

  dimension: _75_79_mage2 {
    type: number
    sql: ${TABLE}._75_79_MAge2 ;;
  }

  dimension: _80_84_mage2 {
    type: number
    sql: ${TABLE}._80_84_MAge2 ;;
  }

  dimension: _80th_explain {
    type: string
    sql: ${TABLE}._80th_Explain ;;
  }

  dimension: _80th_percentile_income {
    type: number
    sql: ${TABLE}._80th_Percentile_Income ;;
  }

  dimension: _85_mage2 {
    type: number
    sql: ${TABLE}._85_MAge2 ;;
  }

  dimension: __hispanic {
    type: number
    sql: ${TABLE}.__Hispanic ;;
  }

  dimension: __non_hispanic_white {
    type: number
    sql: ${TABLE}.__Non_Hispanic_White ;;
  }

  dimension: __not_proficient_in_english {
    type: number
    sql: ${TABLE}.__Not_Proficient_in_English ;;
  }

  dimension: __rural {
    type: number
    sql: ${TABLE}.__Rural ;;
  }

  dimension: _non_rural {
    type: number
    sql: ${TABLE}._Non_Rural ;;
  }

  dimension: _not_hispanic {
    type: number
    sql: ${TABLE}._not_Hispanic ;;
  }

  dimension: _proficient {
    type: number
    sql: ${TABLE}._Proficient ;;
  }

  dimension: adp_explain {
    type: string
    sql: ${TABLE}.ADP_Explain ;;
  }

  dimension: adp_quartile {
    type: number
    sql: ${TABLE}.ADP_Quartile ;;
  }

  dimension: adpq_explain {
    type: string
    sql: ${TABLE}.ADPQ_Explain ;;
  }

  dimension: africa_dem {
    type: number
    sql: ${TABLE}.Africa_dem ;;
  }

  dimension: alternative_trading_system_ats_indicator {
    type: yesno
    sql: ${TABLE}.Alternative_Trading_System_ATS_Indicator ;;
  }

  dimension: american_indian_and_alaska_native_mr2 {
    type: number
    sql: ${TABLE}.American_Indian_and_Alaska_Native_MR2 ;;
  }

  dimension: ar___10000 {
    type: number
    sql: ${TABLE}.AR___10000 ;;
  }

  dimension: ar_quartile {
    type: number
    sql: ${TABLE}.AR_Quartile ;;
  }

  dimension: arq_explain {
    type: string
    sql: ${TABLE}.ARQ_Explain ;;
  }

  dimension: asia_dem {
    type: number
    sql: ${TABLE}.Asia_dem ;;
  }

  dimension: asian_mr2 {
    type: number
    sql: ${TABLE}.Asian_MR2 ;;
  }

  dimension: associate_s_degree_edu {
    type: number
    sql: ${TABLE}.Associate_s_degree_edu ;;
  }

  dimension: association_rate {
    type: number
    sql: ${TABLE}.Association_Rate ;;
  }

  dimension: associations_explain {
    type: string
    sql: ${TABLE}.Associations_Explain ;;
  }

  dimension: assumed_settlement_date {
    type: string
    sql: ${TABLE}.Assumed_Settlement_Date ;;
  }

  dimension: average_daily_pm2_5 {
    type: number
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
  }

  dimension: average_family_size_dem {
    type: number
    sql: ${TABLE}.Average_family_size_dem ;;
  }

  dimension: average_household_size_dem {
    type: number
    sql: ${TABLE}.Average_household_size_dem ;;
  }

  dimension: bachelor_s_degree_edu {
    type: number
    sql: ${TABLE}.Bachelor_s_degree_edu ;;
  }

  dimension: black_or_african_american_mr2 {
    type: number
    sql: ${TABLE}.Black_or_African_American_MR2 ;;
  }

  dimension: broker_s_broker_indicator {
    type: string
    sql: ${TABLE}.Broker_s_Broker_Indicator ;;
  }

  dimension: college_or_graduate_school_dem {
    type: number
    sql: ${TABLE}.College_or_graduate_school_dem ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: coupon_frequency {
    type: number
    sql: ${TABLE}.Coupon_Frequency ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: cusip2 {
    type: string
    sql: ${TABLE}.CUSIP2 ;;
  }

  dimension_group: dated_date_of_the_issue_traded {
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
    sql: ${TABLE}.Dated_date_of_the_issue_traded ;;
  }

  dimension: dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: elementary_school_enrollment_grades_1_8_dem {
    type: number
    sql: ${TABLE}.Elementary_school_Enrollment_grades_1_8_dem ;;
  }

  dimension: europe_dem {
    type: number
    sql: ${TABLE}.Europe_dem ;;
  }

  dimension: female_mage2 {
    type: number
    sql: ${TABLE}.Female_MAge2 ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.FIPS ;;
  }

  dimension: geo_id {
    type: string
    sql: ${TABLE}.Geo_Id ;;
  }

  dimension: geography {
    type: string
    sql: ${TABLE}.Geography ;;
  }

  dimension: graduate_or_professional_degree_edu {
    type: number
    sql: ${TABLE}.Graduate_or_professional_degree_edu ;;
  }

  dimension: high_school_dem {
    type: number
    sql: ${TABLE}.High_school_dem ;;
  }

  dimension: high_school_graduate_edu {
    type: number
    sql: ${TABLE}.High_school_graduate_edu ;;
  }

  dimension: income_ratio {
    type: number
    sql: ${TABLE}.Income_Ratio ;;
  }

  dimension: income_ratio_explain {
    type: string
    sql: ${TABLE}.Income_Ratio_Explain ;;
  }

  dimension: interest_rate_of_the_issue_traded {
    type: number
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }

  dimension: ir_quartile {
    type: number
    sql: ${TABLE}.IR_Quartile ;;
  }

  dimension: irq_explain {
    type: string
    sql: ${TABLE}.IRQ_Explain ;;
  }

  dimension: issue_size {
    type: number
    sql: ${TABLE}.Issue_Size ;;
  }

  dimension: issuer_industry {
    type: string
    sql: ${TABLE}.Issuer_Industry ;;
  }

  dimension: issuer_type {
    type: string
    sql: ${TABLE}.Issuer_Type ;;
  }

  dimension: language_other_than_english_dem {
    type: number
    sql: ${TABLE}.Language_other_than_English_dem ;;
  }

  dimension: less_than_50_000_mh {
    type: number
    sql: ${TABLE}.Less_than_50_000_MH ;;
  }

  dimension: list_offering_price_takedown_indicator {
    type: yesno
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
  }

  dimension: male_mage2 {
    type: number
    sql: ${TABLE}.Male_MAge2 ;;
  }

  dimension_group: maturity_date_of_the_issue_traded {
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
    sql: ${TABLE}.Maturity_date_of_the_issue_traded ;;
  }

  dimension: maturity_size {
    type: number
    sql: ${TABLE}.MaturitySize ;;
  }

  dimension: median_age_mage2 {
    type: number
    sql: ${TABLE}.Median_age_MAge2 ;;
  }

  dimension: median_gross_rent_dollars_mh {
    type: number
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
  }

  dimension: median_property_value_dollars_mh {
    type: number
    sql: ${TABLE}.Median_Property_Value_dollars_MH ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: native_hawaiian_and_other_pacific_islander_mr2 {
    type: number
    sql: ${TABLE}.Native_Hawaiian_and_Other_Pacific_Islander_MR2 ;;
  }

  dimension: non_transaction_based_compensation_arrangement_ntbc_indicator {
    type: yesno
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator ;;
  }

  dimension: not_proficient_in_english {
    type: number
    sql: ${TABLE}.Not_Proficient_in_English ;;
  }

  dimension: number_of_social_associations {
    type: number
    sql: ${TABLE}.Number_of_Social_Associations ;;
  }

  dimension: oceania_dem {
    type: number
    sql: ${TABLE}.Oceania_dem ;;
  }

  dimension: owner_occupied_mh {
    type: number
    sql: ${TABLE}.Owner_occupied_MH ;;
  }

  dimension: percent_bachelor_s_degree_or_higher_dem {
    type: number
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
  }

  dimension: percent_high_school_graduate_or_higher_dem {
    type: number
    sql: ${TABLE}.Percent_high_school_graduate_or_higher_dem ;;
  }

  dimension: percent_language_other_than_english_dem {
    type: number
    sql: ${TABLE}.Percent_Language_other_than_English_dem ;;
  }

  dimension: percent_occupied_housing_units_mh {
    type: number
    sql: ${TABLE}.Percent_Occupied_housing_units_MH ;;
  }

  dimension: percent_vacant_housing_units_mh {
    type: number
    sql: ${TABLE}.Percent_Vacant_housing_units_MH ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: pov_explain_poll {
    type: string
    sql: ${TABLE}.POV_Explain_poll ;;
  }

  dimension: pov_quartile_poll {
    type: number
    sql: ${TABLE}.POV_Quartile_poll ;;
  }

  dimension: poverty_rate_eco {
    type: number
    sql: ${TABLE}.Poverty_Rate_eco ;;
  }

  dimension: povq_explain_poll {
    type: string
    sql: ${TABLE}.POVQ_Explain_poll ;;
  }

  dimension: presence_of_violation_poll {
    type: yesno
    sql: ${TABLE}.Presence_of_violation_poll ;;
  }

  dimension: price_at_issue {
    type: number
    sql: ${TABLE}.Price_At_Issue ;;
  }

  dimension: ratings1 {
    type: string
    sql: ${TABLE}.Ratings1 ;;
  }

  dimension: ratings2 {
    type: string
    sql: ${TABLE}.Ratings2 ;;
  }

  dimension: ratings3 {
    type: string
    sql: ${TABLE}.Ratings3 ;;
  }

  dimension: renter_occupied_mh {
    type: number
    sql: ${TABLE}.Renter_occupied_MH ;;
  }

  dimension: rtrs_control_number {
    type: string
    sql: ${TABLE}.RTRS_Control_Number ;;
  }

  dimension_group: rtrs_publish {
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
    sql: ${TABLE}.RTRS_Publish_Date ;;
  }

  dimension: rtrs_publish_time {
    type: string
    sql: ${TABLE}.RTRS_Publish_Time ;;
  }

  dimension: security_description {
    type: string
    sql: ${TABLE}.Security_Description ;;
  }

  dimension: segregation_index____black_white {
    type: number
    sql: ${TABLE}.Segregation_index____black_white ;;
  }

  dimension: segregation_index___non_white_white {
    type: number
    sql: ${TABLE}.Segregation_Index___non_white_white ;;
  }

  dimension: segregation_source {
    type: string
    sql: ${TABLE}.Segregation_Source ;;
  }

  dimension_group: settlement {
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
    sql: ${TABLE}.Settlement_Date ;;
  }

  dimension: shortstate {
    type: string
    sql: ${TABLE}.SHORTSTATE ;;
  }

  dimension: some_college_no_degree_edu {
    type: number
    sql: ${TABLE}.Some_college_no_degree_edu ;;
  }

  dimension: some_other_race_mr2 {
    type: number
    sql: ${TABLE}.Some_other_race_MR2 ;;
  }

  dimension: south_america_dem {
    type: number
    sql: ${TABLE}.South_America_dem ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: tax_provision {
    type: string
    sql: ${TABLE}.TaxProvision ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: the_yield_of_the_trade {
    type: number
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension_group: time_of_trade {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Time_of_Trade ;;
  }

  dimension: top_perfomers_s3 {
    type: number
    sql: ${TABLE}.Top_Perfomers_s3 ;;
  }

  dimension: top_performers_s1 {
    type: number
    sql: ${TABLE}.Top_Performers_s1 ;;
  }

  dimension: top_performers_s2 {
    type: number
    sql: ${TABLE}.Top_Performers_s2 ;;
  }

  dimension: total_households_dem {
    type: number
    sql: ${TABLE}.Total_households_dem ;;
  }

  dimension: total_population_mage2 {
    type: number
    sql: ${TABLE}.Total_Population_MAge2 ;;
  }

  dimension_group: trade {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Trade_Date ;;
  }

  dimension: trade_type_indicator {
    type: string
    sql: ${TABLE}.Trade_Type_Indicator ;;
  }

  dimension: two_or_more_races_mr2 {
    type: number
    sql: ${TABLE}.Two_or_more_races_MR2 ;;
  }

  dimension: u_s {
    type: number
    sql: ${TABLE}.U_S ;;
  }

  dimension: u_s_average {
    type: number
    sql: ${TABLE}.U_S_Average ;;
  }

  dimension: u_s_average_s2 {
    type: number
    sql: ${TABLE}.U_S_Average_s2 ;;
  }

  dimension: unable_to_verify_dollar_price_indicator_if_applicable {
    type: yesno
    sql: ${TABLE}.Unable_to_Verify_Dollar_Price_Indicator_if_applicable ;;
  }

  dimension: unemployment_rate_eco {
    type: number
    sql: ${TABLE}.Unemployment_Rate_eco ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.Version_Number ;;
  }

  dimension: weighted_price_indicator {
    type: string
    sql: ${TABLE}.Weighted_Price_Indicator ;;
  }

  dimension: when_issued_indicator {
    type: yesno
    sql: ${TABLE}.When_Issued_Indicator ;;
  }

  dimension: white_mr2 {
    type: number
    sql: ${TABLE}.White_MR2 ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: yield_at_issue {
    type: number
    sql: ${TABLE}.Yield_at_Issue ;;
  }

    parameter: CUSIP {
      type: string
    }

    measure: dollar_price_of_the_trade_ {
      sql: ${dollar_price_of_the_trade} ;;
    }


  }
