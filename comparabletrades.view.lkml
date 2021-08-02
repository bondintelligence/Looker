view: comparabletrades {
  derived_table: {
    sql: SELECT DISTINCT CUSIP, Issuer_Industry AS Issuer_Type, Dated_date_of_the_issue_traded, Dollar_Price_of_the_trade, Yield_at_Issue  FROM bi-model-development.looker_FINAL.muni_comparabletrades_kmeans WHERE
          clusterID = (SELECT clusterID FROM bi-model-development.looker_FINAL.muni_comparabletrades_kmeans WHERE CUSIP='{% parameter CUSIP_Parameter %}' LIMIT 1)
          UNION ALL
          SELECT corp.CUSIP, corp.BOND_TYPE AS Issuer_Type, corp.T_DATE AS Dated_date_of_the_issue_traded, CAST(corp.PRICE_EOM AS FLOAT64) AS Dollar_Price_of_the_trade, CAST(corp.YIELD AS FLOAT64) AS Yield_at_Issue FROM bi-model-development.looker_FINAL.corp AS corp
          ORDER BY ABS(CAST(Dollar_Price_of_the_trade AS FLOAT64) - CAST((SELECT ordering.PRICE_EOM FROM bi-model-development.looker_FINAL.corp AS ordering WHERE ordering.CUSIP = '{% parameter CUSIP_Parameter %}' LIMIT 1) AS FLOAT64)) ASC
          LIMIT 10

 ;;
  }

  parameter: CUSIP_Parameter {
    default_value: "036015PL3"
    type: unquoted
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.Population ;;
  }

  dimension: number_of_social_associations {
    type: number
    sql: ${TABLE}.Number_of_Social_Associations ;;
  }

  dimension: top_perfomers_s3 {
    type: number
    sql: ${TABLE}.Top_Perfomers_s3 ;;
  }

  dimension: u_s_average {
    type: number
    sql: ${TABLE}.U_S_Average ;;
  }

  dimension: association_rate {
    type: number
    sql: ${TABLE}.Association_Rate ;;
  }

  dimension: ar___10000 {
    type: number
    sql: ${TABLE}.AR___10000 ;;
  }

  dimension: ar_quartile {
    type: number
    sql: ${TABLE}.AR_Quartile ;;
  }

  dimension: _80th_percentile_income {
    type: number
    sql: ${TABLE}._80th_Percentile_Income ;;
  }

  dimension: _20th_percentile_income {
    type: number
    sql: ${TABLE}._20th_Percentile_Income ;;
  }

  dimension: income_ratio {
    type: number
    sql: ${TABLE}.Income_Ratio ;;
  }

  dimension: top_performers_s2 {
    type: number
    sql: ${TABLE}.Top_Performers_s2 ;;
  }

  dimension: u_s_average_s2 {
    type: number
    sql: ${TABLE}.U_S_Average_s2 ;;
  }

  dimension: ir_quartile {
    type: number
    sql: ${TABLE}.IR_Quartile ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.FIPS ;;
  }

  dimension: __hispanic {
    type: number
    sql: ${TABLE}.__Hispanic ;;
  }

  dimension: _not_hispanic {
    type: number
    sql: ${TABLE}._not_Hispanic ;;
  }

  dimension: __non_hispanic_white {
    type: number
    sql: ${TABLE}.__Non_Hispanic_White ;;
  }

  dimension: not_proficient_in_english {
    type: number
    sql: ${TABLE}.Not_Proficient_in_English ;;
  }

  dimension: __not_proficient_in_english {
    type: number
    sql: ${TABLE}.__Not_Proficient_in_English ;;
  }

  dimension: _proficient {
    type: number
    sql: ${TABLE}._Proficient ;;
  }

  dimension: __rural {
    type: number
    sql: ${TABLE}.__Rural ;;
  }

  dimension: _non_rural {
    type: number
    sql: ${TABLE}._Non_Rural ;;
  }

  dimension: segregation_index____black_white {
    type: number
    sql: ${TABLE}.Segregation_index____black_white ;;
  }

  dimension: segregation_index___non_white_white {
    type: number
    sql: ${TABLE}.Segregation_Index___non_white_white ;;
  }

  dimension: average_daily_pm2_5 {
    type: number
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
  }

  dimension: adp_quartile {
    type: number
    sql: ${TABLE}.ADP_Quartile ;;
  }

  dimension: top_performers_s1 {
    type: number
    sql: ${TABLE}.Top_Performers_s1 ;;
  }

  dimension: u_s {
    type: number
    sql: ${TABLE}.U_S ;;
  }

  dimension: presence_of_violation_poll {
    type: string
    sql: ${TABLE}.Presence_of_violation_poll ;;
  }

  dimension: pov_quartile_poll {
    type: number
    sql: ${TABLE}.POV_Quartile_poll ;;
  }

  dimension: geography {
    type: string
    sql: ${TABLE}.Geography ;;
  }

  dimension: total_households_dem {
    type: number
    sql: ${TABLE}.Total_households_dem ;;
  }

  dimension: average_household_size_dem {
    type: number
    sql: ${TABLE}.Average_household_size_dem ;;
  }

  dimension: average_family_size_dem {
    type: number
    sql: ${TABLE}.Average_family_size_dem ;;
  }

  dimension: elementary_school_enrollment_grades_1_8_dem {
    type: number
    sql: ${TABLE}.Elementary_school_Enrollment_grades_1_8_dem ;;
  }

  dimension: high_school_dem {
    type: number
    sql: ${TABLE}.High_school_dem ;;
  }

  dimension: college_or_graduate_school_dem {
    type: number
    sql: ${TABLE}.College_or_graduate_school_dem ;;
  }

  dimension: percent_high_school_graduate_or_higher_dem {
    type: number
    sql: ${TABLE}.Percent_high_school_graduate_or_higher_dem ;;
  }

  dimension: percent_bachelor_s_degree_or_higher_dem {
    type: number
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
  }

  dimension: europe_dem {
    type: number
    sql: ${TABLE}.Europe_dem ;;
  }

  dimension: asia_dem {
    type: number
    sql: ${TABLE}.Asia_dem ;;
  }

  dimension: africa_dem {
    type: number
    sql: ${TABLE}.Africa_dem ;;
  }

  dimension: oceania_dem {
    type: number
    sql: ${TABLE}.Oceania_dem ;;
  }

  dimension: south_america_dem {
    type: number
    sql: ${TABLE}.South_America_dem ;;
  }

  dimension: language_other_than_english_dem {
    type: number
    sql: ${TABLE}.Language_other_than_English_dem ;;
  }

  dimension: percent_language_other_than_english_dem {
    type: number
    sql: ${TABLE}.Percent_Language_other_than_English_dem ;;
  }

  dimension: trade_date {
    type: string
    sql: ${TABLE}.Trade_Date ;;
  }

  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
  }

  dimension: rtrs_control_number {
    type: string
    sql: ${TABLE}.RTRS_Control_Number ;;
  }

  dimension: trade_type_indicator {
    type: string
    sql: ${TABLE}.Trade_Type_Indicator ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: security_description {
    type: string
    sql: ${TABLE}.Security_Description ;;
  }

  dimension: dated_date_of_the_issue_traded {
    type: string
    sql: ${TABLE}.Dated_date_of_the_issue_traded ;;
  }

  dimension: interest_rate_of_the_issue_traded {
    type: number
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }

  dimension: maturity_date_of_the_issue_traded {
    type: string
    sql: ${TABLE}.Maturity_date_of_the_issue_traded ;;
  }

  dimension: when_issued_indicator {
    type: string
    sql: ${TABLE}.When_Issued_Indicator ;;
  }

  dimension_group: time_of_trade {
    type: time
    sql: ${TABLE}.Time_of_Trade ;;
  }

  dimension: settlement_date {
    type: string
    sql: ${TABLE}.Settlement_Date ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: dollar_price_of_the_trade {
    type: number
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: the_yield_of_the_trade {
    type: number
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension: list_offering_price_takedown_indicator {
    type: string
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
  }

  dimension: rtrs_publish_date {
    type: string
    sql: ${TABLE}.RTRS_Publish_Date ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.Version_Number ;;
  }

  dimension: unable_to_verify_dollar_price_indicator_if_applicable {
    type: string
    sql: ${TABLE}.Unable_to_Verify_Dollar_Price_Indicator_if_applicable ;;
  }

  dimension: alternative_trading_system_ats_indicator {
    type: string
    sql: ${TABLE}.Alternative_Trading_System_ATS_Indicator ;;
  }

  dimension: non_transaction_based_compensation_arrangement_ntbc_indicator {
    type: string
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator ;;
  }

  dimension: white_mr2 {
    type: number
    sql: ${TABLE}.White_MR2 ;;
  }

  dimension: black_or_african_american_mr2 {
    type: number
    sql: ${TABLE}.Black_or_African_American_MR2 ;;
  }

  dimension: american_indian_and_alaska_native_mr2 {
    type: number
    sql: ${TABLE}.American_Indian_and_Alaska_Native_MR2 ;;
  }

  dimension: asian_mr2 {
    type: number
    sql: ${TABLE}.Asian_MR2 ;;
  }

  dimension: native_hawaiian_and_other_pacific_islander_mr2 {
    type: number
    sql: ${TABLE}.Native_Hawaiian_and_Other_Pacific_Islander_MR2 ;;
  }

  dimension: some_other_race_mr2 {
    type: number
    sql: ${TABLE}.Some_other_race_MR2 ;;
  }

  dimension: two_or_more_races_mr2 {
    type: number
    sql: ${TABLE}.Two_or_more_races_MR2 ;;
  }

  dimension: total_population_mage2 {
    type: number
    sql: ${TABLE}.Total_Population_MAge2 ;;
  }

  dimension: male_mage2 {
    type: number
    sql: ${TABLE}.Male_MAge2 ;;
  }

  dimension: female_mage2 {
    type: number
    sql: ${TABLE}.Female_MAge2 ;;
  }

  dimension: _0_5_mage2 {
    type: number
    sql: ${TABLE}._0_5_MAge2 ;;
  }

  dimension: _5_9_mage2 {
    type: number
    sql: ${TABLE}._5_9_MAge2 ;;
  }

  dimension: _10_14_mage2 {
    type: number
    sql: ${TABLE}._10_14_MAge2 ;;
  }

  dimension: _15_19_mage2 {
    type: number
    sql: ${TABLE}._15_19_MAge2 ;;
  }

  dimension: _20_24_mage2 {
    type: number
    sql: ${TABLE}._20_24_MAge2 ;;
  }

  dimension: _25_29_mage2 {
    type: number
    sql: ${TABLE}._25_29_MAge2 ;;
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

  dimension: _50_54_mage2 {
    type: number
    sql: ${TABLE}._50_54_MAge2 ;;
  }

  dimension: _55_59_mage2 {
    type: number
    sql: ${TABLE}._55_59_MAge2 ;;
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

  dimension: _85_mage2 {
    type: number
    sql: ${TABLE}._85_MAge2 ;;
  }

  dimension: median_age_mage2 {
    type: number
    sql: ${TABLE}.Median_age_MAge2 ;;
  }

  dimension: percent_vacant_housing_units_mh {
    type: number
    sql: ${TABLE}.Percent_Vacant_housing_units_MH ;;
  }

  dimension: owner_occupied_mh {
    type: number
    sql: ${TABLE}.Owner_occupied_MH ;;
  }

  dimension: renter_occupied_mh {
    type: number
    sql: ${TABLE}.Renter_occupied_MH ;;
  }

  dimension: percent_occupied_housing_units_mh {
    type: number
    sql: ${TABLE}.Percent_Occupied_housing_units_MH ;;
  }

  dimension: less_than_50_000_mh {
    type: number
    sql: ${TABLE}.Less_than_50_000_MH ;;
  }

  dimension: _50_000_to_99_999_mh {
    type: number
    sql: ${TABLE}._50_000_to_99_999_MH ;;
  }

  dimension: _100_000_to_149_999_mh {
    type: number
    sql: ${TABLE}._100_000_to_149_999_MH ;;
  }

  dimension: _150_000_to_199_999_mh {
    type: number
    sql: ${TABLE}._150_000_to_199_999_MH ;;
  }

  dimension: _200_000_to_299_999_mh {
    type: number
    sql: ${TABLE}._200_000_to_299_999_MH ;;
  }

  dimension: _300_000_to_499_999_mh {
    type: number
    sql: ${TABLE}._300_000_to_499_999_MH ;;
  }

  dimension: _500_000_to_999_999_mh {
    type: number
    sql: ${TABLE}._500_000_to_999_999_MH ;;
  }

  dimension: _1_000_000_or_more_mh {
    type: number
    sql: ${TABLE}._1_000_000_or_more_MH ;;
  }

  dimension: median_property_value_dollars_mh {
    type: number
    sql: ${TABLE}.Median_Property_Value_dollars_MH ;;
  }

  dimension: median_gross_rent_dollars_mh {
    type: number
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
  }

  dimension: unemployment_rate_eco {
    type: number
    sql: ${TABLE}.Unemployment_Rate_eco ;;
  }

  dimension: poverty_rate_eco {
    type: number
    sql: ${TABLE}.Poverty_Rate_eco ;;
  }

  dimension: high_school_graduate_edu {
    type: number
    sql: ${TABLE}.High_school_graduate_edu ;;
  }

  dimension: some_college_no_degree_edu {
    type: number
    sql: ${TABLE}.Some_college_no_degree_edu ;;
  }

  dimension: associate_s_degree_edu {
    type: number
    sql: ${TABLE}.Associate_s_degree_edu ;;
  }

  dimension: bachelor_s_degree_edu {
    type: number
    sql: ${TABLE}.Bachelor_s_degree_edu ;;
  }

  dimension: graduate_or_professional_degree_edu {
    type: number
    sql: ${TABLE}.Graduate_or_professional_degree_edu ;;
  }

  dimension: cusip2 {
    type: string
    sql: ${TABLE}.CUSIP2 ;;
  }

  dimension: coupon_frequency {
    type: number
    sql: ${TABLE}.Coupon_Frequency ;;
  }

  dimension: issuer_type {
    type: string
    sql: ${TABLE}.Issuer_Type ;;
  }

  dimension: issuer_industry {
    type: string
    sql: ${TABLE}.Issuer_Industry ;;
  }

  dimension: issue_size {
    type: number
    sql: ${TABLE}.Issue_Size ;;
  }

  dimension: maturity_size {
    type: number
    sql: ${TABLE}.MaturitySize ;;
  }

  dimension: price_at_issue {
    type: number
    sql: ${TABLE}.Price_At_Issue ;;
  }

  dimension: yield_at_issue {
    type: number
    sql: ${TABLE}.Yield_at_Issue ;;
  }

  dimension: tax_provision {
    type: string
    sql: ${TABLE}.TaxProvision ;;
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

  dimension: cluster_id {
    type: number
    sql: ${TABLE}.clusterID ;;
  }

  set: detail {
    fields: [
      year,
      state,
      county,
      name,
      population,
      number_of_social_associations,
      top_perfomers_s3,
      u_s_average,
      association_rate,
      ar___10000,
      ar_quartile,
      _80th_percentile_income,
      _20th_percentile_income,
      income_ratio,
      top_performers_s2,
      u_s_average_s2,
      ir_quartile,
      fips,
      __hispanic,
      _not_hispanic,
      __non_hispanic_white,
      not_proficient_in_english,
      __not_proficient_in_english,
      _proficient,
      __rural,
      _non_rural,
      segregation_index____black_white,
      segregation_index___non_white_white,
      average_daily_pm2_5,
      adp_quartile,
      top_performers_s1,
      u_s,
      presence_of_violation_poll,
      pov_quartile_poll,
      geography,
      total_households_dem,
      average_household_size_dem,
      average_family_size_dem,
      elementary_school_enrollment_grades_1_8_dem,
      high_school_dem,
      college_or_graduate_school_dem,
      percent_high_school_graduate_or_higher_dem,
      percent_bachelor_s_degree_or_higher_dem,
      europe_dem,
      asia_dem,
      africa_dem,
      oceania_dem,
      south_america_dem,
      language_other_than_english_dem,
      percent_language_other_than_english_dem,
      trade_date,
      _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted,
      rtrs_control_number,
      trade_type_indicator,
      cusip,
      security_description,
      dated_date_of_the_issue_traded,
      interest_rate_of_the_issue_traded,
      maturity_date_of_the_issue_traded,
      when_issued_indicator,
      time_of_trade_time,
      settlement_date,
      the_par_value_of_the_trade,
      dollar_price_of_the_trade,
      the_yield_of_the_trade,
      list_offering_price_takedown_indicator,
      rtrs_publish_date,
      version_number,
      unable_to_verify_dollar_price_indicator_if_applicable,
      alternative_trading_system_ats_indicator,
      non_transaction_based_compensation_arrangement_ntbc_indicator,
      white_mr2,
      black_or_african_american_mr2,
      american_indian_and_alaska_native_mr2,
      asian_mr2,
      native_hawaiian_and_other_pacific_islander_mr2,
      some_other_race_mr2,
      two_or_more_races_mr2,
      total_population_mage2,
      male_mage2,
      female_mage2,
      _0_5_mage2,
      _5_9_mage2,
      _10_14_mage2,
      _15_19_mage2,
      _20_24_mage2,
      _25_29_mage2,
      _30_34_mage2,
      _35_39_mage2,
      _40_44_mage2,
      _45_49_mage2,
      _50_54_mage2,
      _55_59_mage2,
      _60_64_mage2,
      _65_69_mage2,
      _70_74_mage2,
      _75_79_mage2,
      _80_84_mage2,
      _85_mage2,
      median_age_mage2,
      percent_vacant_housing_units_mh,
      owner_occupied_mh,
      renter_occupied_mh,
      percent_occupied_housing_units_mh,
      less_than_50_000_mh,
      _50_000_to_99_999_mh,
      _100_000_to_149_999_mh,
      _150_000_to_199_999_mh,
      _200_000_to_299_999_mh,
      _300_000_to_499_999_mh,
      _500_000_to_999_999_mh,
      _1_000_000_or_more_mh,
      median_property_value_dollars_mh,
      median_gross_rent_dollars_mh,
      unemployment_rate_eco,
      poverty_rate_eco,
      high_school_graduate_edu,
      some_college_no_degree_edu,
      associate_s_degree_edu,
      bachelor_s_degree_edu,
      graduate_or_professional_degree_edu,
      cusip2,
      coupon_frequency,
      issuer_type,
      issuer_industry,
      issue_size,
      maturity_size,
      price_at_issue,
      yield_at_issue,
      tax_provision,
      ratings1,
      ratings2,
      ratings3,
      cluster_id
    ]
  }
}
