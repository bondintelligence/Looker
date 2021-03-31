view: default_probability {
  sql_table_name: `bi-model-development.looker_FINAL.Default_Probablity`
    ;;
  dimension: default_percentage {
    type: number
    sql: ${TABLE}.default_percentage ;;
  }
  dimension: year_number {
    type: number
    sql: ${TABLE}.year_number ;;
  }
  measure: default_percentage_measure {
    type: number
    sql: ${default_percentage} ;;
  }
  measure: year_number_measure {
    type: number
    sql: ${year_number} ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
