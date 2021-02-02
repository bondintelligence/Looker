connection: "bqwarehouse"

# include all the views
include: "/views/**/*.view"

datagroup: production_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: production_default_datagroup


explore: bloomberg1 {
  always_filter: {
    filters: [cusip: "01112CBX3"]
  }
}

explore: bloomberg2 {
  always_filter: {
    filters: [cusip: "00037CRB8"]
  }
}

explore: corp {}

explore: muni {
  always_filter: {
    filters: [cusip: "00037CRB8", muni.trade_date: ""]
}
}
explore: muni_issuance3 {}
          label: "muni_issuance"


explore: price_muni_prediction {}
          label: "muni_price_prediction"

explore: price_corp_prediction {}
        label: "corp_price_prediction"
