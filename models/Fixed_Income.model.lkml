label: "Fixed Income"

connection: "bqwarehouse"

# include all the views

include: "/askYield.view"
include: "/bidYield.view"
include: "/default_probablity.view"
include: "/lastPrice.view"
include: "/last_trades.view"
include: "/midPrice.view"
include: "/midYield.view"
include: "/predictedprice.view"
include: "/predictedRisk.view"
include: "/comparable_trades.view"
include: "/pricemodel.view"
include: "/Risk_Predicted_Muni.view"
include: "/Risk_Predicted_Corp.view"
include: "/recommendation_engine.view"
include: "/FINRA_CRSP.view"
include: "/MSRB_EMMA.view"
include: "/bloomberg1.view"
include: "/bloomberg2.view"
include: "/board_ex_org_summary.view"
include: "/compustat_financial_ratios.view"
include: "/mergent_bond_redemption.view"
include: "/mergent_issuance.view"
include: "/muni_issuance.view"
include: "/raven_pack_sentiment.view"
include: "/trace_enhanced.view"
include: "/compustat_financial_fundamental.view"



datagroup: production_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: production_default_datagroup



explore: bloomberg1 {
  label: "Bloomberg"
  description: "Bloomberg’s corporate action data contains more than 50 action types across capital changes, distributions, corporate events, and fixed income-specific actions. By leveraging the same identifiers as our instrument and legal entities, our corporate actions data content is linked seamlessly to instrument and legal entities for custodians, asset servicers, and other industry participants.Bloomberg’s Muni Fundamentals dataset is the largest and most comprehensive database of municipal issuer financial and operational information in the industry — allowing users to spend less time compiling data and more time on analysis.Bloomberg provides financials, operational, and reference data for 50,000+ issuers (about 120,000 funds) of municipal debt, covering 99 percent of outstanding general obligation debt and 94 percent of revenue debt. The dataset includes history going back to 2003."
  always_filter: {

    filters: [cusip: ""]
  }
  join: bloomberg2 {
    type: full_outer
    relationship: many_to_one
    sql_on: ${bloomberg1.cusip}=${bloomberg2.cusip} ;;
  }
}


explore: bloomberg2 {
  hidden: yes
  join: bloomberg1 {
    type: full_outer
    relationship: many_to_one
    sql_on: ${bloomberg1.cusip}=${bloomberg2.cusip} ;;
  }
}


explore: FINRA_CRSP {
  label: "FINRA_CRSP"
  description: "The WRDS Bond Database is a novel and unique corporate bond database compiled by WRDS Researchers using the best standards in recent fixed income research. The WRDS Bond Database allows researchers to easily and effectively access cleaned datasets of corporate bond transactions, sourced from TRACE Standard and TRACE Enhanced datasets, along with a separate dataset for monthly price, return, coupon and yield information for all corporate bonds traded since July 2002. The chart illustrates the comprehensive database coverage of all traded corporate bond issues over time. Additionally, the WRDS Bond Database includes a unique and essential mapping table that links all bond and equity issues for every firm and at each point time using information in TRACE and CRSP databases."
  always_filter: {
    filters: [cusip: ""]
    #filters: [cusip: "000325AA8"]
  }
  join: trace_enhanced {
    type: full_outer
    relationship: many_to_one
    sql_on: ${FINRA_CRSP.cusip}=${trace_enhanced.cusip_id};;
  }
  join: mergent_bond_redemption {
    type: full_outer
    relationship: many_to_one
    sql_on: ${FINRA_CRSP.cusip}=${mergent_bond_redemption.complete_cusip};;
  }
  join: mergent_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${FINRA_CRSP.cusip}=${mergent_issuance.complete_cusip};;
  }
}


explore: muni {
  label: "MSRB_EMMA"
  description: "Municipal Securities Rulemaking Board is the primary regulator of the $3.7 trillion municipal security market, the MSRB collects and makes publicly available through its Electronic Municipal Market Access (EMMA). The trades represent transactions by investors and dealers in the over-the-counter market for municipal securities issued by municipal entities, including states, counties, cities and special tax districts."
  always_filter: {

    filters: [cusip: "", muni.trade_date: ""]
  }
  join: muni_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${muni.cusip}= ${muni_issuance.cusip1};;
  }

}


explore: muni_issuance {
  description: "Source: U.S Department of Commerce"
  hidden: yes
  always_filter: {

    filters: [muni_issuance.cusip1: ""]
  }
  join: muni {
    type: full_outer
    relationship: many_to_one
    sql_on: ${muni_issuance.cusip1}=${muni.cusip} ;;
  }

}


explore: pricemodel {
  group_label: "Models"
  label: "Price Prediction Muni"
  always_filter: {
    filters: [pricemodel.CUSIP_Parameter: "010734RA1"]
  }

}

explore: risk_predicted_muni {
  group_label: "Models"
  always_filter: {
    filters: [risk_predicted_muni.CUSIP: "010734RA1"]
  }
}

explore: risk_predicted_corp {
  group_label: "Models"
  always_filter: {
    filters: [risk_predicted_corp.CUSIP_Parameter: "172070CP7"]
  }

}

explore: askYield {
  hidden: yes
}

explore: bidYield {
  hidden: yes
}

explore: default_probablity {
  hidden: yes
}

explore: lastPrice {
  hidden: yes
}

explore: last_trades {
  hidden: yes
}

explore: midPrice {
  hidden: yes
}

explore: midYield {
  hidden: yes
}

explore: predictedprice {
  hidden: yes
}


explore: comparable_trades {
  hidden:  yes
}

explore: predictedrisk {
  hidden:  yes
}




explore: compustat_financial_fundamental {
  description: "Standard & Poor's (S&P) Capital IQ is a leading provider in financial market intelligence. Standard & Poor’s is the world’s foremost provider of independent credit ratings, risk evaluation, investment research, indices, data and valuations. Compustat provides more than 500 company-level fundamentals, including items such as Income Statements, Balance Sheets, and Flow of Funds. It also offers an even larger number of supplemental data items for more than 47,000 active and 37,000 inactive companies. Compustat primarily draws its data from SEC filings, which it standardizes to allow for better comparisons. It is supplemented with additional data sources as needed. For a North American company to be added to the database, it must file distinct 10K's or 10Q's with the SEC."
  always_filter: {

    filters: [cusip: ""]
  }
  join: mergent_bond_redemption {
    type: full_outer
    relationship: many_to_one
    sql_on: ${compustat_financial_fundamental.cusip}=${mergent_bond_redemption.complete_cusip};;
  }
  join: mergent_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${compustat_financial_fundamental.cusip}=${mergent_issuance.complete_cusip};;
  }
}


explore:compustat_financial_ratios {
  description: "Standard & Poor's (S&P) Capital IQ is a leading provider in financial market intelligence. Standard & Poor’s is the world’s foremost provider of independent credit ratings, risk evaluation, investment research, indices, data and valuations. Compustat provides more than 500 company-level fundamentals, including items such as Income Statements, Balance Sheets, and Flow of Funds. It also offers an even larger number of supplemental data items for more than 47,000 active and 37,000 inactive companies. Compustat primarily draws its data from SEC filings, which it standardizes to allow for better comparisons. It is supplemented with additional data sources as needed. For a North American company to be added to the database, it must file distinct 10K's or 10Q's with the SEC."
  hidden: yes
  always_filter: {

    filters: [cusip: ""]
  }

}



explore: trace_enhanced {
  description: "FINRA is the Financial Industry Regulatory Authority, a non-governmental regulator of the entire securities industry. All broker-dealers who are FINRA member firms have an obligation to report transactions in TRACE-eligible securities. TRACE stands for Trade Reporting and Compliance Engine. It is operated by FINRA, the Financial Industry Regulatory Authority. This program reports over the counter (OTC) sales of certain fixed-income securities. The buyer or seller (or both) must be brokers listed with FINRA.The data is intended to give a historical perspective of the over-the-counter (OTC) U.S. corporate bond, agency debenture, asset-backed and mortgage backed security markets."
  always_filter: {

    filters: [trace_enhanced.cusip_id: ""]
  }
  join: FINRA_CRSP {
    type: full_outer
    relationship: many_to_one
    sql_on: ${trace_enhanced.cusip_id}=${FINRA_CRSP.cusip} ;;
  }
  join: mergent_bond_redemption {
    type: full_outer
    relationship: many_to_one
    sql_on: ${trace_enhanced.cusip_id}=${mergent_bond_redemption.complete_cusip} ;;
  }
  join: mergent_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${trace_enhanced.cusip_id}=${mergent_issuance.complete_cusip} ;;
  }
}



explore:  mergent_issuance{
  description: "Mergent Fixed Income Securities Database (FISD) is a comprehensive database of publicly offered U.S. bonds. FISD contains issue details on over 140,000 corporate, corporate MTN (medium-term note), supranational, U.S. Agency, and U.S. Treasury debt securities and includes more than 550 data items. FISD provides details on debt issues and the issuers, as well as transactions by insurance companies. It is used to research market trends, deal structures, issuer capital structures, and other areas of fixed income debt research."
  label: "Mergent FISD"
  always_filter: {

    filters: [mergent_issuance.complete_cusip: ""]
  }
  join: mergent_bond_redemption {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_issuance.complete_cusip}=${mergent_bond_redemption.complete_cusip} ;;
  }
  join: FINRA_CRSP {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_issuance.complete_cusip}=${FINRA_CRSP.cusip} ;;
  }
  join: trace_enhanced {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_issuance.complete_cusip}=${trace_enhanced.cusip_id} ;;
  }
  join: compustat_financial_fundamental {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_issuance.complete_cusip}=${compustat_financial_fundamental.cusip} ;;
  }
}




explore:  mergent_bond_redemption{
  description: "Mergent Fixed Income Securities Database (FISD) is a comprehensive database of publicly offered U.S. bonds. FISD contains issue details on over 140,000 corporate, corporate MTN (medium-term note), supranational, U.S. Agency, and U.S. Treasury debt securities and includes more than 550 data items. FISD provides details on debt issues and the issuers, as well as transactions by insurance companies. It is used to research market trends, deal structures, issuer capital structures, and other areas of fixed income debt research."
  hidden: yes
  always_filter: {

    filters: [mergent_bond_redemption.complete_cusip: ""]
  }
  join: compustat_financial_fundamental {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_bond_redemption.complete_cusip}=${compustat_financial_fundamental.cusip} ;;
  }
  join: mergent_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_bond_redemption.complete_cusip}=${mergent_issuance.complete_cusip} ;;
  }
  join: FINRA_CRSP {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_bond_redemption.complete_cusip}=${FINRA_CRSP.cusip} ;;
  }
  join: trace_enhanced {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_bond_redemption.complete_cusip}=${trace_enhanced.cusip_id} ;;
  }
}

explore:  raven_pack_sentiment {
  always_filter: {
    filters: [raven_pack_sentiment.entity_name: ""]
  }
  description: "RavenPack News Analytics is a unique source of explanatory and predictive inputs derived from news. The product includes a data set rich with structured information and potential signals and creates new trading opportunities on both scheduled and unscheduled news events. This data is used to power a number of applications ranging from high frequency trading systems requiring low latency inputs to risk and asset management models requiring factors whose time resolution may be daily, weekly, and monthly.RavenPack automatically tracks and monitors relevant information on nearly 200,000 companies, government organizations, influential people, key geographical locations, and all major currencies and traded commodities. Among the many benefits, RavenPack delivers sentiment analysis and event data most likely to impact financial markets and trading around the world"
}

explore: board_ex_summary{
  label: "Board EX"
  always_filter: {
    filters: [board_ex_summary.board_name: ""]
  }
  description: "BoardEx data consists of compensation, employment, and relationship data for 20,000+ companies from 1999-present. Access educational background, prior employment, and connections of directors and executives. Analyze the proportion of politically connected directors, using CEO-level controls such as age, gender, and experience. Extract executive stock option holdings."
}
