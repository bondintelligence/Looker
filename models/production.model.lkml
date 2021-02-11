connection: "bqwarehouse"

# include all the views
include: "/views/**/*.view"

datagroup: production_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: production_default_datagroup

explore: mergent_bond_redemption {}

explore: bloomberg1 {}

explore: risk_table {}

explore: bloomberg2_pivot2 {}

explore: muni_issuance {}

explore: bloomberg2_table {}

explore: bloomberg2 {}

explore: bloombergcopy {}

explore: bond_data1_mili {}

explore: bond_data1_mili_processed {}

explore: df_v1 {}

explore: final_data {}

explore: imported_model2_results {}

explore: imported_model2_test {}

explore: imported_model2_testresults {}

explore: imported_model2_values {}

explore: million_unique_test_updated {}

explore: testmodel_results {}

explore: trunc_corp {}
