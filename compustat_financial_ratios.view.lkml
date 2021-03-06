view: compustat_financial_ratios {
  # sql_table_name: `bi-model-development.looker_FINAL.Compustat_Financial_Ratios`
  #   ;;

  derived_table: {
    sql: SELECT * FROM bi-model-development.looker_FINAL.Compustat_Financial_Ratios WHERE equity_invcap IS NOT NULL AND
    totdebt_invcap IS NOT NULL AND divyield IS NOT NULL AND npm IS NOT NULL AND debt_capital IS NOT NULL
    AND debt_at IS NOT NULL AND sale_invcap IS NOT NULL AND cfm IS NOT NULL AND lt_ppent IS NOT NULL AND
    invt_act IS NOT NULL AND at_turn IS NOT NULL AND inv_turn IS NOT NULL AND pay_turn  IS NOT NULL AND rect_turn IS NOT NULL AND sale_equity IS NOT NULL AND sale_nwc IS NOT NULL AND  cash_debt  IS NOT NULL AND debt_ebitda  IS NOT NULL AND fcf_ocf IS NOT NULL AND int_debt  IS NOT NULL AND int_totdebt  IS NOT NULL AND dltt_be  IS NOT NULL AND ocf_lct  IS NOT NULL AND rect_act IS NOT NULL AND short_debt  IS NOT NULL AND cash_conversion IS NOT NULL AND accrual IS NOT NULL AND aftret_eq IS NOT NULL AND aftret_invcapx IS NOT NULL AND aftret_equity IS NOT NULL AND pretret_noa IS NOT NULL AND pretret_earnat IS NOT NULL AND roa IS NOT NULL AND roce IS NOT NULL AND roe IS NOT NULL AND intcov IS NOT NULL AND intcov_ratio IS NOT NULL AND bm IS NOT NULL AND ptb IS NOT NULL AND pcf IS NOT NULL AND PEG_trailing IS NOT NULL;;
  }

  dimension: accrual {
    type: number
    group_label: "Other"
    description: "Accruals as a fraction of average Total Assets based on most recent two periods"
    sql: ${TABLE}.accrual ;;
  }

  dimension_group: adate {
    label: "year end"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.adate ;;
  }

  dimension: adv_sale {
    type: number
    label: "Avertising Expenses/Sales"
    group_label: "Other"
    description: "Advertising Expenses as a fraction of Sales"
    sql: ${TABLE}.adv_sale ;;
  }

  dimension: aftret_eq {
    type: number
    label: "After-tax Return on Average Common Equity"
    group_label: "Profitability"
    description: "Net Income as a fraction of average of Common Equity based on most recent two periods"
    sql: ${TABLE}.aftret_eq ;;
  }

  dimension: aftret_equity {
    type: number
    label: "After-tax Return on Total Stockholders’ Equity"
    group_label: "Profitability"
    description: "Net Income as a fraction of average of Total Shareholders’ Equity based on most recent two periods"
    sql: ${TABLE}.aftret_equity ;;
  }

  dimension: aftret_invcapx {
    type: number
    label: "After-tax Return on Invested Capital"
    group_label: "Profitability"
    description: "Net Income plus Interest Expenses as a fraction of Invested Capital"
    sql: ${TABLE}.aftret_invcapx ;;
  }

  dimension: at_turn {
    type: number
    label: "Asset Turnover"
    group_label: "Efficiency"
    description: "Sales as a fraction of the average Total Assets based on the most recent two periods"
    sql: ${TABLE}.at_turn ;;
  }

  dimension: bm {
    type: number
    label: "Book/Market"
    group_label: "Valuation"
    description: "Book Value of Equity as a fraction of Market Value of Equity"
    sql: ${TABLE}.bm ;;
  }

  dimension: capei {
    type: number
    label: "Shillers Cyclically Adjusted P/E Ratio"
    group_label: "Valuation"
    description: "Multiple of Market Value of Equity to 5-year moving average of Net Income"
    sql: ${TABLE}.CAPEI ;;
  }

  dimension: capital_ratio {
    type: number
    label: "Capitalization Ratio"
    group_label: "Capitalization"
    description: "Total Long-term Debt as a fraction of the sum of Total Long-term Debt, Common/Ordinary Equity and Preferred Stock"
    sql: ${TABLE}.capital_ratio ;;
  }

  dimension: cash_conversion {
    type: number
    label: "Cash Conversion Cycle (Days)"
    group_label: "Liquidity"
    description: "Inventories per daily COGS plus Account Receivables per daily Sales minus Account Payables per daily COGS"
    sql: ${TABLE}.cash_conversion ;;
  }

  dimension: cash_debt {
    type: number
    label: "Cash Flow/Total Debt"
    group_label: "Financial Soundness"
    description: "Operating Cash Flow as a fraction of Total Debt"
    sql: ${TABLE}.cash_debt ;;
  }

  dimension: cash_lt {
    type: number
    label: "Cash Balance/Total Liabilities"
    description: "Cash Balance as a fraction of Total Liabilities"
    group_label: "Financial Soundness"
    sql: ${TABLE}.cash_lt ;;
  }

  dimension: cash_ratio {
    type: number
    group_label: "Liquidity"
    description: "Cash and Short-term Investments as a fraction of Current Liabilities"
    sql: ${TABLE}.cash_ratio ;;
  }

  dimension: cfm {
    type: number
    label: "Cash Flow Margin"
    description: "Income before Extraordinary Items and Depreciation as a fraction of Sales"
    group_label: "Financial Soundness"
    sql: ${TABLE}.cfm ;;
  }

  dimension: curr_debt {
    type: number
    label: "Current Liabilities/Total Liabilities"
    group_label: "Financial Soundness"
    description: "Current Liabilities as a fraction of Total Liabilities"
    sql: ${TABLE}.curr_debt ;;
  }

  dimension: curr_ratio {
    type: number
    label: "Current Ratio"
    group_label: "Liquidity"
    description: "Current Assets as a fraction of Current Liabilities"
    sql: ${TABLE}.curr_ratio ;;
  }

  dimension: cusip {
    type: string
    sql: ${TABLE}.cusip;;
  }

  dimension: de_ratio {
    type: number
    label: "Total Debt/Equity"
    group_label: "Solvency"
    description: "Total Liabilities to Shareholders’ Equity (common and preferred)"
    sql: ${TABLE}.de_ratio ;;
  }

  dimension: debt_assets {
    type: number
    group_label: "Solvency"
    description: "Total Debt as a fraction of Total Assets"
    sql: ${TABLE}.debt_assets ;;
  }

  dimension: debt_at {
    type: number
    label: "Total Debt/Total Assets"
    group_label: "Solvency"
    description: "Total Liabilities as a fraction of Total Assets"
    sql: ${TABLE}.debt_at ;;
  }

  dimension: debt_capital {
    type: number
    group_label: "Solvency"
    description: "Total Debt as a fraction of Total Capital, where Total Debt is defined as the sum of Accounts Payable and Total Debt in Current and Long-term Liabilities, and Total Capital is defined as the sum of Total Debt and Total Equity (common and preferred)"
    sql: ${TABLE}.debt_capital ;;
  }

  dimension: debt_ebitda {
    type: number
    group_label: "Financial Soundness"
    description: "Gross Debt as a fraction of EBITDA"
    sql: ${TABLE}.debt_ebitda ;;
  }

  dimension: debt_invcap {
    type: number
    label: "Long-term Debt/Invested Capital"
    group_label: "Capitalization"
    description: "Long-term Debt as a fraction of Invested Capital"
    sql: ${TABLE}.debt_invcap ;;
  }

  dimension: divyield {
    type: number
    label: "Dividend Yield"
    group_label: "Valuation"
    description: "Indicated Dividend Rate as a fraction of Price"
    sql: ${TABLE}.divyield ;;
  }

  dimension: dltt_be {
    type: number
    label: "Long-term Debt/Book Equity"
    group_label: "Financial Soundness"
    description: "Long-term Debt to Book Equity"
    sql: ${TABLE}.dltt_be ;;
  }

  dimension: dpr {
    type: number
    label: "Dividend Payout Ratio"
    group_label: "Valuation"
    description: "Dividends as a fraction of Income Before Extra. Items"
    sql: ${TABLE}.dpr ;;
  }

  dimension: efftax {
    type: number
    label: "Effective Tax Rate"
    group_label: "Profitability"
    description: "Income Tax as a fraction of Pretax Income"
    sql: ${TABLE}.efftax ;;
  }

  dimension: equity_invcap {
    type: number
    label: "Common Equity/Invested Capital"
    group_label: "Capitalization"
    description: "Common Equity as a fraction of Invested Capital"
    sql: ${TABLE}.equity_invcap ;;
  }

  dimension: evm {
    type: number
    label: "Enterprise Value Multiple"
    group_label: "Valuation"
    description: "Multiple of Enterprise Value to EBITDA"
    sql: ${TABLE}.evm ;;
  }

  dimension: fcf_ocf {
    type: number
    label: "Free Cash Flow/Operating Cash Flow"
    group_label: "Financial Soundness"
    description: "Free Cash Flow as a fraction of Operating Cash Flow, where Free Cash Flow is defined as the difference between Operating Cash Flow and Capital Expenditures"
    sql: ${TABLE}.fcf_ocf ;;
  }

  dimension: gpm {
    type: number
    label: "Gross Profit Margin"
    group_label: "Profitability"
    description: "Gross Profit as a fraction of Sales"
    sql: ${TABLE}.gpm ;;
  }

  dimension: gprof {
    type: number
    label: "Gross Profit/Total Assets"
    group_label: "Profitability"
    description: "Gross Profitability as a fraction of Total Assets"
    sql: ${TABLE}.GProf ;;
  }

  dimension: gvkey {
    type: number
    sql: ${TABLE}.gvkey ;;
  }

  dimension: int_debt {
    type: number
    label: "Interest/Average Long-term Debt"
    group_label: "Financial Soundness"
    description: "Interest as a fraction of average Long-term debt based on most recent two periods"
    sql: ${TABLE}.int_debt ;;
  }

  dimension: int_totdebt {
    type: number
    label: "Interest/Average Total Debt"
    group_label: "Financial Soundness"
    description: "Interest as a fraction of average Total Debt based on most recent two periods"
    sql: ${TABLE}.int_totdebt ;;
  }

  dimension: intcov {
    label: "After-tax Interest Coverage"
    group_label: "Solvency"
    description: "Multiple of After-tax Income to Interest and Related Expenses"
    type: number
    sql: ${TABLE}.intcov ;;
  }

  dimension: intcov_ratio {
    type: number
    label: "Interest Coverage Ratio"
    group_label: "Solvency"
    description: "Multiple of Earnings Before Interest and Taxes to Interest and Related Expenses"
    sql: ${TABLE}.intcov_ratio ;;
  }

  dimension: inv_turn {
    type: number
    label: "Inventory Turnover"
    group_label: "Efficiency"
    description: "COGS as a fraction of the average Inventories based on the most recent two periods"
    sql: ${TABLE}.inv_turn ;;
  }

  dimension: invt_act {
    type: number
    label: "Inventory/Current Assets"
    group_label: "Financial Soundness"
    description: "Inventories as a fraction of Current Assets"
    sql: ${TABLE}.invt_act ;;
  }

  dimension: lt_debt {
    type: number
    label: "Long-term Debt/Total Liabilities"
    group_label: "Financial Soundness"
    description: "Long-term Debt as a fraction of Total Liabilities"
    sql: ${TABLE}.lt_debt ;;
  }

  dimension: lt_ppent {
    type: number
    label: "Total Liabilities/Total Tangible Assets"
    group_label: "Financial Soundness"
    description: "Total Liabilities to Total Tangible Assets"
    sql: ${TABLE}.lt_ppent ;;
  }

  dimension: npm {
    type: number
    label: "Net Profit Margin"
    group_label: "Profitability"
    description: "Net Income as a fraction of Sales"
    sql: ${TABLE}.npm ;;
  }

  dimension: ocf_lct {
    type: number
    label: "Operating CF/Current Liabilities"
    group_label: "Financial Soundness"
    description: "Operating Cash Flow as a fraction of Current Liabilities"
    sql: ${TABLE}.ocf_lct ;;
  }

  dimension: opmad {
    type: number
    label: "Operating Profit Margin After Depreciation"
    group_label: "Profitability"
    description: "Operating Income After Depreciation as a fraction of Sales"
    sql: ${TABLE}.opmad ;;
  }

  dimension: opmbd {
    type: number
    label: "Operating Profit Margin Before Depreciation"
    group_label: "Profitability"
    description: "Operating Income Before Depreciation as a fraction of Sales"
    sql: ${TABLE}.opmbd ;;
  }

  dimension: pay_turn {
    type: number
    label: "Payables Turnover"
    group_label: "Efficiency"
    description: "COGS and change in Inventories as a fraction of the average of Accounts Payable based on the most recent two periods"
    sql: ${TABLE}.pay_turn ;;
  }

  dimension: pcf {
    type: number
    label: "Price/Cash flow"
    group_label: "Valuation"
    description: "Multiple of Market Value of Equity to Net Cash Flow from Operating Activities"
    sql: ${TABLE}.pcf ;;
  }

  dimension: pe_exi {
    type: number
    label: "P/E (Diluted, Excl. EI)"
    group_label: "Valuation"
    description: "Price-to-Earnings, excl. Extraordinary Items (diluted)"
    sql: ${TABLE}.pe_exi ;;
  }

  dimension: pe_inc {
    type: number
    label: "P/E (Diluted, Incl. EI)"
    group_label: "Valuation"
    description: "Price-to-Earnings, incl. Extraordinary Items (diluted)"
    sql: ${TABLE}.pe_inc ;;
  }

  dimension: pe_op_basic {
    type: number
    label: "Price/Operating Earnings (Basic, Excl. EI)"
    group_label: "Valuation"
    description: "Price to Operating EPS, excl. Extraordinary Items (Basic)"
    sql: ${TABLE}.pe_op_basic ;;
  }

  dimension: pe_op_dil {
    type: number
    label: "Price/Operating Earnings (Diluted, Excl. EI)"
    group_label: "Valuation"
    description: "Price to Operating EPS, excl. Extraordinary Items (Diluted)"
    sql: ${TABLE}.pe_op_dil ;;
  }

  dimension: peg_1yrforward {
    type: number
    label: "Forward P/E to 1-year Growth (PEG) ratio"
    group_label: "Valuation"
    description: "Price-to-Earnings, excl. Extraordinary Items (diluted) to 1-Year EPS Growth rate"
    sql: ${TABLE}.PEG_1yrforward ;;
  }

  dimension: peg_ltgforward {
    type: number
    label: "Forward P/E to Long-term Growth (PEG) ratio"
    group_label: "Valuation"
    description: "Price-to-Earnings, excl. Extraordinary Items (diluted) to Long-term EPS Growth rate"
    sql: ${TABLE}.PEG_ltgforward ;;
  }

  dimension: peg_trailing {
    type: number
    label: "Trailing P/E to Growth (PEG) ratio"
    group_label: "Valuation"
    description: "Price-to-Earnings, excl. Extraordinary Items (diluted) to 3-Year past EPS Growth"
    sql: ${TABLE}.PEG_trailing ;;
  }

  dimension: permno {
    type: number
    sql: ${TABLE}.permno ;;
  }

  dimension: pretret_earnat {
    type: number
    label: "Pre-tax Return on Total Earning Assets"
    group_label: "Profitability"
    description: "Operating Income After Depreciation as a fraction of average Total Earnings Assets (TEA) based on most recent two periods, where TEA is defined as the sum of Property Plant and Equipment and Current Assets"
    sql: ${TABLE}.pretret_earnat ;;
  }

  dimension: pretret_noa {
    type: number
    label: "Pre-tax return on Net Operating Assets"
    group_label: "Profitability"
    description: "Operating Income After Depreciation as a fraction of average Net Operating Assets (NOA) based on most recent two periods, where NOA is defined as the sum of Property Plant and Equipment and Current Assets minus Current Liabilities"
    sql: ${TABLE}.pretret_noa ;;
  }

  dimension: profit_lct {
    type: number
    label: "Profit Before Depreciation/Current Liabilities"
    group_label: "Financial Soundness"
    description: "Operating Income before D&A as a fraction of Current Liabilities"
    sql: ${TABLE}.profit_lct ;;
  }

  dimension: ps {
    type: number
    label: "Price/Sales"
    group_label: "Valuation"
    description: "Multiple of Market Value of Equity to Sales"
    sql: ${TABLE}.ps ;;
  }

  dimension: ptb {
    type: number
    label: "Price/Book"
    group_label: "Valuation"
    description: "Multiple of Market Value of Equity to Book Value of Equity"
    sql: ${TABLE}.ptb ;;
  }

  dimension: ptpm {
    type: number
    label: "Pre-tax Profit Margin"
    group_label: "Profitability"
    description: "Pretax Income as a fraction of Sales"
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
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.public_date ;;
  }

  dimension_group: qdate {
    label: "quarter end"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.qdate ;;
  }

  dimension: quick_ratio {
    type: number
    group_label: "Liquidity"
    description: "Quick Ratio: Current Assets net of Inventories as a fraction of Current Liabilities"
    sql: ${TABLE}.quick_ratio ;;
  }

  dimension: rd_sale {
    type: number
    group_label: "Other"
    description: "R&D expenses as a fraction of Sales"
    sql: ${TABLE}.rd_sale ;;
  }

  dimension: rect_act {
    type: number
    label: "Receivables/Current Assets"
    group_label: "Financial Soundness"
    description: "Accounts Receivables as a fraction of Current Assets"
    sql: ${TABLE}.rect_act ;;
  }

  dimension: rect_turn {
    type: number
    label: "Receivables Turnover"
    group_label: "Efficiency"
    description: "Sales as a fraction of the average of Accounts Receivables based on the most recent two periods"
    sql: ${TABLE}.rect_turn ;;
  }

  dimension: roa {
    type: number
    label: "Return on Assets"
    group_label: "Profitability"
    description: "Operating Income Before Depreciation as a fraction of average Total Assets based on most recent two periods"
    sql: ${TABLE}.roa ;;
  }

  dimension: roce {
    type: number
    label: "Return on Capital Employed"
    group_label: "Profitability"
    description: "Earnings Before Interest and Taxes as a fraction of average Capital Employed based on most recent two periods, where Capital Employed is the sum of Debt in Long-term and Current Liabilities and Common/Ordinary Equity"
    sql: ${TABLE}.roce ;;
  }

  dimension: roe {
    type: number
    label: "Return on Equity"
    group_label: "Profitability"
    description: "Net Income as a fraction of average Book Equity based on most recent two periods, where Book Equity is defined as the sum of Total Parent Stockholders' Equity and Deferred Taxes and Investment Tax Credit"
    sql: ${TABLE}.roe ;;
  }

  dimension: sale_equity {
    type: number
    group_label: "Efficiency"
    description: "Sales per dollar of total Stockholders’ Equity"
    sql: ${TABLE}.sale_equity ;;
  }

  dimension: sale_invcap {
    type: number
    label: "Sales/Invested Capital"
    group_label: "Efficiency"
    description: "Sales per dollar of Invested Capital"
    sql: ${TABLE}.sale_invcap ;;
  }

  dimension: sale_nwc {
    type: number
    label: "Sales/Working Capital"
    group_label: "Efficiency"
    description: "Sales per dollar of Working Capital, defined as difference between Current Assets and Current Liabilities"
    sql: ${TABLE}.sale_nwc ;;
  }

  dimension: short_debt {
    type: number
    label: "Short-Term Debt/Total Debt"
    group_label: "Financial Soundness"
    description: "Short-term Debt as a fraction of Total Debt"
    sql: ${TABLE}.short_debt ;;
  }

  dimension: staff_sale {
    type: number
    label: "Labor Expenses/Sales"
    group_label: "Other"
    description: "Labor Expenses as a fraction of Sales"
    sql: ${TABLE}.staff_sale ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.TICKER ;;
  }

  dimension: totdebt_invcap {
    type: number
    label: "Total Debt/Invested Capital"
    group_label: "Capitalization"
    description: "Total Debt (Long-term and Current) as a fraction of Invested Capital"
    sql: ${TABLE}.totdebt_invcap ;;
  }

#####################################################################################

  measure: count {
    type: count
    drill_fields: []
  }

  measure: accrual_measure {
    type: number
    sql: ${TABLE}.accrual ;;
  }

  measure: adv_sale_measure {
    type: number
    sql: ${TABLE}.adv_sale ;;
  }

  measure: aftret_eq_measure {
    type: number
    sql: ${TABLE}.aftret_eq ;;
  }

  measure: aftret_equity_measure {
    type: number
    sql: ${TABLE}.aftret_equity ;;
  }

  measure: aftret_invcapx_measure {
    type: number
    sql: ${TABLE}.aftret_invcapx ;;
  }

  measure: at_turn_measure {
    type: number
    sql: ${TABLE}.at_turn ;;
  }

  measure: bm_measure {
    type: number
    sql: ${TABLE}.bm ;;
  }

  measure: capei_measure {
    type: number
    sql: ${TABLE}.CAPEI ;;
  }

  measure: capital_ratio_measure {
    type: number
    sql: ${TABLE}.capital_ratio ;;
  }

  measure: cash_conversion_measure {
    type: number
    sql: ${TABLE}.cash_conversion ;;
  }

  measure: cash_debt_measure {
    type: number
    sql: ${TABLE}.cash_debt ;;
  }

  measure: cash_lt_measure {
    type: number
    sql: ${TABLE}.cash_lt ;;
  }

  measure: cash_ratio_measure {
    type: number
    sql: ${TABLE}.cash_ratio ;;
  }

  measure: cfm_measure {
    type: number
    sql: ${TABLE}.cfm ;;
  }

  measure: curr_debt_measure {
    type: number
    sql: ${TABLE}.curr_debt ;;
  }

  measure: curr_ratio_measure {
    type: number
    sql: ${TABLE}.curr_ratio ;;
  }

  measure: de_ratio_measure {
    type: number
    sql: ${TABLE}.de_ratio ;;
  }

  measure: debt_assets_measure {
    type: number
    sql: ${TABLE}.debt_assets ;;
  }

  measure: debt_at_measure {
    type: number
    sql: ${TABLE}.debt_at ;;
  }

  measure: debt_capital_measure {
    type: number
    sql: ${TABLE}.debt_capital ;;
  }

  measure: debt_ebitda_measure {
    type: number
    sql: ${TABLE}.debt_ebitda ;;
  }

  measure: debt_invcap_measure {
    type: number
    sql: ${TABLE}.debt_invcap ;;
  }

  measure: divyield_measure {
    type: number
    sql: ${TABLE}.divyield ;;
  }

  measure: dltt_be_measure {
    type: number
    sql: ${TABLE}.dltt_be ;;
  }

  measure: dpr_measure {
    type: number
    sql: ${TABLE}.dpr ;;
  }

  measure: efftax_measure {
    type: number
    sql: ${TABLE}.efftax ;;
  }

  measure: equity_invcap_measure {
    type: number
    sql: ${TABLE}.equity_invcap ;;
  }

  measure: evm_measure {
    type: number
    sql: ${TABLE}.evm ;;
  }

  measure: fcf_ocf_measure {
    type: number
    sql: ${TABLE}.fcf_ocf ;;
  }

  measure: gpm_measure {
    type: number
    sql: ${TABLE}.gpm ;;
  }

  measure: gprof_measure {
    type: number
    sql: ${TABLE}.GProf ;;
  }

  measure: gvkey_measure {
    type: number
    sql: ${TABLE}.gvkey ;;
  }

  measure: int_debt_measure {
    type: number
    sql: ${TABLE}.int_debt ;;
  }

  measure: int_totdebt_measure {
    type: number
    sql: ${TABLE}.int_totdebt ;;
  }

  measure: intcov_measure {
    type: number
    sql: ${TABLE}.intcov ;;
  }

  measure: intcov_ratio_measure {
    type: number
    sql: ${TABLE}.intcov_ratio ;;
  }

  measure: inventory_turnover_measure {
    type: number
    sql: ${TABLE}.inv_turn ;;
  }

  measure: invt_act_measure {
    type: number
    sql: ${TABLE}.invt_act ;;
  }

  measure: lt_debt_measure {
    type: number
    sql: ${TABLE}.lt_debt ;;
  }

  measure: lt_ppent_measure {
    type: number
    sql: ${TABLE}.lt_ppent ;;
  }

  measure: npm_measure {
    type: number
    sql: ${TABLE}.npm ;;
  }

  measure: ocf_lct_measure {
    type: number
    sql: ${TABLE}.ocf_lct ;;
  }

  measure: opmad_measure {
    type: number
    sql: ${TABLE}.opmad ;;
  }

  measure: opmbd_measure {
    type: number
    sql: ${TABLE}.opmbd ;;
  }

  measure: pay_turn_measure {
    type: number
    sql: ${TABLE}.pay_turn ;;
  }

  measure: pcf_measure {
    type: number
    sql: ${TABLE}.pcf ;;
  }

  measure: pe_exi_measure {
    type: number
    sql: ${TABLE}.pe_exi ;;
  }

  measure: pe_inc_measure {
    type: number
    sql: ${TABLE}.pe_inc ;;
  }

  measure: pe_op_basic_measure {
    type: number
    sql: ${TABLE}.pe_op_basic ;;
  }

  measure: pe_op_dil_measure {
    type: number
    sql: ${TABLE}.pe_op_dil ;;
  }

  measure: peg_1yrforward_measure {
    type: number
    sql: ${TABLE}.PEG_1yrforward ;;
  }

  measure: peg_ltgforward_measure {
    type: number
    sql: ${TABLE}.PEG_ltgforward ;;
  }

  measure: peg_trailing_measure {
    type: number
    sql: ${TABLE}.PEG_trailing ;;
  }

  measure: permno_measure {
    type: number
    sql: ${TABLE}.permno ;;
  }

  measure: pretret_earnat_measure {
    type: number
    sql: ${TABLE}.pretret_earnat ;;
  }

  measure: pretret_noa_measure {
    type: number
    sql: ${TABLE}.pretret_noa ;;
  }

  measure: profit_lct_measure {
    type: number
    sql: ${TABLE}.profit_lct ;;
  }

  measure: ps_measure {
    type: number
    sql: ${TABLE}.ps ;;
  }

  measure: ptb_measure {
    type: number
    sql: ${TABLE}.ptb ;;
  }

  measure: ptpm_measure {
    type: number
    sql: ${TABLE}.ptpm ;;
  }

  measure: quick_ratio_measure {
    type: number
    sql: ${TABLE}.quick_ratio ;;
  }

  measure: rd_sale_measure {
    type: number
    sql: ${TABLE}.rd_sale ;;
  }

  measure: rect_act_measure {
    type: number
    sql: ${TABLE}.rect_act ;;
  }

  measure: rect_turn_measure {
    type: number
    sql: ${TABLE}.rect_turn ;;
  }

  measure: roa_measure {
    type: number
    sql: ${TABLE}.roa ;;
  }

  measure: roce_measure {
    type: number
    sql: ${TABLE}.roce ;;
  }

  measure: roe_measure {
    type: number
    sql: ${TABLE}.roe ;;
  }

  measure: sale_equity_measure {
    type: number
    sql: ${TABLE}.sale_equity ;;
  }

  measure: sale_invcap_measure {
    type: number
    sql: ${TABLE}.sale_invcap ;;
  }

  measure: sale_nwc_measure {
    type: number
    sql: ${TABLE}.sale_nwc ;;
  }

  measure: short_debt_measure {
    type: number
    sql: ${TABLE}.short_debt ;;
  }

  measure: staff_sale_measure {
    type: number
    sql: ${TABLE}.staff_sale ;;
  }

  measure: totdebt_invcap_measure {
    type: number
    sql: ${TABLE}.totdebt_invcap ;;
  }
}
