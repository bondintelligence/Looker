label: "Fixed Income"

connection: "bqwarehouse"

# include all the views
include: "/views/**/*.view"



explore: bloomberg1 {}


explore: bloomberg2 {}


explore: corp {}


explore: muni {}


explore: muni_issuance {}


explore: price_muni_prediction {}


explore: price_corp_prediction {}



explore: compustat_financial_fundamental {}

explore:compustat_financial_ratios {}

explore: trace_enhanced {}

explore:  mergent_issuance{}

explore:  mergent_bond_redemption{}

explore: price_graphv1{}
