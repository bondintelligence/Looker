view: bloomberg2 {
  sql_table_name: `bi-model-development.looker_FINAL.Bloomberg10Muni10CorpTimeseries`
    ;;

  dimension: ask_ytm {
    type: string
    sql: ${TABLE}.Yield_to_Maturity_Ask ;;
  }

  dimension: bid_ytm {
    type: string
    sql: ${TABLE}.Yield_to_Maturity_Bid ;;
  }

  dimension: cusip {
    type: string
    primary_key: yes
    sql: ${TABLE}.CUSIP ;;
  }

  dimension_group: date {
    type: time
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
    sql: ${TABLE}.Date ;;
  }



  dimension: last_price {
    type: number
    sql: ${TABLE}.Last_Price ;;
  }

  dimension: mid_price {
    type: number
    sql: ${TABLE}.Mid_Price ;;
  }

  dimension: mid_ytm {
    type: number
    sql: ${TABLE}.Yield_to_Maturity_Mid ;;
  }


  measure: count {
    type: count
    drill_fields: []



  }

  measure: ask_ytm_ {
    type:  number
    sql: ${ask_ytm} ;;
  }

  measure: bid_ytm_ {
    type: number
    sql: ${bid_ytm} ;;
  }

  measure: mid_ytm_ {
    type: number
    sql: ${mid_ytm} ;;
  }


  measure: last_price_ {
    type: number
    sql: ${last_price} ;;
  }

  measure: mid_price_ {
    type: number
    sql: ${mid_price} ;;
  }


}
