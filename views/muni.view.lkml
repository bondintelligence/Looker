view: muni {
  sql_table_name: `bi-model-development.looker_FINAL.muni`
    ;;





  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    value_format: "0.00\%"
    label: "econ_10_year_treasury_rate"
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
  }




  dimension: __hispanic {
    type: number
    value_format: "0.00\%"
    label: "race_percent_hispanic"
    sql: ${TABLE}.__Hispanic ;;
  }



  dimension: __not_proficient_in_english {
    type: number
    value_format: "0.00\%"
    label: "dem_percent_not_proficient_english"
    sql: ${TABLE}.__Not_Proficient_in_English ;;
  }

  dimension: __rural {
    type: number
    value_format: "0.00\%"
    label: "dem_percent_rural"
    sql: ${TABLE}.__Rural ;;
  }


  dimension: _non_rural {
    type: number
    value_format: "0.00\%"
    label: "dem_percent_non_rural"
    sql: ${TABLE}._Non_Rural ;;
  }



  dimension: _not_hispanic {
    type: number
    value_format: "0.00\%"
    label: "race_percent_not_hispanic"
    sql: ${TABLE}._not_Hispanic ;;
  }

  dimension: _proficient {
    type: number
    value_format: "0.00\%"
    label: "dem_percent_proficient_english"
    sql: ${TABLE}._Proficient ;;
  }



  dimension: africa_dem {
    type: number
    label: "origin_africa"
    sql: ${TABLE}.Africa_dem ;;
  }

  dimension: alternative_trading_system_ats_indicator {
    type: yesno
    label: "_alternative_trading_system_ats_indicator"
    sql: ${TABLE}.Alternative_Trading_System_ATS_Indicator ;;
  }

  dimension: american_indian_and_alaska_native_mr2 {
    type: number
    label: "race_american_indian_and_alaska_native"
    sql: ${TABLE}.American_Indian_and_Alaska_Native_MR2 ;;
  }



  dimension: asia_dem {
    type: number
    label: "origin_asia"
    sql: ${TABLE}.Asia_dem ;;
  }

  dimension: asian_mr2 {
    type: number
    label: "race_asian"
    sql: ${TABLE}.Asian_MR2 ;;
  }

  dimension: associate_s_degree_edu {
    type: number
    label: "education_associates_degree"
    sql: ${TABLE}.Associate_s_degree_edu ;;
  }

  dimension: association_rate {
    type: number
    label: "dem_social_association_rate"
    sql: ${TABLE}.Association_Rate ;;
  }

  dimension: assumed_settlement_date {
    type: string
    label: "_assumed_settlement_date"
    sql: ${TABLE}.Assumed_Settlement_Date ;;
  }

  dimension: average_daily_pm2_5 {
    type: number
    label: "env_air_quality_average_daily_pm2_5"
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
  }

  dimension: average_family_size_dem {
    type: number
    label: "dem_average_family_size"
    sql: ${TABLE}.Average_family_size_dem ;;
  }

  dimension: average_household_size_dem {
    type: number
    label: "housing_average_household_size"
    sql: ${TABLE}.Average_household_size_dem ;;
  }

  dimension: bachelor_s_degree_edu {
    type: number
    label: "education_bachelors_degree"
    sql: ${TABLE}.Bachelor_s_degree_edu ;;
  }

  dimension: black_or_african_american_mr2 {
    type: number
    label: "race_black_or_african_american"
    sql: ${TABLE}.Black_or_African_American_MR2 ;;
  }

  dimension: broker_s_broker_indicator {
    type: string
    label: "_broker_s_broker_indicator"
    sql: ${TABLE}.Broker_s_Broker_Indicator ;;
  }

  dimension: college_or_graduate_school_dem {
    type: number
    label: "education_college_or_graduate_school"
    sql: ${TABLE}.College_or_graduate_school_dem ;;
  }

  dimension: county {
    type: string
    label: "geo_county"
    sql: ${TABLE}.County ;;
  }

  dimension: coupon_frequency {
    type: number
    label: "_coupon_frequency"
    sql: ${TABLE}.Coupon_Frequency ;;
  }

  dimension: cusip {
    type: string
    label: "_cusip"
    sql: ${TABLE}.CUSIP ;;
  }



  dimension_group: dated_date_of_the_issue_traded {
    type: time
    label: "_dated_date_of_the_issue_traded"
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
    value_format: "$#,##0.00"
    label: "_dollar_price_of_the_trade"
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: elementary_school_enrollment_grades_1_8_dem {
    type: number
    label: "education_elementary_school_enrollment_grades_1_8"
    sql: ${TABLE}.Elementary_school_Enrollment_grades_1_8_dem ;;
  }

  dimension: europe_dem {
    type: number
    label: "origin_european"
    sql: ${TABLE}.Europe_dem ;;
  }

  dimension: female_mage2 {
    type: number
    label: "dem_female"
    sql: ${TABLE}.Female_MAge2 ;;
  }



  dimension: geography {
    type: string
    label: "geo_geography"
    sql: ${TABLE}.Geography ;;
  }

  dimension: graduate_or_professional_degree_edu {
    type: number
    label: "education_graduate_or_professional_degree"
    sql: ${TABLE}.Graduate_or_professional_degree_edu ;;
  }

  dimension: high_school_dem {
    type: number
    label: "education_high_school"
    sql: ${TABLE}.High_school_dem ;;
  }

  dimension: high_school_graduate_edu {
    type: number
    label: "education_high_school_graduate"
    sql: ${TABLE}.High_school_graduate_edu ;;
  }

  dimension: income_ratio {
    type: number
    value_format: "0.00\%"
    label: "dem_income_ratio"
    sql: ${TABLE}.Income_Ratio ;;
  }



  dimension: interest_rate_of_the_issue_traded {
    type: number
    value_format: "0.00\%"
    label: "_interest_rate_of_the_issue_traded"
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }



  dimension: issue_size {
    type: number
    label: "_issue_size"
    sql: ${TABLE}.Issue_Size ;;
  }



  dimension: issuer_industry {
    type: string
    label: "_issuer_industry"
    sql: ${TABLE}.Issuer_Industry ;;
  }

  dimension: issuer_type {
    type: string
    label: "_issuer_type"
    sql: ${TABLE}.Issuer_Type ;;
  }

  dimension: language_other_than_english_dem {
    type: number
    label: "dem_language_other_than_english"
    sql: ${TABLE}.Language_other_than_English_dem ;;
  }



  dimension: list_offering_price_takedown_indicator {
    type: yesno
    label: "_list_offering_price_takedown_indicator"
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
  }

  dimension: male_mage2 {
    type: number
    label: "dem_male"
    sql: ${TABLE}.Male_MAge2 ;;
  }

  dimension_group: maturity_date_of_the_issue_traded {
    type: time
    label: "_maturity_date"
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
    label: "_maturity_size"
    sql: ${TABLE}.MaturitySize ;;
  }

  dimension: median_age_mage2 {
    type: number
    label: "dem_median_age"
    sql: ${TABLE}.Median_age_MAge2 ;;
  }

  dimension: median_gross_rent_dollars_mh {
    type: number
    value_format: "$#,##0.00"
    label: "housing_median_gross_rent"
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
  }

  dimension: median_property_value_dollars_mh {
    type: number
    value_format: "$#,##0.00"
    label: "housing_median_property_value"
    sql: ${TABLE}.Median_Property_Value_dollars_MH ;;
  }

  dimension: name {
    type: string
    label: "_name"
    sql: ${TABLE}.Name ;;
  }

  dimension: native_hawaiian_and_other_pacific_islander_mr2 {
    type: number
    label: "race_native_hawaiian_and_other_pacific_islander"
    sql: ${TABLE}.Native_Hawaiian_and_Other_Pacific_Islander_MR2 ;;
  }

  dimension: non_transaction_based_compensation_arrangement_ntbc_indicator {
    type: yesno
    label: "_non_transaction_based_compensation_arrangement_ntbc_indicator"
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator ;;
  }

  dimension: not_proficient_in_english {
    type: number
    label: "dem_not_proficient_english"
    sql: ${TABLE}.Not_Proficient_in_English ;;
  }

  dimension: number_of_social_associations {
    type: number
    label: "dem_number_of_social_associations"
    sql: ${TABLE}.Number_of_Social_Associations ;;
  }

  dimension: oceania_dem {
    type: number
    label: "origin_oceania"
    sql: ${TABLE}.Oceania_dem ;;
  }

  dimension: owner_occupied_mh {
    type: number
    label: "housing_owner_occupied"
    sql: ${TABLE}.Owner_occupied_MH ;;
  }

  dimension: percent_bachelor_s_degree_or_higher_dem {
    type: number
    value_format: "0.00\%"
    label: "education_percent_bachelors_degree_or_higher"
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
  }

  dimension: percent_high_school_graduate_or_higher_dem{
    type: number
    value_format: "0.00\%"
    label: "education_percent_high_school_graduate_or_higher"
    sql: ${TABLE}.Percent_high_school_graduate_or_higher_dem ;;
  }

  dimension: percent_language_other_than_english_dem {
    type: number
    value_format: "0.00\%"
    label: "dem_percent_language_other_than_english"
    sql: ${TABLE}.Percent_Language_other_than_English_dem ;;
  }

  dimension: percent_occupied_housing_units_mh {
    type: number
    value_format: "0.00\%"
    label: "housing_percent_occupied_housing_units"
    sql: ${TABLE}.Percent_Occupied_housing_units_MH ;;
  }

  dimension: percent_vacant_housing_units_mh {
    type: number
    value_format: "0.00\%"
    label: "housing_percent_vacant_housing_units"
    sql: ${TABLE}.Percent_Vacant_housing_units_MH ;;
  }

  dimension: population {
    type: number
    label: "dem_population"
    sql: ${TABLE}.Population ;;
  }


  dimension: poverty_rate_eco {
    type: number
    value_format: "0.00\%"
    label: "econ_povery_rate"
    sql: ${TABLE}.Poverty_Rate_eco ;;
  }


  dimension: presence_of_violation_poll {
    type: yesno
    label: "env_presence_of_drinking_water_violation"
    sql: ${TABLE}.Presence_of_violation_poll ;;
  }

  dimension: price_at_issue {
    type: number
    value_format: "$#,##0.00"
    label: "_price_at_issue"
    sql: ${TABLE}.Price_At_Issue ;;
  }

  dimension: ratings1 {
    type: string
    label: "_ratings1"
    sql: ${TABLE}.Ratings1 ;;
  }

  dimension: ratings2 {
    type: string
    label: "_ratings2"
    sql: ${TABLE}.Ratings2 ;;
  }

  dimension: ratings3 {
    type: string
    label: "_ratings3"
    sql: ${TABLE}.Ratings3 ;;
  }

  dimension: renter_occupied_mh {
    type: number
    label: "housing_renter_occupied"
    sql: ${TABLE}.Renter_occupied_MH ;;
  }



  dimension: security_description {
    type: string
    label: "_security_description"
    sql: ${TABLE}.Security_Description ;;
  }

  dimension: segregation_index____black_white {
    type: number
    value_format: "0.00"
    label: "dem_segregation_index____black_white"
    sql: ${TABLE}.Segregation_index____black_white ;;
  }

  dimension: segregation_index___non_white_white {
    type: number
    value_format: "0.00"
    label: "dem_segregation_index___non_white_white"
    sql: ${TABLE}.Segregation_Index___non_white_white ;;
  }


  dimension_group: settlement {
    type: time
    label: "_settlement"
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



  dimension: some_college_no_degree_edu {
    type: number
    label: "education_some_college_no_degree"
    sql: ${TABLE}.Some_college_no_degree_edu ;;
  }

  dimension: some_other_race_mr2 {
    type: number
    label: "race_some_other_race"
    sql: ${TABLE}.Some_other_race_MR2 ;;
  }

  dimension: south_america_dem {
    type: number
    label: "origin_south_america"
    sql: ${TABLE}.South_America_dem ;;
  }

  dimension: state {
    type: string
    label: "geo_state"
    sql: ${TABLE}.State ;;
  }

  dimension: tax_provision {
    type: string
    label: "_tax_provision"
    sql: ${TABLE}.TaxProvision ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    value_format: "$#,##0.00"
    label: "_par_value_of_the_trade"
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: the_yield_of_the_trade {
    type: number
    value_format: "0.00\%"
    label: "_yield_of_the_trade"
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension_group: time_of_trade {
    type: time
    label: "_time_of_trade"
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



  dimension: total_households_dem {
    type: number
    label: "housing_total_households"
    sql: ${TABLE}.Total_households_dem ;;
  }



  dimension_group: trade {
    type: time
    label: "_trade_date"
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
    label: "_trade_type_indicator"
    sql: ${TABLE}.Trade_Type_Indicator ;;
  }

  dimension: two_or_more_races_mr2 {
    type: number
    label: "race_two_or_more_races"
    sql: ${TABLE}.Two_or_more_races_MR2 ;;
  }




  dimension: unemployment_rate_eco {
    type: number
    value_format: "0.00\%"
    label: "econ_unemployment_rate"
    sql: ${TABLE}.Unemployment_Rate_eco ;;
  }



  dimension: weighted_price_indicator {
    type: string
    label: "_weighted_price_indicator"
    sql: ${TABLE}.Weighted_Price_Indicator ;;
  }

  dimension: when_issued_indicator {
    type: yesno
    label: "_when_issued_indicator"
    sql: ${TABLE}.When_Issued_Indicator ;;
  }

  dimension: white_mr2 {
    type: number
    label: "race_white"
    sql: ${TABLE}.White_MR2 ;;
  }

  dimension: year {
    type: number
    label: "_year"
    sql: ${TABLE}.Year ;;
  }

  dimension: yield_at_issue {
    type: number
    value_format: "0.00\%"
    label: "_yield_at_issue"
    sql: ${TABLE}.Yield_at_Issue ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
