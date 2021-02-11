view: compustat_financial_ratios {
  sql_table_name: `bi-model-development.looker_FINAL.Compustat_Financial_Ratios`
    ;;

  dimension: accrual {
    type: number
    sql: ${TABLE}.accrual ;;
  }

  dimension_group: adate {
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
    sql: ${TABLE}.adate ;;
  }

  dimension: adv_sale {
    type: number
    sql: ${TABLE}.adv_sale ;;
  }

  dimension: aftret_eq {
    type: number
    sql: ${TABLE}.aftret_eq ;;
  }

  dimension: aftret_equity {
    type: number
    sql: ${TABLE}.aftret_equity ;;
  }

  dimension: aftret_invcapx {
    type: number
    sql: ${TABLE}.aftret_invcapx ;;
  }

  dimension: at_turn {
    type: number
    sql: ${TABLE}.at_turn ;;
  }

  dimension: bm {
    type: number
    sql: ${TABLE}.bm ;;
  }

  dimension: capei {
    type: number
    sql: ${TABLE}.CAPEI ;;
  }

  dimension: capital_ratio {
    type: number
    sql: ${TABLE}.capital_ratio ;;
  }

  dimension: cash_conversion {
    type: number
    sql: ${TABLE}.cash_conversion ;;
  }

  dimension: cash_debt {
    type: number
    sql: ${TABLE}.cash_debt ;;
  }

  dimension: cash_lt {
    type: number
    sql: ${TABLE}.cash_lt ;;
  }

  dimension: cash_ratio {
    type: number
    sql: ${TABLE}.cash_ratio ;;
  }

  dimension: cfm {
    type: number
    sql: ${TABLE}.cfm ;;
  }

  dimension: curr_debt {
    type: number
    sql: ${TABLE}.curr_debt ;;
  }

  dimension: curr_ratio {
    type: number
    sql: ${TABLE}.curr_ratio ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.cusip ;;
  }

  dimension: de_ratio {
    type: number
    sql: ${TABLE}.de_ratio ;;
  }

  dimension: debt_assets {
    type: number
    sql: ${TABLE}.debt_assets ;;
  }

  dimension: debt_at {
    type: number
    sql: ${TABLE}.debt_at ;;
  }

  dimension: debt_capital {
    type: number
    sql: ${TABLE}.debt_capital ;;
  }

  dimension: debt_ebitda {
    type: number
    sql: ${TABLE}.debt_ebitda ;;
  }

  dimension: debt_invcap {
    type: number
    sql: ${TABLE}.debt_invcap ;;
  }

  dimension: divyield {
    type: number
    sql: ${TABLE}.divyield ;;
  }

  dimension: dltt_be {
    type: number
    sql: ${TABLE}.dltt_be ;;
  }

  dimension: dpr {
    type: number
    sql: ${TABLE}.dpr ;;
  }

  dimension: efftax {
    type: number
    sql: ${TABLE}.efftax ;;
  }

  dimension: equity_invcap {
    type: number
    sql: ${TABLE}.equity_invcap ;;
  }

  dimension: evm {
    type: number
    sql: ${TABLE}.evm ;;
  }

  dimension: fcf_ocf {
    type: number
    sql: ${TABLE}.fcf_ocf ;;
  }

  dimension: gpm {
    type: number
    sql: ${TABLE}.gpm ;;
  }

  dimension: gprof {
    type: number
    sql: ${TABLE}.GProf ;;
  }

  dimension: gvkey {
    type: number
    sql: ${TABLE}.gvkey ;;
  }

  dimension: int_debt {
    type: number
    sql: ${TABLE}.int_debt ;;
  }

  dimension: int_totdebt {
    type: number
    sql: ${TABLE}.int_totdebt ;;
  }

  dimension: intcov {
    type: number
    sql: ${TABLE}.intcov ;;
  }

  dimension: intcov_ratio {
    type: number
    sql: ${TABLE}.intcov_ratio ;;
  }

  dimension: inv_turn {
    type: number
    sql: ${TABLE}.inv_turn ;;
  }

  dimension: invt_act {
    type: number
    sql: ${TABLE}.invt_act ;;
  }

  dimension: lt_debt {
    type: number
    sql: ${TABLE}.lt_debt ;;
  }

  dimension: lt_ppent {
    type: number
    sql: ${TABLE}.lt_ppent ;;
  }

  dimension: npm {
    type: number
    sql: ${TABLE}.npm ;;
  }

  dimension: ocf_lct {
    type: number
    sql: ${TABLE}.ocf_lct ;;
  }

  dimension: opmad {
    type: number
    sql: ${TABLE}.opmad ;;
  }

  dimension: opmbd {
    type: number
    sql: ${TABLE}.opmbd ;;
  }

  dimension: pay_turn {
    type: number
    sql: ${TABLE}.pay_turn ;;
  }

  dimension: pcf {
    type: number
    sql: ${TABLE}.pcf ;;
  }

  dimension: pe_exi {
    type: number
    sql: ${TABLE}.pe_exi ;;
  }

  dimension: pe_inc {
    type: number
    sql: ${TABLE}.pe_inc ;;
  }

  dimension: pe_op_basic {
    type: number
    sql: ${TABLE}.pe_op_basic ;;
  }

  dimension: pe_op_dil {
    type: number
    sql: ${TABLE}.pe_op_dil ;;
  }

  dimension: peg_1yrforward {
    type: number
    sql: ${TABLE}.PEG_1yrforward ;;
  }

  dimension: peg_ltgforward {
    type: number
    sql: ${TABLE}.PEG_ltgforward ;;
  }

  dimension: peg_trailing {
    type: number
    sql: ${TABLE}.PEG_trailing ;;
  }

  dimension: permno {
    type: number
    sql: ${TABLE}.permno ;;
  }

  dimension: pretret_earnat {
    type: number
    sql: ${TABLE}.pretret_earnat ;;
  }

  dimension: pretret_noa {
    type: number
    sql: ${TABLE}.pretret_noa ;;
  }

  dimension: profit_lct {
    type: number
    sql: ${TABLE}.profit_lct ;;
  }

  dimension: ps {
    type: number
    sql: ${TABLE}.ps ;;
  }

  dimension: ptb {
    type: number
    sql: ${TABLE}.ptb ;;
  }

  dimension: ptpm {
    type: number
    sql: ${TABLE}.ptpm ;;
  }

  dimension_group: public {
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
    sql: ${TABLE}.public_date ;;
  }

  dimension_group: qdate {
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
    sql: ${TABLE}.qdate ;;
  }

  dimension: quick_ratio {
    type: number
    sql: ${TABLE}.quick_ratio ;;
  }

  dimension: rd_sale {
    type: number
    sql: ${TABLE}.rd_sale ;;
  }

  dimension: rect_act {
    type: number
    sql: ${TABLE}.rect_act ;;
  }

  dimension: rect_turn {
    type: number
    sql: ${TABLE}.rect_turn ;;
  }

  dimension: roa {
    type: number
    sql: ${TABLE}.roa ;;
  }

  dimension: roce {
    type: number
    sql: ${TABLE}.roce ;;
  }

  dimension: roe {
    type: number
    sql: ${TABLE}.roe ;;
  }

  dimension: sale_equity {
    type: number
    sql: ${TABLE}.sale_equity ;;
  }

  dimension: sale_invcap {
    type: number
    sql: ${TABLE}.sale_invcap ;;
  }

  dimension: sale_nwc {
    type: number
    sql: ${TABLE}.sale_nwc ;;
  }

  dimension: short_debt {
    type: number
    sql: ${TABLE}.short_debt ;;
  }

  dimension: staff_sale {
    type: number
    sql: ${TABLE}.staff_sale ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.TICKER ;;
  }

  dimension: totdebt_invcap {
    type: number
    sql: ${TABLE}.totdebt_invcap ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
