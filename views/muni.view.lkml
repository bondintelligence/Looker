view: muni {
  sql_table_name: `bi-model-development.looker_FINAL.muni`
    ;;


  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    value_format: "0.00\%"
    label: "10_year_treasury_rate"
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
    group_label: "economics"
  }


  dimension: __hispanic {
    type: number
    value_format: "0.00\%"
    label: "race_percent_hispanic"
    sql: ${TABLE}.__Hispanic ;;
    group_label: "demographics"
  }



  dimension: __not_proficient_in_english {
    type: number
    value_format: "0.00\%"
    label: "percent_not_proficient_english"
    sql: ${TABLE}.__Not_Proficient_in_English ;;
    group_label: "demographics"
  }

  dimension: __rural {
    type: number
    value_format: "0.00\%"
    label: "percent_rural"
    sql: ${TABLE}.__Rural ;;
    group_label: "demographics"
  }


  dimension: _non_rural {
    type: number
    value_format: "0.00\%"
    label: "percent_non_rural"
    sql: ${TABLE}._Non_Rural ;;
    group_label: "demographics"
  }



  dimension: _not_hispanic {
    type: number
    value_format: "0.00\%"
    label: "race_percent_not_hispanic"
    sql: ${TABLE}._not_Hispanic ;;
    group_label: "demographics"
  }

  dimension: _proficient {
    type: number
    value_format: "0.00\%"
    label: "percent_proficient_english"
    sql: ${TABLE}._Proficient ;;
    group_label: "demographics"
  }



  dimension: africa_dem {
    type: number
    label: "origin_africa"
    sql: ${TABLE}.Africa_dem ;;
    group_label: "demographics"
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
    group_label: "demographics"
  }



  dimension: asia_dem {
    type: number
    label: "origin_asia"
    sql: ${TABLE}.Asia_dem ;;
    group_label: "demographics"
  }

  dimension: asian_mr2 {
    type: number
    label: "race_asian"
    sql: ${TABLE}.Asian_MR2 ;;
    group_label: "demographics"
  }

  dimension: associate_s_degree_edu {
    type: number
    label: "associates_degree"
    sql: ${TABLE}.Associate_s_degree_edu ;;
    group_label: "education"
  }

  dimension: association_rate {
    type: number
    label: "social_association_rate"
    sql: ${TABLE}.Association_Rate ;;
    group_label: "demographics"
    value_format: "0.00\%"
  }

  dimension: assumed_settlement_date {
    type: string
    label: "_assumed_settlement_date"
    sql: ${TABLE}.Assumed_Settlement_Date ;;
  }

  dimension: average_daily_pm2_5 {
    type: number
    label: "air_quality_average_daily_pm2_5"
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
    group_label: "community"
  }

  dimension: average_family_size_dem {
    type: number
    label: "average_family_size"
    sql: ${TABLE}.Average_family_size_dem ;;
    group_label: "demographics"
  }

  dimension: average_household_size_dem {
    type: number
    label: "average_household_size"
    sql: ${TABLE}.Average_household_size_dem ;;
    group_label: "housing"
  }

  dimension: bachelor_s_degree_edu {
    type: number
    label: "bachelors_degree"
    sql: ${TABLE}.Bachelor_s_degree_edu ;;
    group_label: "education"
  }

  dimension: black_or_african_american_mr2 {
    type: number
    label: "race_black_or_african_american"
    sql: ${TABLE}.Black_or_African_American_MR2 ;;
    group_label: "demographics"
  }

  dimension: broker_s_broker_indicator {
    type: string
    label: "_broker_s_broker_indicator"
    # sql: ${TABLE}.Broker_s_Broker_Indicator ;;
    case: {
      when: {
        sql:  ${TABLE}.broker_s_broker_indicator = "S" ;;
        label: "sale"
      }
      when: {
        sql:  ${TABLE}.broker_s_broker_indicator = "P" ;;
        label: "purchase"
      }
  }
  }

  dimension: college_or_graduate_school_dem {
    type: number
    label: "college_or_graduate_school"
    sql: ${TABLE}.College_or_graduate_school_dem ;;
    group_label: "education"
  }

  dimension: county {
    type: string
    label: "county"
    sql: ${TABLE}.County ;;
    group_label: "geography"
  }

  dimension: coupon_frequency {
    type: number
    label: "_coupon_frequency"
    sql: ${TABLE}.Coupon_Frequency ;;
  }

  dimension: cusip {
    type: string
    label: "_cusip"
    primary_key: yes
    sql: ${TABLE}.CUSIP ;;
  }



  dimension_group: dated_date_of_the_issue_traded {
    type: time
    label: "_dated_date_of_the_issue_traded"
    timeframes: [
      raw,
      date,
      week,
      day_of_week,
      day_of_month,
      month_name,
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
    label: "elementary_school_enrollment_grades_1_8"
    sql: ${TABLE}.Elementary_school_Enrollment_grades_1_8_dem ;;
    group_label: "education"
  }

  dimension: europe_dem {
    type: number
    label: "origin_european"
    sql: ${TABLE}.Europe_dem ;;
    group_label: "demographics"
  }

  dimension: female_mage2 {
    type: number
    label: "female"
    sql: ${TABLE}.Female_MAge2 ;;
    group_label: "demographics"
  }



  dimension: geography {
    type: string
    label: "location"
    sql: ${TABLE}.Geography ;;
    group_label: "geography"
  }

  dimension: graduate_or_professional_degree_edu {
    type: number
    label: "graduate_or_professional_degree"
    sql: ${TABLE}.Graduate_or_professional_degree_edu ;;
    group_label: "education"
  }

  dimension: high_school_dem {
    type: number
    label: "high_school"
    sql: ${TABLE}.High_school_dem ;;
    group_label: "education"
  }

  dimension: high_school_graduate_edu {
    type: number
    label: "high_school_graduate"
    sql: ${TABLE}.High_school_graduate_edu ;;
    group_label: "education"
  }

  dimension: income_ratio {
    type: number
    value_format: "0.00\%"
    label: "income_ratio"
    sql: ${TABLE}.Income_Ratio ;;
    group_label: "economics"
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
    value_format: "$#,##0.00"
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
    label: "language_other_than_english"
    sql: ${TABLE}.Language_other_than_English_dem ;;
    group_label: "demographics"
  }



  dimension: list_offering_price_takedown_indicator {
    type: yesno
    label: "_list_offering_price_takedown_indicator"
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
  }

  dimension: male_mage2 {
    type: number
    label: "male"
    sql: ${TABLE}.Male_MAge2 ;;
    group_label: "demographics"
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
      day_of_week,
      day_of_month,
      month_name,
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
    value_format: "$#,##0.00"
  }

  dimension: median_age_mage2 {
    type: number
    label: "median_age"
    sql: ${TABLE}.Median_age_MAge2 ;;
    group_label: "demographics"
  }

  dimension: median_gross_rent_dollars_mh {
    type: number
    value_format: "$#,##0.00"
    label: "median_gross_rent"
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
    group_label: "housing"
  }

  dimension: median_property_value_dollars_mh {
    type: number
    value_format: "$#,##0.00"
    label: "median_property_value"
    sql: ${TABLE}.Median_Property_Value_dollars_MH ;;
    group_label: "housing"
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
    group_label: "demographics"
  }

  dimension: non_transaction_based_compensation_arrangement_ntbc_indicator {
    type: yesno
    label: "_non_transaction_based_compensation_arrangement_ntbc_indicator"
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator ;;
  }

  dimension: not_proficient_in_english {
    type: number
    label: "not_proficient_english"
    sql: ${TABLE}.Not_Proficient_in_English ;;
    group_label: "demographics"
  }

  dimension: number_of_social_associations {
    type: number
    label: "number_of_social_associations"
    sql: ${TABLE}.Number_of_Social_Associations ;;
    group_label: "demographics"
  }

  dimension: oceania_dem {
    type: number
    label: "origin_oceania"
    sql: ${TABLE}.Oceania_dem ;;
    group_label: "demographics"
  }

  dimension: owner_occupied_mh {
    type: number
    label: "owner_occupied"
    sql: ${TABLE}.Owner_occupied_MH ;;
    group_label: "housing"
  }

  dimension: percent_bachelor_s_degree_or_higher_dem {
    type: number
    value_format: "0.00\%"
    label: "percent_bachelors_degree_or_higher"
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
    group_label: "education"
  }

  dimension: percent_high_school_graduate_or_higher_dem{
    type: number
    value_format: "0.00\%"
    label: "percent_high_school_graduate_or_higher"
    sql: ${TABLE}.Percent_high_school_graduate_or_higher_dem ;;
    group_label: "education"
  }

  dimension: percent_language_other_than_english_dem {
    type: number
    value_format: "0.00\%"
    label: "percent_language_other_than_english"
    sql: ${TABLE}.Percent_Language_other_than_English_dem ;;
    group_label: "demographics"
  }

  dimension: percent_occupied_housing_units_mh {
    type: number
    value_format: "0.00\%"
    label: "percent_occupied_housing_units"
    sql: ${TABLE}.Percent_Occupied_housing_units_MH ;;
    group_label: "housing"
  }

  dimension: percent_vacant_housing_units_mh {
    type: number
    value_format: "0.00\%"
    label: "percent_vacant_housing_units"
    sql: ${TABLE}.Percent_Vacant_housing_units_MH ;;
    group_label: "housing"
  }

  dimension: population {
    type: number
    label: "population"
    sql: ${TABLE}.Population ;;
    group_label: "demographics"
  }


  dimension: poverty_rate_eco {
    type: number
    value_format: "0.00\%"
    label: "povery_rate"
    sql: ${TABLE}.Poverty_Rate_eco ;;
    group_label: "economics"
  }


  dimension: presence_of_violation_poll {
    type: yesno
    label: "presence_of_drinking_water_violation"
    sql: ${TABLE}.Presence_of_violation_poll ;;
    group_label: "community"
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
    label: "renter_occupied"
    sql: ${TABLE}.Renter_occupied_MH ;;
    group_label: "housing"
  }



  dimension: security_description {
    type: string
    label: "_security_description"
    sql: ${TABLE}.Security_Description ;;
  }

  dimension: segregation_index____black_white {
    type: number
    value_format: "0.00"
    label: "segregation_index____black_white"
    sql: ${TABLE}.Segregation_index____black_white ;;
    group_label: "demographics"
  }

  dimension: segregation_index___non_white_white {
    type: number
    value_format: "0.00"
    label: "segregation_index___non_white_white"
    sql: ${TABLE}.Segregation_Index___non_white_white ;;
    group_label: "demographics"
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
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Settlement_Date ;;
  }



  dimension: some_college_no_degree_edu {
    type: number
    label: "some_college_no_degree"
    sql: ${TABLE}.Some_college_no_degree_edu ;;
    group_label: "education"
  }

  dimension: some_other_race_mr2 {
    type: number
    label: "race_some_other_race"
    sql: ${TABLE}.Some_other_race_MR2 ;;
    group_label: "demographics"
  }

  dimension: south_america_dem {
    type: number
    label: "origin_south_america"
    sql: ${TABLE}.South_America_dem ;;
    group_label: "demographics"
  }

  dimension: state {
    type: string
    label: "state"
    sql: ${TABLE}.State ;;
    group_label: "geography"
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
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    sql: ${TABLE}.Time_of_Trade ;;
  }



  dimension: total_households_dem {
    type: number
    label: "total_households"
    sql: ${TABLE}.Total_households_dem ;;
    group_label: "housing"
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
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    sql: ${TABLE}.Trade_Date ;;
  }

  dimension: trade_type_indicator {
    type: string
    label: "_trade_type_indicator"
    # sql: ${TABLE}.Trade_Type_Indicator ;;
    case: {
      when: {
        sql:  ${TABLE}.trade_type_indicator = "D" ;;
        label: "inter-dealer trade"
      }
      when: {
        sql:  ${TABLE}.trade_type_indicator = "P" ;;
        label: "purchase from a customer by a dealer"
      }
      when: {
        sql:  ${TABLE}.trade_type_indicator = "S" ;;
        label: "sale to a customer by a dealer"
      }
    }
  }

  dimension: two_or_more_races_mr2 {
    type: number
    label: "race_two_or_more_races"
    sql: ${TABLE}.Two_or_more_races_MR2 ;;
    group_label: "demographics"
  }




  dimension: unemployment_rate_eco {
    type: number
    value_format: "0.00\%"
    label: "unemployment_rate"
    sql: ${TABLE}.Unemployment_Rate_eco ;;
    group_label: "economics"
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
    group_label: "demographics"
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

  measure: sum {
    type: sum
    drill_fields: [name]}

  measure: number_white {
    type: number
    sql: ${TABLE}.White_MR2 ;;
    drill_fields: [name]}
}
