label: "Fixed Income"

connection: "bqwarehouse"

# include all the views
include: "/views/**/*.view"

datagroup: production_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: production_default_datagroup



explore: bloomberg1 {always_filter: {

    filters: [cusip: "005596DZ1"]
  }
    join: bloomberg2 {
      type: full_outer
      relationship: many_to_one
      sql_on: ${bloomberg1.cusip}=${bloomberg2.cusip} ;;
    }
  }


explore: bloomberg2 {
  join: bloomberg1 {
    type: full_outer
    relationship: many_to_one
    sql_on: ${bloomberg1.cusip}=${bloomberg2.cusip} ;;
  }
}


explore: corp {
  label: "FINRA_CRSP"
  always_filter: {

    filters: [cusip: "000325AA8"]
  }
  join: trace_enhanced {
    type: full_outer
    relationship: many_to_one
    sql_on: ${corp.cusip}=${trace_enhanced.cusip_id};;
  }
  join: mergent_bond_redemption {
    type: full_outer
    relationship: many_to_one
    sql_on: ${corp.cusip}=${mergent_bond_redemption.complete_cusip};;
  }
  join: mergent_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${corp.cusip}=${mergent_issuance.complete_cusip};;
  }
}


explore: muni {
  label: "MSRB_EMMA"
  always_filter: {

    filters: [cusip: "00037CRB8", muni.trade_date: ""]
  }
  join: muni_issuance {
    type: full_outer
    relationship: many_to_one
    sql_on: ${muni.cusip}= ${muni_issuance.cusip1};;
  }

}


explore: muni_issuance {
  always_filter: {

    filters: [muni_issuance.cusip1: "512714"]
  }
  join: muni {
    type: full_outer
    relationship: many_to_one
    sql_on: ${muni_issuance.cusip1}=${muni.cusip} ;;
    }

  }



explore: price_muni_prediction {}


explore: price_corp_prediction {}



explore: compustat_financial_fundamental {
  always_filter: {

    filters: [cusip: "017427105"]
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
  always_filter: {

    filters: [cusip: "00036110"]
  }
}



explore: trace_enhanced {
  always_filter: {

    filters: [trace_enhanced.cusip_id: "38259PAB8"]
  }
  join: corp {
    type: full_outer
    relationship: many_to_one
    sql_on: ${trace_enhanced.cusip_id}=${corp.cusip} ;;
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
  always_filter: {

    filters: [mergent_issuance.complete_cusip: "012896AT3"]
  }
  join: mergent_bond_redemption {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_issuance.complete_cusip}=${mergent_bond_redemption.complete_cusip} ;;
  }
  join: corp {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_issuance.complete_cusip}=${corp.cusip} ;;
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
  always_filter: {

    filters: [mergent_bond_redemption.complete_cusip: "000361AR6"]
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
  join: corp {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_bond_redemption.complete_cusip}=${corp.cusip} ;;
  }
  join: trace_enhanced {
    type: full_outer
    relationship: many_to_one
    sql_on: ${mergent_bond_redemption.complete_cusip}=${trace_enhanced.cusip_id} ;;
  }
}

explore:  raven_pack_sentiment {}

explore: board_ex_org_summary{}
