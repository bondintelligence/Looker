view: rel_val_corp {
  sql_table_name: `bi-model-development.looker_FINAL.RelVal_Corp_Joined`
    ;;

  dimension: bond_type {
    type: string
    sql: ${TABLE}.Bond_Type ;;
  }

  dimension: classifications {
    type: number
    sql: ${TABLE}.Classifications ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.CUSIP ;;
  }

  dimension: offering_price {
    type: string
    sql: ${TABLE}.Offering_Price ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.PRICE_EOM ;;
  }

  dimension: risk {
    type: number
    sql: ${TABLE}.Risk ;;
  }

  dimension: yield {
    type: number
    sql: ${TABLE}.Yield ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
