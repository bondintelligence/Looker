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
  }


explore: bloomberg2 {}


explore: corp {
  label: "FINRA_CRSP"
  always_filter: {

    filters: [cusip: "000325AA8"]
  }}


explore: muni {

  label: "MSRB_EMMA"
  always_filter: {

    filters: [cusip: "00037CRB8", muni.trade_date: ""]
  }

  }


explore: muni_issuance {}




explore: price_muni_prediction {}


explore: price_corp_prediction {}



explore: compustat_financial_fundamental {}

explore:compustat_financial_ratios {}

explore: trace_enhanced {
  always_filter: {
    filters: [cusip_id: "369604BQ5"]
  }
}

explore:  mergent_issuance{}

explore:  mergent_bond_redemption{}
