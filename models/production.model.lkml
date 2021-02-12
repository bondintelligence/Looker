label: "Fixed Income"

connection: "bqwarehouse"

# include all the views
include: "/views/**/*.view"



explore: bloomberg1 {}


explore: bloomberg2 {}


explore: corp {}


explore: muni {}


explore: muni_issuance_3 {}


explore: price_muni_prediction {}


explore: price_corp_prediction {}

explore: predictedprice {}

explore: compustat_financial_fundamental {}

explore:compustat_financial_ratios {}

explore: trace_enhanced {}

explore:  mergent_issuance{}

explore:  mergent_bond_redemption{}

explore: price_graphv1{}

explore: predictedrisk {}

explore: comparable_trades {}

explore: last_trades {}
