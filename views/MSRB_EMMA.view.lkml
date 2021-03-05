view: muni {
  sql_table_name: `bi-model-development.looker_FINAL.muni`;;

  # derived_table: {
  #   sql: SELECT * FROM bi-model-development.looker_FINAL.muni WHERE

  #   (broker_s_broker_indicator = "S" OR broker_s_broker_indicator = "P");;
  # }


  dimension: _10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    value_format: "0.00\%"
    label: "10_year_treasury_rate"
    description: "Source: Board of Governors of the Federal Reserve System (US)"
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
    group_label: "_economy"
  }


  dimension: __hispanic {
    type: number
    value_format: "0.00\%"
    label: "race_percent_hispanic"
    sql: ${TABLE}.__Hispanic ;;
    group_label: "_demographics"
  }


  dimension: __not_proficient_in_english {
    type: number
    value_format: "0.00\%"
    label: "percent_not_proficient_english"
    description: "Percent of population not proficient in English"
    sql: ${TABLE}.__Not_Proficient_in_English ;;
    group_label: "_demographics"
  }

  dimension: __rural {
    type: number
    value_format: "0.00\%"
    label: "percent_rural"
    description: "percent of population living in rural areas Source: Census"
    sql: ${TABLE}.__Rural ;;
    group_label: "_demographics"
  }


  dimension: _non_rural {
    type: number
    value_format: "0.00\%"
    label: "percent_non_rural"
    description: "percent of population living in non-rural areas Source: Census"
    sql: ${TABLE}._Non_Rural ;;
    group_label: "_demographics"
  }



  dimension: _not_hispanic {
    type: number
    value_format: "0.00\%"
    label: "race_percent_not_hispanic"
    sql: ${TABLE}._not_Hispanic ;;
    group_label: "_demographics"
  }



  dimension: africa_dem {
    type: number
    label: "origin_africa"
    description: "Region of Origin"
    sql: ${TABLE}.Africa_dem ;;
    group_label: "_demographics"
  }


  dimension: alternative_trading_system_ats_indicator {
    type: yesno
    label: "alternative trading system ats indicator"
    description: "An indicator (Y) showing that an inter-dealer transaction was executed with or using the services of an alternative trading system (ATS) with Form ATS on file with the SEC"
    sql: ${TABLE}.Alternative_Trading_System_ATS_Indicator ;;
    #case: {
    #  when: {
    #    sql:  ${TABLE}.Alternative_Trading_System_ATS_Indicator = NULL ;;
    #    label: "false"
    #  }
    #}
  }

  dimension: american_indian_and_alaska_native_mr2 {
    type: number
    label: "race_american_indian_and_alaska_native"
    sql: ${TABLE}.American_Indian_and_Alaska_Native_MR2 ;;
    group_label: "_demographics"
  }



  dimension: asia_dem {
    type: number
    label: "origin_asia"
    description: "Region of Origin"
    sql: ${TABLE}.Asia_dem ;;
    group_label: "_demographics"
  }

  dimension: asian_mr2 {
    type: number
    label: "race_asian"
    sql: ${TABLE}.Asian_MR2 ;;
    group_label: "_demographics"
  }

  dimension: associate_s_degree_edu {
    type: number
    label: "associates_degree"
    sql: ${TABLE}.Associate_s_degree_edu ;;
    group_label: "_education"
  }

  dimension: association_rate {
    type: number
    label: "social_association_rate"
    description: "Associations per 10,000 population. Minimal contact with others and limited involvement in community life are associated with increased morbidity and early mortality.[1,2] Research suggests that the magnitude of risk associated with social isolation is similar to the risk of cigarette smoking.[3] Furthermore, social support networks have been identified as powerful predictors of health behaviors, suggesting that individuals without a strong social network are less likely to make healthy lifestyle choices than individuals with a strong network. A study found that people living in areas with high levels of social trust are less likely to rate their health status as fair or poor than people living in areas with low levels of social trust.[4] Researchers have argued that social trust is enhanced when people belong to voluntary groups and organizations because people who belong to such groups tend to trust others who belong to the same group.[5]"
    sql: ${TABLE}.Association_Rate ;;
    group_label: "_demographics"
    value_format: "0.00\%"
  }

  # dimension: assumed_settlement_date {
  #   type: string
  #   description: "For new issues where the initial settlement date is not known at the time of execution, this field is a date 15 business days after trade date."
  #   label: "assumed_settlement_date"
  #   sql: ${TABLE}.Assumed_Settlement_Date ;;
  # }

  dimension: average_daily_pm2_5 {
    type: number
    label: "air_quality"
    description: "Average daily density of fine particulate matter in micrograms per cubic meter (PM2.5) Source: Environmental Protection Agency"
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
    group_label: "_community"
  }

  dimension: average_family_size_dem {
    type: number
    label: "average_family_size"
    sql: ${TABLE}.Average_family_size_dem ;;
    group_label: "_demographics"
  }

  dimension: average_household_size_dem {
    type: number
    label: "average_household_size"
    sql: ${TABLE}.Average_household_size_dem ;;
    group_label: "_housing"
  }

  dimension: bachelor_s_degree_edu {
    type: number
    label: "bachelors_degree"
    sql: ${TABLE}.Bachelor_s_degree_edu ;;
    group_label: "_education"
  }

  dimension: black_or_african_american_mr2 {
    type: number
    label: "race_black_or_african_american"
    sql: ${TABLE}.Black_or_African_American_MR2 ;;
    group_label: "_demographics"
  }

  dimension: broker_s_broker_indicator {
    type: string
    label: "brokers indicator"
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
    description: "Number of college students currently enrolled"
    sql: ${TABLE}.College_or_graduate_school_dem ;;
    group_label: "_education"
  }

  dimension: county {
    type: string
    label: "county"
    sql: ${TABLE}.County ;;
    group_label: "geography"
  }

  dimension: coupon_frequency {
    type: number
    label: "coupon frequency"
    sql: ${TABLE}.Coupon_Frequency ;;
  }

  dimension: cusip {
    type: string
    label: "cusip"
    primary_key: yes
    sql: ${TABLE}.CUSIP ;;
  }



  dimension_group: dated_date_of_the_issue_traded {
    description: "DATED DATE is the date from which interest on a new issue of municipal securities typically starts to accrue. This date is often used to identify a particular series of bonds of an issuer."
    type: time
    label: "issue_traded"
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
    sql: ${TABLE}.Dated_date_of_the_issue_traded ;;
  }

  dimension: dollar_price_of_the_trade{
    type: number
    value_format: "$#,##0.00"
    label: "dollar price of the trade"
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  dimension: elementary_school_enrollment_grades_1_8_dem {
    type: number
    label: "elementary_school_enrollment_grades_1_8"
    sql: ${TABLE}.Elementary_school_Enrollment_grades_1_8_dem ;;
    group_label: "_education"
  }

  dimension: europe_dem {
    type: number
    label: "origin_european"
    description: "Region of Origin"
    sql: ${TABLE}.Europe_dem ;;
    group_label: "_demographics"
  }

  dimension: female_mage2 {
    type: number
    label: "female"
    description: "total number of females in population Source: Census"
    sql: ${TABLE}.Female_MAge2 ;;
    group_label: "_demographics"
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
    description: "Number of graduates amongst population over 21"
    sql: ${TABLE}.Graduate_or_professional_degree_edu ;;
    group_label: "_education"
  }

  dimension: high_school_dem {
    type: number
    label: "high_school_enrollment"
    description: "Number of students currently enrolled"
    sql: ${TABLE}.High_school_dem ;;
    group_label: "_education"
  }

  dimension: high_school_graduate_edu {
    type: number
    label: "high_school_graduate"
    description: "Number of High school graduates amongst population over 21"
    sql: ${TABLE}.High_school_graduate_edu ;;
    group_label: "_education"
  }

  dimension: income_ratio {
    type: number
    value_format: "0.00\%"
    label: "income_ratio"
    sql: ${TABLE}.Income_Ratio ;;
    group_label: "_economy"
  }



  dimension: interest_rate_of_the_issue_traded {
    type: number
    value_format: "0.00\%"
    label: "interest rate of the issue traded"
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }



  dimension: issue_size {
    type: number
    label: "issue size"
    sql: ${TABLE}.Issue_Size ;;
    value_format: "$#,##0.00"
  }



  dimension: issuer_industry {
    type: string
    label: "issuer industry"
    sql: ${TABLE}.Issuer_Industry ;;
  }

  dimension: issuer_type {
    type: string
    label: "issuer type"
    sql: ${TABLE}.Issuer_Type ;;
  }

  dimension: language_other_than_english_dem {
    type: number
    label: "language_other_than_english"
    description: "primary language other than english"
    sql: ${TABLE}.Language_other_than_English_dem ;;
    group_label: "_demographics"
  }



  dimension: list_offering_price_takedown_indicator {
    type: yesno
    label: "list offering price takedown indicator"
    description: "An indicator (Y) showing that the transaction price was reported as a primary market sale transaction executed on the first day of trading of a new issue:-by a sole underwriter, syndicate manager, syndicate member or selling group member at the published list offering price for the security (“List Offering Price” ); or-by a sole underwriter, syndicate manager, syndicate member or selling group member at a discount from the published list offering price for the security (“RTRS Takedown Transaction"
    sql: ${TABLE}.List_Offering_Price_Takedown_Indicator ;;
    #case: {
    #  when: {
    #    sql:  ${TABLE}.List_Offering_Price_Takedown_Indicator = "NULL" ;;
    #    label: "false"
    #  }
    #}
  }


  dimension: male_mage2 {
    type: number
    label: "male"
    description: "total number of males in population"
    sql: ${TABLE}.Male_MAge2 ;;
    group_label: "_demographics"
  }

  dimension_group: maturity_date_of_the_issue_traded {
    type: time
    label: "maturity"
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
    label: "maturity size"
    sql: ${TABLE}.MaturitySize ;;
    value_format: "$#,##0.00"
  }

  dimension: median_age_mage2 {
    type: number
    label: "median_age"
    sql: ${TABLE}.Median_age_MAge2 ;;
    group_label: "_demographics"
  }

  dimension: median_gross_rent_dollars_mh {
    type: number
    value_format: "$#,##0.00"
    label: "median_gross_rent"
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
    group_label: "_housing"
  }

  dimension: median_property_value_dollars_mh {
    type: number
    value_format: "$#,##0.00"
    label: "median_property_value"
    sql: ${TABLE}.Median_Property_Value_dollars_MH ;;
    group_label: "_housing"
  }

  dimension: name {
    type: string
    label: "name"
    sql: ${TABLE}.Name ;;
  }

  dimension: native_hawaiian_and_other_pacific_islander_mr2 {
    type: number
    label: "race_native_hawaiian_and_other_pacific_islander"
    sql: ${TABLE}.Native_Hawaiian_and_Other_Pacific_Islander_MR2 ;;
    group_label: "_demographics"
  }

  dimension: non_transaction_based_compensation_arrangement_ntbc_indicator {
    type: yesno
    label: "non transaction based compensation arrangement ntbc indicator"
    description: "An indicator (Y) showing that a customer transaction did not include a mark-up, mark-down or commission"
    sql: ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator ;;
    #case: {
    #  when: {
    #    sql:  ${TABLE}.Non_Transaction_Based_Compensation_Arrangement_NTBC_Indicator = "NULL" ;;
    #    label: "false"
    #  }
    #}

  }


  dimension: not_proficient_in_english {
    type: number
    label: "not_proficient_english"
    sql: ${TABLE}.Not_Proficient_in_English ;;
    group_label: "_demographics"
  }

  dimension: number_of_social_associations {
    type: number
    label: "number_of_social_associations"
    sql: ${TABLE}.Number_of_Social_Associations ;;
    group_label: "_demographics"
  }

  dimension: oceania_dem {
    type: number
    label: "origin_oceania"
    description: "Region or Origin"
    sql: ${TABLE}.Oceania_dem ;;
    group_label: "_demographics"
  }

  dimension: owner_occupied_mh {
    type: number
    label: "owner_occupied"
    description: "Number of households occupied by owners"
    sql: ${TABLE}.Owner_occupied_MH ;;
    group_label: "_housing"
  }

  dimension: percent_bachelor_s_degree_or_higher_dem {
    type: number
    value_format: "0.00\%"
    label: "percent_bachelors_degree_or_higher"
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
    group_label: "_education"
  }

  dimension: percent_high_school_graduate_or_higher_dem{
    type: number
    value_format: "0.00\%"
    label: "percent_high_school_graduate_or_higher"
    sql: ${TABLE}.Percent_high_school_graduate_or_higher_dem ;;
    group_label: "_education"
  }

  dimension: percent_language_other_than_english_dem {
    type: number
    value_format: "0.00\%"
    label: "percent_language_other_than_english"
    sql: ${TABLE}.Percent_Language_other_than_English_dem ;;
    group_label: "_demographics"
  }

  dimension: percent_occupied_housing_units_mh {
    type: number
    value_format: "0.00\%"
    label: "percent_occupied_housing_units"
    description: "Percent of households that are occupied"
    sql: ${TABLE}.Percent_Occupied_housing_units_MH ;;
    group_label: "_housing"
  }

  dimension: percent_vacant_housing_units_mh {
    type: number
    value_format: "0.00\%"
    label: "percent_vacant_housing_units"
    description: "Percent of households that are vacant"
    sql: ${TABLE}.Percent_Vacant_housing_units_MH ;;
    group_label: "_housing"
  }

  dimension: population {
    type: number
    label: "population"
    sql: ${TABLE}.Population ;;
    group_label: "_demographics"
  }


  dimension: poverty_rate_eco {
    type: number
    value_format: "0.00\%"
    label: "povery_rate"
    sql: ${TABLE}.Poverty_Rate_eco ;;
    group_label: "_economy"
  }


  dimension: presence_of_violation_poll {
    type: yesno
    label: "Water_Quality"
    description: "'Indicator of the presence of health-related drinking water violations. Yes - indicates the presence of a violation, No - indicates no violation. Source: Safe Drinking Water Information System"
    sql: ${TABLE}.Presence_of_violation_poll ;;
    group_label: "_community"
  }

  dimension: price_at_issue {
    type: number
    value_format: "$#,##0.00"
    label: "price at issue"
    sql: ${TABLE}.Price_At_Issue ;;
  }

  dimension: ratings1 {
    type: string
    label: "Moody's"
    group_label: "Ratings"
    sql: ${TABLE}.Ratings1 ;;
  }

  dimension: ratings2 {
    type: string
    label: "Fitch"
    group_label: "Ratings"
    sql: ${TABLE}.Ratings2 ;;
  }

  dimension: ratings3 {
    type: string
    label: "S&P"
    group_label: "Ratings"
    sql: ${TABLE}.Ratings3 ;;
  }

  dimension: renter_occupied_mh {
    type: number
    label: "renter_occupied"
    description: "Number of households occupied by renters"
    sql: ${TABLE}.Renter_occupied_MH ;;
    group_label: "_housing"
  }



  dimension: security_description {
    type: string
    label: "security description"
    sql: ${TABLE}.Security_Description ;;
  }

  dimension: segregation_index____black_white {
    type: number
    value_format: "0.00"
    label: "segregation_index____black_white"
    description: "Index of dissimilarity where higher values indicate greater residential segregation between Black and White county residents. Although most overtly discriminatory policies and practices promoting segregation, such as separate schools or seating on public transportation or in restaurants based on race, have been illegal for decades, segregation caused by structural, institutional, and individual racism still exists in many parts of the country. The removal of discriminatory policies and practices has impacted acts of racism, but has had little effect on structural racism, like residential segregation, resulting in lingering structural inequalities. Residential segregation is a key determinant of racial differences in socioeconomic mobility and, additionally, can create social and physical risks in residential environments that adversely affect health.[1] Although this area of research is gaining interest, structural forms of racism and their relationship to health inequities remain under-studied.[2]
    Residential segregation remains prevalent in many areas of the country and may influence both personal and community well-being. Residential segregation of Black and White residents is considered a fundamental cause of health disparities in the US and has been linked to poor health outcomes, including mortality, a wide variety of reproductive, infectious, and chronic diseases, and other adverse conditions.[2,3] Structural racism is also linked to poor-quality housing and disproportionate exposure to environmental toxins.[4] Individuals living in segregated neighborhoods often experience increased violence, reduced educational and employment opportunities, limited access to quality health care and restrictions to upward mobility.[3,4]"
    sql: ${TABLE}.Segregation_index____black_white ;;
    group_label: "_demographics"
  }

  dimension: segregation_index___non_white_white {
    type: number
    description: "Index of dissimilarity where higher values indicate greater residential segregation between Black and White county residents. Although most overtly discriminatory policies and practices promoting segregation, such as separate schools or seating on public transportation or in restaurants based on race, have been illegal for decades, segregation caused by structural, institutional, and individual racism still exists in many parts of the country. The removal of discriminatory policies and practices has impacted acts of racism, but has had little effect on structural racism, like residential segregation, resulting in lingering structural inequalities. Residential segregation is a key determinant of racial differences in socioeconomic mobility and, additionally, can create social and physical risks in residential environments that adversely affect health.[1] Although this area of research is gaining interest, structural forms of racism and their relationship to health inequities remain under-studied.[2]
    Residential segregation remains prevalent in many areas of the country and may influence both personal and community well-being. Residential segregation of Black and White residents is considered a fundamental cause of health disparities in the US and has been linked to poor health outcomes, including mortality, a wide variety of reproductive, infectious, and chronic diseases, and other adverse conditions.[2,3] Structural racism is also linked to poor-quality housing and disproportionate exposure to environmental toxins.[4] Individuals living in segregated neighborhoods often experience increased violence, reduced educational and employment opportunities, limited access to quality health care and restrictions to upward mobility.[3,4]"
    value_format: "0.00"
    label: "segregation_index___non_white_white"
    sql: ${TABLE}.Segregation_Index___non_white_white ;;
    group_label: "_demographics"
  }


  dimension_group: settlement {
    type: time
    label: "settlement"
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
    description: "population over 21 with some college but no degree"
    sql: ${TABLE}.Some_college_no_degree_edu ;;
    group_label: "_education"
  }

  dimension: some_other_race_mr2 {
    type: number
    label: "race_some_other_race"
    sql: ${TABLE}.Some_other_race_MR2 ;;
    group_label: "_demographics"
  }

  dimension: south_america_dem {
    type: number
    label: "origin_south_america"
    description: "Region of Origin"
    sql: ${TABLE}.South_America_dem ;;
    group_label: "_demographics"
  }

  dimension: state {
    type: string
    label: "state"
    sql: ${TABLE}.State ;;
    group_label: "geography"
  }

  dimension: tax_provision {
    type: string
    label: "tax provision"
    sql: ${TABLE}.TaxProvision ;;
  }

  dimension: the_par_value_of_the_trade {
    type: number
    value_format: "$#,##0.00"
    label: "par value of the trade"
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  dimension: the_yield_of_the_trade {
    type: number
    value_format: "0.00\%"
    label: "yield of the trade"
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  dimension_group: time_of_trade {
    type: time
    label: "time of"
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
    group_label: "_housing"
  }



  dimension_group: trade {
    type: time
    label: "trade"
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
    label: "trade type indicator"
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
    group_label: "_demographics"
  }




  dimension: unemployment_rate_eco {
    type: number
    value_format: "0.00\%"
    label: "unemployment_rate"
    sql: ${TABLE}.Unemployment_Rate_eco ;;
    group_label: "_economy"
  }



  # dimension: weighted_price_indicator {
  #   type: string
  #   description: "An indicator (Y) that the transaction price was a “weighted average price” based on multiple transactions done at different prices earlier in the day to accumulate the par amount needed to make this transaction."
  #   label: "weighted_price_indicator"
  #   sql: ${TABLE}.Weighted_Price_Indicator ;;
  # }

  dimension: when_issued_indicator {
    type: yesno
    label: "when issued indicator"
    #case: {
    #  when: {
    #    sql:  ${TABLE}.trade_type_indicator = "NULL" ;;
    #    label: "false"
    #  }
    #}
    sql: ${TABLE}.When_Issued_Indicator ;;
  }


  dimension: white_mr2 {
    type: number
    label: "race_white"
    sql: ${TABLE}.White_MR2 ;;
    group_label: "_demographics"
  }

  dimension: year {
    type: number
    label: "year"
    sql: ${TABLE}.Year ;;
  }

  dimension: yield_at_issue {
    type: number
    value_format: "0.00\%"
    label: "yield at issue"
    sql: ${TABLE}.Yield_at_Issue ;;
  }


  ######################################################################################

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: sum {
    type: sum
    drill_fields: [name]}


  measure: __10_year_treasury_constant_maturity_rate_percent_daily_not_seasonally_adjusted {
    type: number
    value_format: "0.00\%"
    label: "10_year_treasury_rate"
    description: "Source: Board of Governors of the Federal Reserve System (US)"
    sql: ${TABLE}._10_Year_Treasury_Constant_Maturity_Rate_Percent_Daily_Not_Seasonally_Adjusted ;;
    group_label: "_economy"
  }


  measure: __hispanic_ {
    type: number
    value_format: "0.00\%"
    label: "race_percent_hispanic"
    sql: ${TABLE}.__Hispanic ;;
    group_label: "_demographics"
  }


  measure: __not_proficient_in_english_ {
    type: number
    value_format: "0.00\%"
    label: "percent_not_proficient_english"
    description: "Percent of population not proficient in English"
    sql: ${TABLE}.__Not_Proficient_in_English ;;
    group_label: "_demographics"
  }

  measure: __rural_ {
    type: number
    value_format: "0.00\%"
    label: "percent_rural"
    description: "percent of population living in rural areas Source: Census"
    sql: ${TABLE}.__Rural ;;
    group_label: "_demographics"
  }


  measure: _non_rural_ {
    type: number
    value_format: "0.00\%"
    label: "percent_non_rural"
    description: "percent of population living in non-rural areas Source: Census"
    sql: ${TABLE}._Non_Rural ;;
    group_label: "_demographics"
  }



  measure: _not_hispanic_ {
    type: number
    value_format: "0.00\%"
    label: "race_percent_not_hispanic"
    sql: ${TABLE}._not_Hispanic ;;
    group_label: "_demographics"
  }



  measure: africa_dem_ {
    type: number
    label: "origin_africa"
    description: "Region of Origin"
    sql: ${TABLE}.Africa_dem ;;
    group_label: "_demographics"
  }


  measure: american_indian_and_alaska_native_mr2_ {
    type: number
    label: "race_american_indian_and_alaska_native"
    sql: ${TABLE}.American_Indian_and_Alaska_Native_MR2 ;;
    group_label: "_demographics"
  }



  measure: asia_dem_ {
    type: number
    label: "origin_asia"
    description: "Region of Origin"
    sql: ${TABLE}.Asia_dem ;;
    group_label: "_demographics"
  }

  measure: asian_mr2_ {
    type: number
    label: "race_asian"
    sql: ${TABLE}.Asian_MR2 ;;
    group_label: "_demographics"
  }

  measure: associate_s_degree_edu_ {
    type: number
    label: "associates_degree"
    sql: ${TABLE}.Associate_s_degree_edu ;;
    group_label: "_education"
  }

  measure: association_rate_ {
    type: number
    label: "social_association_rate"
    description: "Associations per 10,000 population. Minimal contact with others and limited involvement in community life are associated with increased morbidity and early mortality.[1,2] Research suggests that the magnitude of risk associated with social isolation is similar to the risk of cigarette smoking.[3] Furthermore, social support networks have been identified as powerful predictors of health behaviors, suggesting that individuals without a strong social network are less likely to make healthy lifestyle choices than individuals with a strong network. A study found that people living in areas with high levels of social trust are less likely to rate their health status as fair or poor than people living in areas with low levels of social trust.[4] Researchers have argued that social trust is enhanced when people belong to voluntary groups and organizations because people who belong to such groups tend to trust others who belong to the same group.[5]"
    sql: ${TABLE}.Association_Rate ;;
    group_label: "_demographics"
    value_format: "0.00\%"
  }


  measure: average_daily_pm2_5_ {
    type: number
    label: "air_quality"
    description: "Average daily density of fine particulate matter in micrograms per cubic meter (PM2.5) Source: Environmental Protection Agency"
    sql: ${TABLE}.Average_Daily_PM2_5 ;;
    group_label: "_community"
  }

  measure: average_family_size_dem_ {
    type: number
    label: "average_family_size"
    sql: ${TABLE}.Average_family_size_dem ;;
    group_label: "_demographics"
  }

  measure: average_household_size_dem_ {
    type: number
    label: "average_household_size"
    sql: ${TABLE}.Average_household_size_dem ;;
    group_label: "_housing"
  }

  measure: bachelor_s_degree_edu_ {
    type: number
    label: "bachelors_degree"
    sql: ${TABLE}.Bachelor_s_degree_edu ;;
    group_label: "_education"
  }

  measure: black_or_african_american_mr2_ {
    type: number
    label: "race_black_or_african_american"
    sql: ${TABLE}.Black_or_African_American_MR2 ;;
    group_label: "_demographics"
  }


  measure: college_or_graduate_school_dem_ {
    type: number
    label: "college_or_graduate_school"
    description: "Number of college students currently enrolled"
    sql: ${TABLE}.College_or_graduate_school_dem ;;
    group_label: "_education"
  }

  measure: coupon_frequency_ {
    type: number
    label: "coupon_frequency"
    sql: ${TABLE}.Coupon_Frequency ;;
  }


  measure: dollar_price_of_the_trade_ {
    type: number
    value_format: "$#,##0.00"
    label: "dollar_price_of_the_trade"
    sql: ${TABLE}.Dollar_Price_of_the_trade ;;
  }

  measure: elementary_school_enrollment_grades_1_8_dem_ {
    type: number
    label: "elementary_school_enrollment_grades_1_8"
    sql: ${TABLE}.Elementary_school_Enrollment_grades_1_8_dem ;;
    group_label: "_education"
  }

  measure: europe_dem_ {
    type: number
    label: "origin_european"
    description: "Region of Origin"
    sql: ${TABLE}.Europe_dem ;;
    group_label: "_demographics"
  }

  measure: female_mage2_ {
    type: number
    label: "female"
    description: "total number of females in population Source: Census"
    sql: ${TABLE}.Female_MAge2 ;;
    group_label: "_demographics"
  }


  measure: graduate_or_professional_degree_edu_ {
    type: number
    label: "graduate_or_professional_degree"
    description: "Number of graduates amongst population over 21"
    sql: ${TABLE}.Graduate_or_professional_degree_edu ;;
    group_label: "_education"
  }

  measure: high_school_dem_ {
    type: number
    label: "high_school_enrollment"
    description: "Number of students currently enrolled"
    sql: ${TABLE}.High_school_dem ;;
    group_label: "_education"
  }

  measure: high_school_graduate_edu_ {
    type: number
    label: "high_school_graduate"
    description: "Number of High school graduates amongst population over 21"
    sql: ${TABLE}.High_school_graduate_edu ;;
    group_label: "_education"
  }

  measure: income_ratio_ {
    type: number
    value_format: "0.00\%"
    label: "income_ratio"
    sql: ${TABLE}.Income_Ratio ;;
    group_label: "_economy"
  }



  measure: interest_rate_of_the_issue_traded_ {
    type: number
    value_format: "0.00\%"
    label: "interest_rate_of_the_issue_traded"
    sql: ${TABLE}.Interest_rate_of_the_issue_traded ;;
  }



  measure: issue_size_ {
    type: number
    label: "issue_size"
    sql: ${TABLE}.Issue_Size ;;
    value_format: "$#,##0.00"
  }

  measure: language_other_than_english_dem_ {
    type: number
    label: "language_other_than_english"
    description: "primary language other than english"
    sql: ${TABLE}.Language_other_than_English_dem ;;
    group_label: "_demographics"
  }

  measure: male_mage2_ {
    type: number
    label: "male"
    description: "total number of males in population"
    sql: ${TABLE}.Male_MAge2 ;;
    group_label: "_demographics"
  }


  measure: maturity_size_ {
    type: number
    label: "maturity_size"
    sql: ${TABLE}.MaturitySize ;;
    value_format: "$#,##0.00"
  }

  measure: median_age_mage2_ {
    type: number
    label: "median_age"
    sql: ${TABLE}.Median_age_MAge2 ;;
    group_label: "_demographics"
  }

  measure: median_gross_rent_dollars_mh_ {
    type: number
    value_format: "$#,##0.00"
    label: "median_gross_rent"
    sql: ${TABLE}.Median_Gross_Rent_dollars_MH ;;
    group_label: "_housing"
  }

  measure: median_property_value_dollars_mh_ {
    type: number
    value_format: "$#,##0.00"
    label: "median_property_value"
    sql: ${TABLE}.Median_Property_Value_dollars_MH ;;
    group_label: "_housing"
  }

  measure: native_hawaiian_and_other_pacific_islander_mr2_ {
    type: number
    label: "race_native_hawaiian_and_other_pacific_islander"
    sql: ${TABLE}.Native_Hawaiian_and_Other_Pacific_Islander_MR2 ;;
    group_label: "_demographics"
  }

  measure: not_proficient_in_english_ {
    type: number
    label: "not_proficient_english"
    sql: ${TABLE}.Not_Proficient_in_English ;;
    group_label: "_demographics"
  }

  measure: number_of_social_associations_ {
    type: number
    label: "number_of_social_associations"
    sql: ${TABLE}.Number_of_Social_Associations ;;
    group_label: "_demographics"
  }

  measure: oceania_dem_ {
    type: number
    label: "origin_oceania"
    description: "Region or Origin"
    sql: ${TABLE}.Oceania_dem ;;
    group_label: "_demographics"
  }

  measure: owner_occupied_mh_ {
    type: number
    label: "owner_occupied"
    description: "Number of households occupied by owners"
    sql: ${TABLE}.Owner_occupied_MH ;;
    group_label: "_housing"
  }

  measure: percent_bachelor_s_degree_or_higher_dem_ {
    type: number
    value_format: "0.00\%"
    label: "percent_bachelors_degree_or_higher"
    sql: ${TABLE}.Percent_bachelor_s_degree_or_higher_dem ;;
    group_label: "_education"
  }

  measure: percent_high_school_graduate_or_higher_dem_ {
    type: number
    value_format: "0.00\%"
    label: "percent_high_school_graduate_or_higher"
    sql: ${TABLE}.Percent_high_school_graduate_or_higher_dem ;;
    group_label: "_education"
  }

  measure: percent_language_other_than_english_dem_ {
    type: number
    value_format: "0.00\%"
    label: "percent_language_other_than_english"
    sql: ${TABLE}.Percent_Language_other_than_English_dem ;;
    group_label: "_demographics"
  }

  measure: percent_occupied_housing_units_mh_ {
    type: number
    value_format: "0.00\%"
    label: "percent_occupied_housing_units"
    description: "Percent of households that are occupied"
    sql: ${TABLE}.Percent_Occupied_housing_units_MH ;;
    group_label: "_housing"
  }

  measure: percent_vacant_housing_units_mh_ {
    type: number
    value_format: "0.00\%"
    label: "percent_vacant_housing_units"
    description: "Percent of households that are vacant"
    sql: ${TABLE}.Percent_Vacant_housing_units_MH ;;
    group_label: "_housing"
  }

  measure: population_ {
    type: number
    label: "population"
    sql: ${TABLE}.Population ;;
    group_label: "_demographics"
  }


  measure: poverty_rate_eco_ {
    type: number
    value_format: "0.00\%"
    label: "povery_rate"
    sql: ${TABLE}.Poverty_Rate_eco ;;
    group_label: "_economy"
  }


  measure: price_at_issue_ {
    type: number
    value_format: "$#,##0.00"
    label: "price_at_issue"
    sql: ${TABLE}.Price_At_Issue ;;
  }

  measure: renter_occupied_mh_ {
    type: number
    label: "renter_occupied"
    description: "Number of households occupied by renters"
    sql: ${TABLE}.Renter_occupied_MH ;;
    group_label: "_housing"
  }

  measure: segregation_index____black_white_ {
    type: number
    value_format: "0.00"
    label: "segregation_index____black_white"
    description: "Index of dissimilarity where higher values indicate greater residential segregation between Black and White county residents. Although most overtly discriminatory policies and practices promoting segregation, such as separate schools or seating on public transportation or in restaurants based on race, have been illegal for decades, segregation caused by structural, institutional, and individual racism still exists in many parts of the country. The removal of discriminatory policies and practices has impacted acts of racism, but has had little effect on structural racism, like residential segregation, resulting in lingering structural inequalities. Residential segregation is a key determinant of racial differences in socioeconomic mobility and, additionally, can create social and physical risks in residential environments that adversely affect health.[1] Although this area of research is gaining interest, structural forms of racism and their relationship to health inequities remain under-studied.[2]
    Residential segregation remains prevalent in many areas of the country and may influence both personal and community well-being. Residential segregation of Black and White residents is considered a fundamental cause of health disparities in the US and has been linked to poor health outcomes, including mortality, a wide variety of reproductive, infectious, and chronic diseases, and other adverse conditions.[2,3] Structural racism is also linked to poor-quality housing and disproportionate exposure to environmental toxins.[4] Individuals living in segregated neighborhoods often experience increased violence, reduced educational and employment opportunities, limited access to quality health care and restrictions to upward mobility.[3,4]"
    sql: ${TABLE}.Segregation_index____black_white ;;
    group_label: "_demographics"
  }

  measure: segregation_index___non_white_white_ {
    type: number
    description: "Index of dissimilarity where higher values indicate greater residential segregation between Black and White county residents. Although most overtly discriminatory policies and practices promoting segregation, such as separate schools or seating on public transportation or in restaurants based on race, have been illegal for decades, segregation caused by structural, institutional, and individual racism still exists in many parts of the country. The removal of discriminatory policies and practices has impacted acts of racism, but has had little effect on structural racism, like residential segregation, resulting in lingering structural inequalities. Residential segregation is a key determinant of racial differences in socioeconomic mobility and, additionally, can create social and physical risks in residential environments that adversely affect health.[1] Although this area of research is gaining interest, structural forms of racism and their relationship to health inequities remain under-studied.[2]
    Residential segregation remains prevalent in many areas of the country and may influence both personal and community well-being. Residential segregation of Black and White residents is considered a fundamental cause of health disparities in the US and has been linked to poor health outcomes, including mortality, a wide variety of reproductive, infectious, and chronic diseases, and other adverse conditions.[2,3] Structural racism is also linked to poor-quality housing and disproportionate exposure to environmental toxins.[4] Individuals living in segregated neighborhoods often experience increased violence, reduced educational and employment opportunities, limited access to quality health care and restrictions to upward mobility.[3,4]"
    value_format: "0.00"
    label: "segregation_index___non_white_white"
    sql: ${TABLE}.Segregation_Index___non_white_white ;;
    group_label: "_demographics"
  }


  measure: some_college_no_degree_edu_ {
    type: number
    label: "some_college_no_degree"
    description: "population over 21 with some college but no degree"
    sql: ${TABLE}.Some_college_no_degree_edu ;;
    group_label: "_education"
  }

  measure: some_other_race_mr2_ {
    type: number
    label: "race_some_other_race"
    sql: ${TABLE}.Some_other_race_MR2 ;;
    group_label: "_demographics"
  }

  measure: south_america_dem_ {
    type: number
    label: "origin_south_america"
    description: "Region of Origin"
    sql: ${TABLE}.South_America_dem ;;
    group_label: "_demographics"
  }


  measure: the_par_value_of_the_trade_ {
    type: number
    value_format: "$#,##0.00"
    label: "par_value_of_the_trade"
    sql: ${TABLE}.The_par_value_of_the_trade ;;
  }

  measure: the_yield_of_the_trade_ {
    type: number
    value_format: "0.00\%"
    label: "yield_of_the_trade"
    sql: ${TABLE}.The_yield_of_the_trade ;;
  }

  measure: total_households_dem_ {
    type: number
    label: "total_households"
    sql: ${TABLE}.Total_households_dem ;;
    group_label: "_housing"
  }

  measure: two_or_more_races_mr2_ {
    type: number
    label: "race_two_or_more_races"
    sql: ${TABLE}.Two_or_more_races_MR2 ;;
    group_label: "_demographics"
  }




  measure: unemployment_rate_eco_ {
    type: number
    value_format: "0.00\%"
    label: "unemployment_rate"
    sql: ${TABLE}.Unemployment_Rate_eco ;;
    group_label: "_economy"
  }

  measure: white_mr2_ {
    type: number
    label: "race_white"
    sql: ${TABLE}.White_MR2 ;;
    group_label: "_demographics"
  }

  measure: year_ {
    type: number
    label: "year"
    sql: ${TABLE}.Year ;;
  }

  measure: yield_at_issue_ {
    type: number
    value_format: "0.00\%"
    label: "yield_at_issue"
    sql: ${TABLE}.Yield_at_Issue ;;
  }



}
