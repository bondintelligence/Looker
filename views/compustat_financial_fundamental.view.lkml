view: compustat_financial_fundamental {
  sql_table_name: `bi-model-development.looker_FINAL.Compustat_Financial_Fundamental`
    ;;

  dimension: acchg {
    type: number
    label: "Accounting Changes - Cumulative Effect"
    sql: ${TABLE}.acchg ;;
  }

  dimension: acco {
    type: number
    label: "Acceptances Outstanding"
    sql: ${TABLE}.acco ;;
  }

  dimension: acctchg {
    type: string
    label: "Adoption of Accounting Changes"
    sql: ${TABLE}.acctchg ;;
  }

  dimension: acctstd {
    type: string
    label: "Accounting Standard "
    sql: ${TABLE}.acctstd ;;
  }

  dimension: acdo {
    type: number
    label: "Current Assets of Discontinued Operations"
    group_label: "Current Assets"
    sql: ${TABLE}.acdo ;;
  }

  dimension: aco {
    type: number
    label: "Current Assets Other Total"
    group_label: "Current Assets"
    sql: ${TABLE}.aco ;;
  }

  dimension: acodo {
    type: number
    label: "Other Current Assets Excl Discontinued Operations"
    sql: ${TABLE}.acodo ;;
  }

  dimension: acominc {
    type: number
    group_label: "Accumulated Other Comprehensive Income"
    label: "Accumulated Other Comprehensive Income (Loss)"
    sql: ${TABLE}.acominc ;;
  }

  dimension: acox {
    type: number
    label: "Other - Excluding Prepaid Expense"
    group_label: "Current Assets"
    sql: ${TABLE}.acox ;;
  }

  dimension: acoxar {
    type: number
    label: "Other - Total As Reported"
    group_label: "Current Assets"
    sql: ${TABLE}.acoxar ;;
  }

  dimension: acqao {
    type: number
    label: "Other Long-Term Assets"
    group_label: "Acquired Assets"
    sql: ${TABLE}.acqao ;;
  }

  dimension: acqcshi {
    type: number
    label: "Shares Issued for Acquisition  "
    sql: ${TABLE}.acqcshi ;;
  }

  dimension: acqgdwl {
    type: number
    label: "Goodwill"
    group_label: "Acquired Assets"
    sql: ${TABLE}.acqgdwl ;;
  }

  dimension: acqic {
    type: number
    label: "Current Income Contribution"
    group_label: "Acquisitions"
    sql: ${TABLE}.acqic ;;
  }

  dimension: acqintan {
    type: number
    label: "Intangibles"
    group_label: "Acquired Assets"
    sql: ${TABLE}.acqintan ;;
  }

  dimension: acqinvt {
    type: number
    label: "Inventory "
    group_label: "Acquired Assets"
    sql: ${TABLE}.acqinvt ;;
  }

  dimension: acqlntal {
    type: number
    label: "Acquired Loans"
    sql: ${TABLE}.acqlntal ;;
  }

  dimension: acqmeth {
    type: string
    label: "Acquisition Method"
    sql: ${TABLE}.acqmeth ;;
  }

  dimension: acqniintc {
    type: string
    label: "Net Interest Income Contribution  "
    sql: ${TABLE}.acqniintc ;;
  }

  dimension: acqppe {
    type: number
    label: "Property, Plant & Equipment"
    group_label: "Acquired Assets"
    sql: ${TABLE}.acqppe ;;
  }

  dimension: acqsc {
    type: number
    label: "Current Sales Contribution"
    group_label: "Acquisitions"
    sql: ${TABLE}.acqsc ;;
  }

  dimension: act {
    type: number
    label: "Total"
    group_label: "Current Assets"
    sql: ${TABLE}.act ;;
  }

  dimension: add1 {
    type: string
    label: "Address Line 1"
    group_label: "Adress"
    sql: ${TABLE}.add1 ;;
  }

  dimension: add2 {
    type: string
    label: "Address Line 2"
    group_label: "Adress"
    sql: ${TABLE}.add2 ;;
  }

  dimension: add3 {
    type: string
    label: "Address Line 3"
    group_label: "Adress"
    sql: ${TABLE}.add3 ;;
  }

  dimension: add4 {
    type: string
    label: "Address Line 4"
    group_label: "Adress"
    sql: ${TABLE}.add4 ;;
  }

  dimension: addzip {
    type: string
    label: "Postal Code"
    group_label: "Adress"
    sql: ${TABLE}.addzip ;;
  }

  dimension: adjex_c {
    type: number
    label: "Cumulative Adjustment Factor by Ex-Date - Calendar"
    sql: ${TABLE}.adjex_c ;;
  }

  dimension: adjex_f {
    type: number
    label: "Cumulative Adjustment Factor by Ex-Date - Fiscal"
    sql: ${TABLE}.adjex_f ;;
  }

  dimension: adpac {
    type: number
    label: "Amortization of Deferred Policy Acquisition Costs"
    sql: ${TABLE}.adpac ;;
  }

  dimension: adrr {
    type: number
    label: "ADR Ratio"
    sql: ${TABLE}.adrr ;;
  }

  dimension: aedi {
    type: number
    label: "Accrued Expenses and Deferred Income  "
    sql: ${TABLE}.aedi ;;
  }

  dimension: afudcc {
    type: number
    label: "Allowance for Funds Used During Construction (Cash Flow)"
    sql: ${TABLE}.afudcc ;;
  }

  dimension: afudci {
    type: number
    label: "Allowance for Funds Used During Construction (Investing) (Cash Flow)"
    sql: ${TABLE}.afudci ;;
  }

  dimension: ajex {
    type: number
    label: "Cumulative by Ex-Date"
    group_label: "Adjustment Factor (Company)"
    sql: ${TABLE}.ajex ;;
  }

  dimension: ajp {
    type: number
    label: "Cumulative byPay-Date"
    group_label: "Adjustment Factor (Company)"
    sql: ${TABLE}.ajp ;;
  }

  dimension: aldo {
    type: number
    label: "Long-term Assets of Discontinued Operations"
    sql: ${TABLE}.aldo ;;
  }

  dimension: am {
    type: number
    label: "Amortization of Intangibles"
    sql: ${TABLE}.am ;;
  }

  dimension: amc {
    type: number
    label: "Utility"
    group_label: "Amortization (Cash Flow)"
    sql: ${TABLE}.amc ;;
  }

  dimension: amdc {
    type: number
    label: "Amortization of Deferred Charges"
    sql: ${TABLE}.amdc ;;
  }

  dimension: amgw {
    type: number
    label: "Amortization of Goodwill"
    sql: ${TABLE}.amgw ;;
  }

  dimension: ano {
    type: number
    label: "Assets Netting & Other Adjustments"
    group_label: "Assets"
    sql: ${TABLE}.ano ;;
  }

  dimension: ao {
    type: number
    label: "Other"
    group_label: "Assets"
    sql: ${TABLE}.ao ;;
  }

  dimension: aocidergl {
    type: number
    label: "Derivatives Unrealized Gain/Loss"
    group_label: "Accumulated Other Comprehensive Income"
    sql: ${TABLE}.aocidergl ;;
  }

  dimension: aociother {
    type: number
    label: "Other Adjustments"
    group_label: "Accumulated Other Comprehensive Income"
    sql: ${TABLE}.aociother ;;
  }

  dimension: aocipen {
    type: number
    label: "Min Pension Liab Adj"
    group_label: "Accumulated Other Comprehensive Income"
    sql: ${TABLE}.aocipen ;;
  }

  dimension: aocisecgl {
    type: number
    group_label: "Accumulated Other Comprehensive Income"
    label: "Unreal G/L Ret Int in Sec Assets"
    sql: ${TABLE}.aocisecgl ;;
  }

  dimension: aodo {
    type: number
    label: "Other Assets excluding Discontinued Operations"
    sql: ${TABLE}.aodo ;;
  }

  dimension: aol2 {
    type: number
    group_label: "Assets"
    label: "Assets Level2 (Observable)"
    sql: ${TABLE}.aol2 ;;
  }

  dimension: aoloch {
    type: number
    label: "Assets and Liabilities - Other (Net Change) (Statement of Cash Flows)"
    group_label: "Assets"
    sql: ${TABLE}.aoloch ;;
  }

  dimension: aox {
    type: number
    label: "Other - Sundry"
    group_label: "Assets"
    sql: ${TABLE}.aox ;;
  }

  dimension: ap {
    type: number
    label: "Trade"
    group_label: "Accounts Payable"
    sql: ${TABLE}.ap ;;
  }

  dimension: apalch {
    type: number
    label: "Accounts Payable and Accrued Liabilities - Other (Net Change) (Statement of Cash Flows)"
    group_label: "Accounts Payable"
    sql: ${TABLE}.apalch ;;
  }

  dimension: apb {
    type: number
    label: "Brokers, Dealers, and Clearing Organizations"
    group_label: "Accounts Payable/Creditors"
    sql: ${TABLE}.apb ;;
  }

  dimension: apc {
    type: number
    label: " Customer"
    group_label: "Accounts Payable/Creditors"
    sql: ${TABLE}.apc ;;
  }

  dimension_group: apdedate {
    label: "Actual Period End date"
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
    sql: ${TABLE}.apdedate ;;
  }

  dimension: apofs {
    type: number
    label: "Other - FS"
    group_label: "Accounts Payable/Creditors"
    sql: ${TABLE}.apofs;;
  }

  dimension: aqa {
    type: number
    label: "Acquisition/Merger After-tax"
    sql: ${TABLE}.aqa ;;
  }

  dimension: aqc {
    type: number
    label: "Acquisitions"
    group_label: "Acquisitions"
    sql: ${TABLE}.aqc ;;
  }

  dimension: aqd {
    type: number
    label: "Acquisition/Merger Diluted EPS Effect "
    sql: ${TABLE}.aqd ;;
  }

  dimension: aqeps {
    type: number
    label: "Acquisition/Merger Basic EPS Effect "
    sql: ${TABLE}.aqeps ;;
  }

  dimension: aqi {
    type: number
    label: "Income Contribution"
    group_label: "Acquisitions"
    sql: ${TABLE}.aqi ;;
  }

  dimension: aqp {
    type: number
    label: "Acquisition/Merger Pretax"
    sql: ${TABLE}.aqp ;;
  }

  dimension: aqpl1 {
    type: number
    group_label: "Assets"
    label: "Assets Level1 (Quoted Prices)"
    sql: ${TABLE}.aqpl1 ;;
  }

  dimension: aqs {
    type: number
    label: "Sales Contribution"
    group_label: "Acquisitions"
    sql: ${TABLE}.aqs ;;
  }

  dimension: arb {
    type: number
    label: "Brokers, Dealers, and Clearing Organization"
    group_label: "Accounts Receivable/Debtors"
    sql: ${TABLE}.arb ;;
  }

  dimension: arc {
    type: number
    label: "Customer"
    group_label: "Accounts Receivable/Debtors"
    sql: ${TABLE}.arc ;;
  }

  dimension: arce {
    type: number
    label: "As Reported Core After-tax"
    sql: ${TABLE}.arce ;;
  }

  dimension: arced {
    type: number
    label: "As Reported Core Diluted EPS Effect"
    sql: ${TABLE}.arced ;;
  }

  dimension: arceeps {
    type: number
    label: "As Reported Core Basic EPS Effect"
    sql: ${TABLE}.arceeps ;;
  }

  dimension: artfs {
    type: number
    label: "Total"
    group_label: "Accounts Receivable/Debtors"
    sql: ${TABLE}.artfs ;;
  }

  dimension: at {
    type: number
    label: "Total"
    group_label: "Assets"
    sql: ${TABLE}.`at` ;;
  }

  dimension: au {
    type: number
    label: "Auditor"
    group_label: "Auditor"
    sql: ${TABLE}.au ;;
  }

  dimension: aul3 {
    type: number
    group_label: "Assets"
    label: "Assets Level3 (Unobservable)"
    sql: ${TABLE}.aul3 ;;
  }

  dimension: auop {
    type: number
    label: "Auditor Opinion"
    group_label: "Auditor"
    sql: ${TABLE}.auop ;;
  }

  dimension: auopic {
    type: number
    label: "Internal Control"
    group_label: "Auditor"
    sql: ${TABLE}.auopic ;;
  }

  dimension: autxr {
    type: number
    label: "Appropriations to Untaxed Reserves"
    sql: ${TABLE}.autxr ;;
  }

  dimension: balr {
    type: number
    label: "Life"
    group_label: "Benefits Assumed"
    sql: ${TABLE}.balr ;;
  }

  dimension: banlr {
    type: number
    label: "Nonlife"
    group_label: "Benefits Assumed"
    sql: ${TABLE}.banlr ;;
  }

  dimension: bast {
    type: number
    label: "Average"
    group_label: "Short-Term Borrowings"
    sql: ${TABLE}.bast ;;
  }

  dimension: bastr {
    type: number
    label: "Average Interest Rate"
    group_label: "Short-Term Borrowings"
    sql: ${TABLE}.bastr ;;
  }

  dimension: batr {
    type: number
    label: "Total"
    group_label: "Benefits Assumed"
    sql: ${TABLE}.batr ;;
  }

  dimension: bcef {
    type: number
    label: "Brokerage, Clearing and Exchange Fees "
    sql: ${TABLE}.bcef ;;
  }

  dimension: bclr {
    type: number
    label: "Life"
    group_label: "Benefits Ceded"
    sql: ${TABLE}.bclr ;;
  }

  dimension: bcltbl {
    type: number
    label: "Total (Business Line)"
    group_label: "Benefits and Claims"
    sql: ${TABLE}.bcltbl ;;
  }

  dimension: bcnlr {
    type: number
    label: "Non Life"
    group_label: "Benefits Ceded"
    sql: ${TABLE}.bcnlr ;;
  }

  dimension: bcrbl {
    type: number
    label: "Reinsurance (Business Line)"
    group_label: "Benefits and Claims"
    sql: ${TABLE}.bcrbl ;;
  }

  dimension: bct {
    type: number
    label: "Total (Insurance)"
    group_label: "Benefits and Claims"
    sql: ${TABLE}.bct ;;
  }

  dimension: bctbl {
    type: number
    label: "Other (Business Line)"
    group_label: "Benefits and Claims"
    sql: ${TABLE}.bctbl ;;
  }

  dimension: bctr {
    type: number
    label: "Total"
    group_label: "Benefits Ceded"
    sql: ${TABLE}.bctr ;;
  }

  dimension: bkvlps {
    type: number
    label: "Book Value Per Share"
    sql: ${TABLE}.bkvlps ;;
  }

  dimension: bltbl {
    type: number
    label: "Total (Business Line)"
    group_label: "Benefits - Life"
    sql: ${TABLE}.bltbl ;;
  }

  dimension: bspr {
    type: string
    label: "Balance Sheet Presentation"
    sql: ${TABLE}.bspr ;;
  }

  dimension: busdesc {
    type: string
    label: "S&P Business Description"
    sql: ${TABLE}.busdesc ;;
  }

  dimension: ca {
    type: number
    label: "Customers' Acceptance"
    sql: ${TABLE}.ca ;;
  }

  dimension: capr1 {
    type: number
    label: "Tier 1"
    group_label: "Risk-Adjusted Capital Ratio"
    sql: ${TABLE}.capr1 ;;
  }

  dimension: capr2 {
    type: number
    label: "Tier 2"
    group_label: "Risk-Adjusted Capital Ratio"
    sql: ${TABLE}.capr2 ;;
  }

  dimension: capr3 {
    type: number
    label: "Total"
    group_label: "Risk-Adjusted Capital Ratio"
    sql: ${TABLE}.capr3 ;;
  }

  dimension: caps {
    type: number
    label: "Capital Surplus"
    sql: ${TABLE}.caps ;;
  }

  dimension: capx {
    type: number
    label: "Capital Expenditures"
    sql: ${TABLE}.capx ;;
  }

  dimension: capxv {
    type: number
    label: "Property, Plant and Equipment - Capital Expenditures (Schedule V)"
    sql: ${TABLE}.capxv ;;
  }

  dimension: cb {
    type: number
    label: "Compensating Balance"
    sql: ${TABLE}.cb ;;
  }

  dimension: cbi {
    type: number
    label: "Claims Incurred - Insurance"
    sql: ${TABLE}.cbi ;;
  }

  dimension: cdpac {
    type: number
    label: "Capitalized Deferred Polcy Acquisition Costs"
    sql: ${TABLE}.cdpac ;;
  }

  dimension: cdvc {
    type: number
    label: "Cash Dividends on Common Stock (Cash Flow)"
    sql: ${TABLE}.cdvc ;;
  }

  dimension: ceoso {
    type: string
    label: "Chief Executive Officer SOX Certification"
    sql: ${TABLE}.ceoso ;;
  }

  dimension: ceq {
    type: number
    label: "Total"
    group_label: "Common Equity"
    sql: ${TABLE}.ceq ;;
  }

  dimension: ceql {
    type: number
    group_label: "Common Equity"
    label: "Liquidation Value"
    sql: ${TABLE}.ceql ;;
  }

  dimension: ceqt {
    type: number
    group_label: "Common Equity"
    label: "Tangible"
    sql: ${TABLE}.ceqt ;;
  }

  dimension: cfbd {
    type: number
    label: "(Broker/Dealer)"
    group_label: "Commissions and Fees"
    sql: ${TABLE}.cfbd ;;
  }

  dimension: cfere {
    type: number
    label: "Real Estate"
    group_label: "Commissions and Fees"
    sql: ${TABLE}.cfere ;;
  }

  dimension: cfo {
    type: number
    label: "Other"
    group_label: "Commissions and Fees"
    sql: ${TABLE}.cfo ;;
  }

  dimension: cfoso {
    type: string
    label: "Chief Financial Officer SOX Certification"
    sql: ${TABLE}.cfoso ;;
  }

  dimension: cfpdo {
    type: number
    label: "Commissions and Fees Paid - Other"
    sql: ${TABLE}.cfpdo ;;
  }

  dimension: cga {
    type: number
    label: "After-Tax"
    group_label: "Capital Gains"
    sql: ${TABLE}.cga ;;
  }

  dimension: cgri {
    type: number
    label: "Realized (Insurance)"
    group_label: "Capital Gains"
    sql: ${TABLE}.cgri ;;
  }

  dimension: cgti {
    type: number
    label: "Total (Insurance)"
    group_label: "Capital Gains"
    sql: ${TABLE}.cgti ;;
  }

  dimension: cgui {
    type: number
    label: " Unrealized (Insurance)"
    group_label: "Capital Gains"
    sql: ${TABLE}.cgui ;;
  }

  dimension: ch {
    type: number
    label: "Cash"
    sql: ${TABLE}.ch ;;
  }

  dimension: che {
    type: number
    label: "Cash and Short-term Investments"
    sql: ${TABLE}.che ;;
  }

  dimension: chech {
    type: number
    label: "Cash and Cash Equivalents - Increase (Decrease) (Statement of Cash Flow)"
    sql: ${TABLE}.chech ;;
  }

  dimension: chs {
    type: number
    label: "Cash and Deposits - Segregated"
    sql: ${TABLE}.chs ;;
  }

  dimension: ci {
    type: number
    label: "Total"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.ci ;;
  }

  dimension: cibegni {
    type: number
    label: "Beginning Net Income"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.cibegni ;;
  }

  dimension: cicurr {
    type: number
    label: "Currency Trans Adj"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.cicurr ;;
  }

  dimension: cidergl {
    type: number
    label: "Derivative Gains/Losses"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.cidergl ;;
  }


  dimension: cimii {
    type: number
    label: "Noncontrolling Interest"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.cimii ;;
  }

  dimension: ciother {
    type: number
    label: "Other Adj"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.ciother ;;
  }

  dimension: cipen {
    type: number
    label: "Pension Adj"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.cipen ;;
  }

  dimension: cisecgl {
    type: number
    label: "Securities Gains/Losses"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.cisecgl ;;
  }

  dimension: citotal {
    type: number
    label: "Total"
    group_label: "Comprehensive Income"
    sql: ${TABLE}.citotal ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cld2 {
    type: number
    label: "Due in Year 2"
    group_label: "Capitalized Leases"
    sql: ${TABLE}.cld2 ;;
  }

  dimension: cld3 {
    type: number
    label: "Due in Year 3"
    group_label: "Capitalized Leases"
    sql: ${TABLE}.cld3 ;;
  }

  dimension: cld4 {
    type: number
    label: "Due in Year 4"
    group_label: "Capitalized Leases"
    sql: ${TABLE}.cld4 ;;
  }

  dimension: cld5 {
    type: number
    label: "Due in Year 5"
    group_label: "Capitalized Leases"
    sql: ${TABLE}.cld5 ;;
  }

  dimension: clfc {
    type: number
     label: "Forward and Future Contracts"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.clfc ;;
  }

  dimension: clfx {
    type: number
    label: " Foreign Exchange Commitments"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.clfx ;;
  }

  dimension: clg {
    type: number
    label: "Guarantees"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.clg ;;
  }

  dimension: clis {
    type: number
    label: "Interest Rate Swaps"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.clis ;;
  }

  dimension: cll {
    type: number
    label: "Letters of Credit"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.cll ;;
  }

  dimension: cllc {
    type: number
    label: "Loan Commitments"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.cllc ;;
  }

  dimension: clo {
    type: number
    label: "Other"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.clo ;;
  }

  dimension: clrll {
    type: number
    label: "Credit Loss Reserve Allocated for LDC Loans"
    sql: ${TABLE}.clrll ;;
  }

  dimension: clt {
    type: number
    label: "Total"
    group_label: "Contingent Liabilities"
    sql: ${TABLE}.clt ;;
  }

  dimension: cmp {
    type: number
    label: "Commercial Paper"
    sql: ${TABLE}.cmp ;;
  }

  dimension: cnltbl {
    type: number
    label: "Claims - Non-Life - Total (Business Line)"
    sql: ${TABLE}.cnltbl ;;
  }

  dimension: cogs {
    type: number
    label: "Cost of Goods Sold"
    sql: ${TABLE}.cogs ;;
  }

  dimension: compst {
    type: string
    label: "Comparability Status"
    sql: ${TABLE}.compst ;;
  }

  dimension: conm {
    type: string
    label: "Company Name"
    sql: ${TABLE}.conm ;;
  }

  dimension: conml {
    type: string
    label: "Company Legal Name"
    sql: ${TABLE}.conml ;;
  }

  dimension: consol {
    type: string
    sql: ${TABLE}.consol ;;
  }

  dimension: costat {
    type: string
    sql: ${TABLE}.costat ;;
  }

  dimension: county {
    type: string
    label: "County Code"
    sql: ${TABLE}.county ;;
  }

  dimension: cpcbl {
    type: number
    label: "Commercial Property and Casualty Claims (Business Line)"
    sql: ${TABLE}.cpcbl ;;
  }

  dimension: cpdoi {
    type: number
    label: "Other"
    group_label: "Claims Paid"
    sql: ${TABLE}.cpdoi ;;
  }

  dimension: cpnli {
    type: number
    label: "Non Life"
    group_label: "Claims Paid"
    sql: ${TABLE}.cpnli ;;
  }

  dimension: cppbl {
    type: number
    label: "Commercial Property and Casualty Premiums (Business Line)"
    sql: ${TABLE}.cppbl ;;
  }

  dimension: cprei {
    type: number
    label: "Reinsurance"
    group_label: "Claims Paid"
    sql: ${TABLE}.cprei ;;
  }

  dimension: crv {
    type: number
    label: "Consolidation Reserves"
    sql: ${TABLE}.crv ;;
  }

  dimension: crvnli {
    type: number
    label: "Reserves for Claims (Losses) - Nonlife (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.crvnli ;;
  }

  dimension: cshfd {
    type: number
    label: "Common Shares Used to Calculate Earnings per Share (Diluted)"
    sql: ${TABLE}.cshfd ;;
  }

  dimension: cshi {
    type: number
    label: "Common Shares Issued"
    sql: ${TABLE}.cshi ;;
  }

  dimension: csho {
    type: number
    label: "Common Shares Outstanding"
    sql: ${TABLE}.csho ;;
  }

  dimension: cshpri {
    type: number
    label: "Common Shares used to Calculate Earnings per share (Basic)"
    sql: ${TABLE}.cshpri ;;
  }

  dimension: cshr {
    type: number
    label: "Common Shareholders"
    sql: ${TABLE}.cshr ;;
  }

  dimension: cshrc {
    type: number
    label: "Convertible Debt"
    group_label: "Common Shares Reserved for Conversion"
    sql: ${TABLE}.cshrc ;;
  }

  dimension: cshrp {
    type: number
    label: "Preferred Stock"
    group_label: "Common Shares Reserved for Conversion"
    sql: ${TABLE}.cshrp ;;
  }

  dimension: cshrso {
    type: number
    label: "Stock Options"
    group_label: "Common Shares Reserved for Conversion"
    sql: ${TABLE}.cshrso ;;
  }

  dimension: cshrt {
    type: number
    label: "Total"
    group_label: "Common Shares Reserved for Conversion"
    sql: ${TABLE}.cshrt ;;
  }

  dimension: cshrw {
    type: number
    label: "Warrants"
    group_label: "Common Shares Reserved for Conversion"
    sql: ${TABLE}.cshrw ;;
  }

  dimension: cshtr_c {
    type: number
    label: "- Annual - Calendar"
    group_label: "Common Shares Traded"
    sql: ${TABLE}.cshtr_c ;;
  }

  dimension: cshtr_f {
    type: number
    label: "Annual - Fiscal"
    group_label: "Common Shares Traded"
    sql: ${TABLE}.cshtr_f ;;
  }

  dimension: cstk {
    type: number
    label: "Common Stock"
    sql: ${TABLE}.cstk ;;
  }

  dimension: cstkcv {
    type: number
    label: "Common Stock-Carrying Value"
    sql: ${TABLE}.cstkcv ;;
  }

  dimension: cstke {
    type: number
    label: "Common Stock Equivalents - Dollar Savings"
    sql: ${TABLE}.cstke ;;
  }

  dimension: curcd {
    type: string
    label: "Native Currency Code"
    sql: ${TABLE}.curcd ;;
  }

  dimension: curncd {
    type: string
    label: "Currency Translation Rate"
    sql: ${TABLE}.curncd ;;
  }

  dimension: currtr {
    type: number
    label: "Currency Translation Rate"
    sql: ${TABLE}.currtr ;;
  }


  dimension: cusip {
    type: string
    primary_key: yes
    sql: ${TABLE}.cusip ;;
  }

  dimension_group: datadate {
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
    sql: ${TABLE}.datadate ;;
  }

  dimension: datafmt {
    type: string
    sql: ${TABLE}.datafmt ;;
  }

  dimension: dbi {
    type: number
    label: "Death Benefits - Insurance"
    sql: ${TABLE}.dbi ;;
  }

  dimension: dc {
    type: number
    label: "Deferred Charges"
    sql: ${TABLE}.dc ;;
  }

  dimension: dclo {
    type: number
    label: "Debt Capitalized Lease Obligations"
    group_label: "Debt"
    sql: ${TABLE}.dclo ;;
  }

  dimension: dcom {
    type: number
    label: "Deferred Compensation"
    sql: ${TABLE}.dcom ;;
  }

  dimension: dcpstk {
    type: number
    label: "Convertible Debt and Preferred Stock"
    sql: ${TABLE}.dcpstk ;;
  }

  dimension: dcs {
    type: number
    label: "Debt Consolidated Subsidiary"
    group_label: "Debt"
    sql: ${TABLE}.dcs ;;
  }

  dimension: dcvsr {
    type: number
    label: "Debt Senior Convertible"
    group_label: "Debt"
    sql: ${TABLE}.dcvsr ;;
  }

  dimension: dcvsub {
    type: number
    label: "Debt Subordinated Convertible"
    group_label: "Debt"
    sql: ${TABLE}.dcvsub ;;
  }

  dimension: dcvt {
    type: number
    label: "Convertible"
    group_label: "Debt"
    sql: ${TABLE}.dcvt ;;
  }

  dimension: dd {
    type: number
    label: "Debt Debentures"
    group_label: "Debt"
    sql: ${TABLE}.dd ;;
  }

  dimension: dd1 {
    type: number
    label: "Long-Term Debt Due in One Year"
    group_label: "Debt"
    sql: ${TABLE}.dd1 ;;
  }

  dimension: dd2 {
    type: number
    label: "Debt Due in 2nd Year"
    group_label: "Debt"
    sql: ${TABLE}.dd2 ;;
  }

  dimension: dd3 {
    type: number
    label: "Debt Due in 3rd Year"
    group_label: "Debt"
    sql: ${TABLE}.dd3 ;;
  }

  dimension: dd4 {
    type: number
    label: "Debt Due in 4th Year"
    group_label: "Debt"
    sql: ${TABLE}.dd4 ;;
  }

  dimension: dd5 {
    type: number
    label: "Debt Due in 5th Year"
    group_label: "Debt"
    sql: ${TABLE}.dd5 ;;
  }

  dimension: depc {
    type: number
    label: "Depreciation and Depletion (Cash Flow)"
    sql: ${TABLE}.depc ;;
  }

  dimension: dfpac {
    type: number
    label: "Deferred Policy Acquisition Costs"
    sql: ${TABLE}.dfpac ;;
  }

  dimension: dfs {
    type: number
    label: "Debt Finance Subsidiary"
    group_label: "Debt"
    sql: ${TABLE}.dfs ;;
  }

  dimension: dfxa {
    type: number
    label: "Depreciation of Tangible Fixed Assets"
    sql: ${TABLE}.dfxa ;;
  }

  dimension: diladj {
    type: number
    label: "Dilution Adjustment"
    sql: ${TABLE}.diladj ;;
  }

  dimension: dilavx {
    type: number
    label: "Dilution Available Excluding Extraordinary Items"
    sql: ${TABLE}.dilavx ;;
  }

  dimension: dlc {
    type: number
    label: "Debt in Current Liabilities - Total "
    group_label: "Debt"
    sql: ${TABLE}.dlc ;;
  }

  dimension: dlcch {
    type: number
    label: "Current Debt Changes"
    sql: ${TABLE}.dlcch ;;
  }

  dimension_group: dldte {
    label: "Research Company Deletion Date"
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
    sql: ${TABLE}.dldte ;;
  }

  dimension: dlrsn {
    type: number
    label: "Research Co Reason for Deletion"
    sql: ${TABLE}.dlrsn ;;
  }

  dimension: dltis {
    type: number
    label: "Long-Term Debt Issuance"
    sql: ${TABLE}.dltis ;;
  }

  dimension: dlto {
    type: number
    label: "Other Long-term Debt"
    sql: ${TABLE}.dlto ;;
  }

  dimension: dltp {
    type: number
    label: "Long-Term Debt Tied to Prime"
    sql: ${TABLE}.dltp ;;
  }

  dimension: dltr {
    type: number
    label: "Long-Term Debt Reduction"
    sql: ${TABLE}.dltr ;;
  }

  dimension: dltsub {
    type: number
    label: "Long-Term Debt - Subordinated"
    sql: ${TABLE}.dltsub ;;
  }

  dimension: dltt {
    type: number
    label: "Long-Term Debt - Total"
    sql: ${TABLE}.dltt ;;
  }

  dimension: dm {
    type: number
    label: "Debt Mortgages & Other Secured"
    group_label: "Debt"
    sql: ${TABLE}.dm ;;
  }

  dimension: dn {
    type: number
    label: "Debt Notes"
    group_label: "Debt"
    sql: ${TABLE}.dn ;;
  }

  dimension: do {
    type: number
    label: "Discontinued Operations"
    sql: ${TABLE}.do ;;
  }

  dimension: donr {
    type: number
    label: "Nonrecurring Disc Operations"
    sql: ${TABLE}.donr ;;
  }

  dimension: dp {
    type: number
    label: "Depreciation and Amortization"
    sql: ${TABLE}.dp ;;
  }

  dimension: dpacb {
    type: number
    label: "Buildings"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacb ;;
  }

  dimension: dpacc {
    type: number
    label: "Construction in Progress"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacc ;;
  }

  dimension: dpacli {
    type: number
    label: "Land and Improvements"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacli ;;
  }

  dimension: dpacls {
    type: number
    label: "Leases"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacls ;;
  }

  dimension: dpacme {
    type: number
    label: "Machinery and Equipment"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacme ;;
  }

  dimension: dpacnr {
    type: number
    label: "Natural Resources"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacnr ;;
  }

  dimension: dpaco {
    type: number
    label: "Other"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpaco ;;
  }

  dimension: dpacre {
    type: number
    label: "Accumulated Depreciation of RE Property"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpacre ;;
  }

  dimension: dpact {
    type: number
    label: "Depreciation, Depletion and Amortization (Accumulated)"
    sql: ${TABLE}.dpact ;;
  }

  dimension: dpc {
    type: number
    label: "Depreciation and Amortization (Cash Flow)"
    sql: ${TABLE}.dpc ;;
  }

  dimension: dpdc {
    type: number
    label: "Demand - Customer"
    group_label: "Deposits"
    sql: ${TABLE}.dpdc ;;
  }

  dimension: dpltb {
    type: number
    label: "Long-Term Time - Bank"
    group_label: "Deposits"
    sql: ${TABLE}.dpltb ;;
  }

  dimension: dpret {
    type: number
    label: "Depr/Amort of Property"
    sql: ${TABLE}.dpret ;;
  }


  dimension: dpstb {
    type: number
    label: "Short-Term Demand - Bank"
    group_label: "Deposits"
    sql: ${TABLE}.dpstb ;;
  }

  dimension: dptb {
    type: number
    label: "Total - Banks"
    group_label: "Deposits"
    sql: ${TABLE}.dptb ;;
  }

  dimension: dptc {
    type: number
    label: "Total - Customer"
    group_label: "Deposits"
    sql: ${TABLE}.dptc ;;
  }

  dimension: dptic {
    type: number
    label: "Time - Customer"
    group_label: "Deposits"
    sql: ${TABLE}.dptic ;;
  }

  dimension: dpvieb {
    type: number
    label: "Ending Balance (Schedule VI)"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpvieb ;;
  }

  dimension: dpvio {
    type: number
    label: "Other Changes (Schedule VI)"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpvio ;;
  }

  dimension: dpvir {
    type: number
    label: "Retirements (Schedule VI)"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dpvir ;;
  }

  dimension: drc {
    type: number
    label: "Deferred Revenue Current"
    sql: ${TABLE}.drc ;;
  }

  dimension: drci {
    type: number
    label: "Deduction From Policy and Claims Reserves for Reinsurance Ceded"
    sql: ${TABLE}.drci ;;
  }

  dimension: drlt {
    type: number
    label: "Deferred Revenue Long-term"
    sql: ${TABLE}.drlt ;;
  }

  dimension: ds {
    type: number
    label: "Debt-Subordinated"
    group_label: "Debt"
    sql: ${TABLE}.ds ;;
  }

  dimension: dtea {
    type: number
    label: "Extinguishment of Debt After-tax"
    sql: ${TABLE}.dtea ;;
  }

  dimension: dted {
    type: number
    label: "Extinguishment of Debt Diluted EPS Effect"
    sql: ${TABLE}.dted ;;
  }

  dimension: dteeps {
    type: number
    label: "Extinguishment of Debt Basic EPS Effect"
    sql: ${TABLE}.dteeps ;;
  }

  dimension: dtep {
    type: number
    label: "Extinguishment of Debt Pretax"
    sql: ${TABLE}.dtep ;;
  }

  dimension: dudd {
    type: number
    label: "Debt Unamortized Debt Discount and Other"
    group_label: "Debt"
    sql: ${TABLE}.dudd ;;
  }

  dimension: dv {
    type: number
    label: "Cash Dividends (Cash Flow)"
    sql: ${TABLE}.dv ;;
  }

  dimension: dvc {
    type: number
    label: "Common/Ordinary"
    group_label: "Dividends"
    sql: ${TABLE}.dvc ;;
  }

  dimension: dvdnp {
    type: number
    label: "Declared and Not Provided"
    group_label: "Dividends"
    sql: ${TABLE}.dvdnp ;;
  }

  dimension: dvp {
    type: number
    label: "Preferred/Preference"
    group_label: "Dividends"
    sql: ${TABLE}.dvp ;;
  }

  dimension: dvpa {
    type: number
    label: "Preferred Dividends in Arrears"
    sql: ${TABLE}.dvpa ;;
  }

  dimension: dvpd {
    type: number
    label: "Cash Dividends Paid"
    sql: ${TABLE}.dvpd ;;
  }

  dimension: dvpdp {
    type: number
    label: "Dividends and Bonuses Paid Policyholders"
    sql: ${TABLE}.dvpdp ;;
  }

  dimension: dvpibb {
    type: number
    label: "Beginning Balance (Schedule VI)"
    group_label: "Depreciation (Accumulated)"
    sql: ${TABLE}.dvpibb ;;
  }

  dimension: dvpsp_c {
    type: number
    label: "Pay Date - Calendar"
    group_label: "Dividends per Share"
    sql: ${TABLE}.dvpsp_c ;;
  }

  dimension: dvpsp_f {
    type: number
    label: "Pay Date - Fiscal"
    group_label: "Dividends per Share"
    sql: ${TABLE}.dvpsp_f ;;
  }

  dimension: dvpsx_c {
    type: number
    label: "Ex-Date - Calendar"
    group_label: "Dividends per Share"
    sql: ${TABLE}.dvpsx_c ;;
  }

  dimension: dvpsx_f {
    type: number
    label: "Ex-Date - Fiscal"
    group_label: "Dividends per Share"
    sql: ${TABLE}.dvpsx_f ;;
  }

  dimension: dvrpiv {
    type: number
    label: "Dividends Received from Permanent Investments"
    sql: ${TABLE}.dvrpiv ;;
  }

  dimension: dvrre {
    type: number
    label: "Development Revenue (Real Estate)"
    sql: ${TABLE}.dvrre ;;
  }

  dimension: dvsco {
    type: number
    label: "Share Capital - Other"
    group_label: "Dividends"
    sql: ${TABLE}.dvsco ;;
  }

  dimension: dvt {
    type: number
    label: "Total"
    group_label: "Dividends"
    sql: ${TABLE}.dvt ;;
  }

  dimension: dxd2 {
    type: number
    label: "Due in 2nd Year"
    group_label: "Debt (excl Capitalized Leases)"
    sql: ${TABLE}.dxd2 ;;
  }

  dimension: dxd3 {
    type: number
    label: "Due in 3rd Year"
    group_label: "Debt (excl Capitalized Leases)"
    sql: ${TABLE}.dxd3 ;;
  }

  dimension: dxd4 {
    type: number
    label: "Due in 4th Year"
    group_label: "Debt (excl Capitalized Leases)"
    sql: ${TABLE}.dxd4 ;;
  }

  dimension: dxd5 {
    type: number
    label: "Due in 5th Year"
    group_label: "Debt (excl Capitalized Leases)"
    sql: ${TABLE}.dxd5 ;;
  }

  dimension: ea {
    type: number
    label: "Exchange Adjustments (Assets)"
    sql: ${TABLE}.ea ;;
  }

  dimension: ebit {
    type: number
    label: "Earnings Before Interest and Taxes"
    sql: ${TABLE}.ebit ;;
  }

  dimension: ebitda {
    type: number
    label: "Earnings Before Interest"
    sql: ${TABLE}.ebitda ;;
  }

  dimension: eiea {
    type: number
    label: "After-Tax"
    group_label: "Equity in Earnings"
    sql: ${TABLE}.eiea ;;
  }

  dimension: ein {
    type: string
    label: "Employer Identification Number"
    sql: ${TABLE}.ein ;;
  }

  dimension: emol {
    type: number
    label: "Directors' Emoluments"
    sql: ${TABLE}.emol ;;
  }

  dimension: emp {
    type: number
    label: "Employees"
    sql: ${TABLE}.emp ;;
  }

  dimension: epsfi {
    type: number
    label: "Including Extraordinary Items"
    group_label: "Earnings Per Share (Diluted)"
    sql: ${TABLE}.epsfi ;;
  }

  dimension: epsfx {
    type: number
    label: "Excluding Extraordinary Items"
    group_label: "Earnings Per Share (Diluted)"
    sql: ${TABLE}.epsfx ;;
  }

  dimension: epspi {
    type: number
    label: "Including Extraordinary Items"
    group_label: "Earnings Per Share (Diluted)"
    sql: ${TABLE}.epspi ;;
  }

  dimension: epspx {
    type: number
    label: "Excluding Extraordinary Items"
    group_label: "Earnings Per Share (Diluted)"
    sql: ${TABLE}.epspx ;;
  }

  dimension: esopct {
    type: number
    label: "Obligation (Common) - Total"
    group_label: "ESOP"
    sql: ${TABLE}.esopct ;;
  }

  dimension: esopdlt {
    type: number
    label: "ESOP Debt - Long Term"
    group_label: "ESOP"
    sql: ${TABLE}.esopdlt ;;
  }

  dimension: esopnr {
    type: number
    label: "Preferred ESOP Obligation - Non-Redeemable  "
    group_label: "ESOP"
    sql: ${TABLE}.esopnr ;;
  }

  dimension: esopr {
    type: number
    label: "Preferred ESOP Obligation - Redeemable"
    group_label: "ESOP"
    sql: ${TABLE}.esopr ;;
  }

  dimension: esopt {
    type: number
    label: "Preferred ESOP Obligation - Total"
    group_label: "ESOP"
    sql: ${TABLE}.esopt ;;
  }

  dimension: esub {
    type: number
    label: "Unconsolidated Subsidiaries"
    group_label: "Equity in Earnings"
    sql: ${TABLE}.esub ;;
  }

  dimension: esubc {
    type: number
    label: "Equity in Net Loss Earnings"
    sql: ${TABLE}.esubc ;;
  }

  dimension: excadj {
    type: number
    label: "Exchange Adjustments (Liabilities)"
    sql: ${TABLE}.excadj ;;
  }

  dimension: exchg {
    type: number
    label: "Stock Exchange Code"
    sql: ${TABLE}.exchg ;;
  }

  dimension: exre {
    type: number
    label: "Exchange Rate Effect"
    sql: ${TABLE}.exre ;;
  }

  dimension: fatb {
    type: number
    label: "Property, Plant, and Equipment Buildings at Cost"
    sql: ${TABLE}.fatb ;;
  }

  dimension: fatc {
    type: number
    label: "Property, Plant, and Equipment Construction in Progress at Cost"
    sql: ${TABLE}.fatc ;;
  }

  dimension: fatd {
    type: number
    label: "Fixed Assets and Investments - Disposals - Gain (Loss)"
    sql: ${TABLE}.fatd ;;
  }

  dimension: fate {
    type: number
    label: "Property, Plant, and Equipment Machinery and Equipment at Cost"
    sql: ${TABLE}.fate ;;
  }

  dimension: fatl {
    type: number
    label: "Property, Plant, and Equipment Leases at Cost"
    sql: ${TABLE}.fatl ;;
  }

  dimension: fatn {
    type: number
    label: "Property, Plant, and Equipment Natural Resources at Cost"
    sql: ${TABLE}.fatn ;;
  }

  dimension: fato {
    type: number
    label: "Property, Plant, and Equipment Other at Cost"
    sql: ${TABLE}.fato ;;
  }

  dimension: fatp {
    type: number
    label: "Property, Plant, and Equipment Land and Improvements at Cost"
    sql: ${TABLE}.fatp ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fca {
    type: number
    label: "Foreign Exchange Income (Loss)"
    sql: ${TABLE}.fca ;;
  }

  dimension_group: fdate {
    label: "Final Date"
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
    sql: ${TABLE}.fdate ;;
  }

  dimension: fdfr {
    type: number
    label: "Federal Funds Purchased"
    sql: ${TABLE}.fdfr ;;
  }

  dimension: fea {
    type: number
    label: "Foreign Exchange Assets"
    sql: ${TABLE}.fea ;;
  }

  dimension: fel {
    type: number
    label: "Foreign Exchange Liabilities"
    sql: ${TABLE}.fel ;;
  }

  dimension: ffo {
    type: number
    label: "Funds From Operations (REIT)"
    sql: ${TABLE}.ffo ;;
  }

  dimension: ffs {
    type: number
    label: "Federal Funds Sold"
    sql: ${TABLE}.ffs ;;
  }

  dimension: fiao {
    type: number
    label: "Financing Activities Other"
    sql: ${TABLE}.fiao ;;
  }

  dimension: fic {
    type: string
    label: "Foreign Incorporation Code"
    sql: ${TABLE}.fic ;;
  }

  dimension: final {
    type: yesno
    label: "Final Indicator Flag"
    sql: ${TABLE}.final ;;
  }

  dimension: fincf {
    type: number
    label: "Financing Activities Net Cash Flow"
    sql: ${TABLE}.fincf ;;
  }

  dimension: fopo {
    type: number
    label: "Other"
    group_label: "Funds from Operations"
    sql: ${TABLE}.fopo ;;
  }

  dimension: fopox {
    type: number
    group_label: "Funds from Operations"
    label: "Other excluding Option Tax Benefit  "
    sql: ${TABLE}.fopox ;;
  }

  dimension: fopt {
    type: number
    label: "Total"
    group_label: "Funds from Operations"
    sql: ${TABLE}.fopt ;;
  }

  dimension: fsrco {
    type: number
    label: "Sources of Funds Other"
    sql: ${TABLE}.fsrco ;;
  }

  dimension: fsrct {
    type: number
    label: "Sources of Funds Total"
    sql: ${TABLE}.fsrct ;;
  }

  dimension: fuseo {
    type: number
    label: "Uses of Funds Other "
    sql: ${TABLE}.fuseo ;;
  }

  dimension: fuset {
    type: number
    label: "Uses of Funds Total"
    sql: ${TABLE}.fuset ;;
  }

  dimension: fyear {
    type: number
    label: "Data Year - Fiscal"
    sql: ${TABLE}.fyear ;;
  }

  dimension: fyr {
    type: number
    label: "Fiscal Year-End"
    sql: ${TABLE}.fyr ;;
  }

  dimension: fyrc {
    type: number
    label: "Current Fiscal Year End Month"
    sql: ${TABLE}.fyrc ;;
  }

  dimension: gbbl {
    type: number
    label: "Group Benefits (Business Line)"
    sql: ${TABLE}.gbbl ;;
  }

  dimension: gdwl {
    type: number
    label: "Goodwill"
    group_label: "Goodwill"
    sql: ${TABLE}.gdwl ;;
  }

  dimension: gdwlam {
    type: number
    label: "Goodwill Amortization"
    group_label: "Goodwill"
    sql: ${TABLE}.gdwlam ;;
  }

  dimension: gdwlia {
    type: number
    label: "Impairments of Goodwill After-tax"
    group_label: "Goodwill"
    sql: ${TABLE}.gdwlia ;;
  }

  dimension: gdwlid {
    type: number
    label: "Impairments of Goodwill Diluted EPS Effect"
    group_label: "Goodwill"
    value_format_name: id
    sql: ${TABLE}.gdwlid ;;
  }

  dimension: gdwlieps {
    type: number
    label: "Impairments of Goodwill Basic EPS Effect"
    group_label: "Goodwill"
    sql: ${TABLE}.gdwlieps ;;
  }

  dimension: gdwlip {
    type: number
    label: "Impairments of Goodwill Pretax"
    group_label: "Goodwill"
    sql: ${TABLE}.gdwlip ;;
  }

  dimension: geqrv {
    type: number
    label: "Equity Reserves"
    group_label: "Grants"
    sql: ${TABLE}.geqrv ;;
  }

  dimension: ggroup {
    type: number
    label: "GIC Groups"
    sql: ${TABLE}.ggroup ;;
  }

  dimension: gind {
    type: number
    label: "GIC Industries"
    sql: ${TABLE}.gind ;;
  }

  dimension: gla {
    type: number
    label: "Gain/Loss After-tax"
    sql: ${TABLE}.gla ;;
  }

  dimension: glcea {
    type: number
    label: "Gain/Loss on Sale (Core Earnings Adjusted) After-tax"
    sql: ${TABLE}.glcea ;;
  }

  dimension: glced {
    type: number
    label: "Gain/Loss on Sale (Core Earnings Adjusted) Diluted EPS"
    sql: ${TABLE}.glced ;;
  }

  dimension: glceeps {
    type: number
  label: "Gain/Loss on Sale (Core Earnings Adjusted) Basic EPS Effect  "
    sql: ${TABLE}.glceeps ;;
  }

  dimension: glcep {
    type: number
    label: "Gain/Loss on Sale (Core Earnings Adjusted) Pretax"
    sql: ${TABLE}.glcep ;;
  }

  dimension: gld {
    type: number
    label: "Gain/Loss Diluted EPS Effect"
    sql: ${TABLE}.gld ;;
  }

  dimension: gleps {
    type: number
    label: "Gain/Loss Basic EPS Effect"
    sql: ${TABLE}.gleps ;;
  }

  dimension: glp {
    type: number
    label: "Gain/Loss Pretax"
    sql: ${TABLE}.glp ;;
  }

  dimension: govgr {
    type: number
    label: "Government Grants"
    sql: ${TABLE}.govgr ;;
  }

  dimension: govtown {
    type: number
    label: "Percent of Gov't Owned"
    sql: ${TABLE}.govtown ;;
  }

  dimension: gp {
    type: number
    label: "Gross Profit (Loss)"
    sql: ${TABLE}.gp ;;
  }

  dimension: gphbl {
    type: number
    label: "Health (Business Line)"
    group_label: "Group Premiums"
    sql: ${TABLE}.gphbl ;;
  }

  dimension: gplbl {
    type: number
    label: "Life (Business Line)"
    group_label: "Group Premiums"
    sql: ${TABLE}.gplbl ;;
  }

  dimension: gpobl {
    type: number
    label: " Other (Business Line)"
    group_label: "Group Premiums"
    sql: ${TABLE}.gpobl ;;
  }

  dimension: gprbl {
    type: number
    label: "Retirement Benefits (Business Line)"
    group_label: "Group Premiums"
    sql: ${TABLE}.gprbl ;;
  }

  dimension: gptbl {
    type: number
    label: "Total (Business Line)"
    group_label: "Group Premiums"
    sql: ${TABLE}.gptbl ;;
  }

  dimension: gsector {
    type: number
    label: "GIC Sectors"
    sql: ${TABLE}.gsector ;;
  }

  dimension: gsubind {
    type: number
    label: "GIC Sub-Industries"
    sql: ${TABLE}.gsubind ;;
  }


  dimension: gwo {
    type: number
    label: "Goodwill Written Off"
    group_label: "Goodwill"
    sql: ${TABLE}.gwo ;;
  }

  dimension: hedgegl {
    type: number
    label: "Gain/Loss on Ineffective Hedges "
    sql: ${TABLE}.hedgegl ;;
  }

  dimension: iaeq {
    type: number
    label: "Equity Securities (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iaeq ;;
  }

  dimension: iaeqci {
    type: number
    label: "Equity Securities (Cost)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iaeqci ;;
  }

  dimension: iaeqmi {
    type: number
    label: "Equity Securities (Market)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iaeqmi ;;
  }

  dimension: iafici {
    type: number
    label: "Fixed Income Securities (Cost)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iafici ;;
  }

  dimension: iafxi {
    type: number
    label: "Fixed Income Securities (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iafxi ;;
  }

  dimension: iafxmi {
    type: number
    label: "Fixed Income Securities (Market)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iafxmi ;;
  }

  dimension: iali {
    type: number
    label: " Listed Securities-Total"
    group_label: "Investment Assets"
    sql: ${TABLE}.iali ;;
  }

  dimension: ialoi {
    type: number
    label: "Loans - Other (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.ialoi ;;
  }

  dimension: ialti {
    type: number
    label: "Loans - Total (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.ialti ;;
  }

  dimension: iamli {
    type: number
    label: " Mortgage Loans (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iamli ;;
  }

  dimension: iaoi {
    type: number
    label: " Other (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iaoi ;;
  }

  dimension: iapli {
    type: number
    label: "Policy Loans (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iapli ;;
  }

  dimension: iarei {
    type: number
    label: "Real Estate (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iarei ;;
  }

  dimension: iasci {
    type: number
    label: "Securities - Sundry (Cost)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iasci ;;
  }

  dimension: iasmi {
    type: number
    label: "Securities - Sundry (Market)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iasmi ;;
  }

  dimension: iassi {
    type: number
    label: " Securities - Sundry (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iassi ;;
  }

  dimension: iasti {
    type: number
    label: "Securities - Total (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iasti ;;
  }

  dimension: iatci {
    type: number
    label: " Securities - Total (Cost)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iatci ;;
  }

  dimension: iati {
    type: number
    label: "Total (Insurance)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iati ;;
  }

  dimension: iatmi {
    type: number
    label: "Securities - Total (Market)"
    group_label: "Investment Assets"
    sql: ${TABLE}.iatmi ;;
  }

  dimension: iaui {
    type: number
    label: "Unlisted Securities - Total"
    group_label: "Investment Assets"
    sql: ${TABLE}.iaui ;;
  }

  dimension: ib {
    type: number
    label: "Income Before Extraordinary Items"
    sql: ${TABLE}.ib ;;
  }

  dimension: ibadj {
    type: number
    label: "Income Before Extraordinary Items Adjusted for Common Stock Equivalent"
    sql: ${TABLE}.ibadj ;;
  }

  dimension: ibbl {
    type: number
    label: "Individual Benefits (Business Line)"
    sql: ${TABLE}.ibbl ;;
  }

  dimension: ibc {
    type: number
    label: "Income Before Extraordinary Items (Cash Flow)"
    sql: ${TABLE}.ibc ;;
  }

  dimension: ibcom {
    type: number
    label: "Income Before Extraordinary Items Available for Common"
    sql: ${TABLE}.ibcom ;;
  }

  dimension: ibki {
    type: number
    label: "Investment Banking Income"
    sql: ${TABLE}.ibki ;;
  }

  dimension: ibmii {
    type: number
    label: "Income before Extraordinary Items and Noncontrolling Interests"
    sql: ${TABLE}.ibmii ;;
  }

  dimension: icapt {
    type: number
    label: "Invested Capital - Total "
    sql: ${TABLE}.icapt ;;
  }

  dimension: idbflag {
    type: string
    label: "International, Domestic, Both Indicator"
    sql: ${TABLE}.idbflag ;;
  }

  dimension: idiis {
    type: number
    label: "Investment Securities"
    group_label: "Interest and Dividend Income"
    sql: ${TABLE}.idiis ;;
  }

  dimension: idilb {
    type: number
    label: "Loans/Claims/Advances - Banks"
    group_label: "Interest and Dividend Income"
    sql: ${TABLE}.idilb ;;
  }

  dimension: idilc {
    type: number
    label: "Loans/Claims/Advances - Customers"
    group_label: "Interest and Dividend Income"
    sql: ${TABLE}.idilc ;;
  }

  dimension: idis {
    type: number
    label: "Sundry"
    group_label: "Interest and Dividend Income"
    sql: ${TABLE}.idis ;;
  }

  dimension: idist {
    type: number
    label: "Short-Term Investments"
    group_label: "Interest and Dividend Income"
    sql: ${TABLE}.idist ;;
  }

  dimension: idit {
    type: number
    label: "Interest and Related Income - Total"
    sql: ${TABLE}.idit ;;
  }

  dimension: idits {
    type: number
    label: "Trading Securities"
    group_label: "Interest and Dividend Income"
    sql: ${TABLE}.idits ;;
  }

  dimension: iire {
    type: number
    label: "Investment Income (Real Estate)"
    sql: ${TABLE}.iire ;;
  }

  dimension: incorp {
    type: string
    label: "Current State/Province of Incorporation Code"
    sql: ${TABLE}.incorp ;;
  }

  dimension: indfmt {
    type: string

    sql: ${TABLE}.indfmt ;;
  }

  dimension: initb {
    type: number
    label: "Income - Non-interest - Total (Bank)"
    sql: ${TABLE}.initb ;;
  }

  dimension: intan {
    type: number
    label: "Intangible Assets - Total"
    sql: ${TABLE}.intan ;;
  }

  dimension: intano {
    type: number
    label: "Other Intangibles"
    sql: ${TABLE}.intano ;;
  }

  dimension: intc {
    type: number
    label: "Interest Capitalized"
    sql: ${TABLE}.intc ;;
  }

  dimension: intpn {
    type: number
    label: "Interest Paid Net"
    sql: ${TABLE}.intpn ;;
  }

  dimension: invch {
    type: number
    label: "Inventory Decrease (Increase)"
    sql: ${TABLE}.invch ;;
  }

  dimension: invfg {
    type: number
    label: "Inventories Finished Goods"
    sql: ${TABLE}.invfg ;;
  }

  dimension: invo {
    type: number
    label: "Inventories Other"
    sql: ${TABLE}.invo ;;
  }

  dimension: invofs {
    type: number
    label: "Other"
    group_label: "Inventory/Stock"
    sql: ${TABLE}.invofs ;;
  }

  dimension: invreh {
    type: number
    label: "Real Estate Held for Development"
    group_label: "Inventory/Stock"
    sql: ${TABLE}.invreh ;;
  }

  dimension: invrei {
    type: number
    label: "Real Estate Under Development"
    group_label: "Inventory/Stock"
    sql: ${TABLE}.invrei ;;
  }

  dimension: invres {
    type: number
    label: "Real Estate Held for Sale"
    group_label: "Inventory/Stock"
    sql: ${TABLE}.invres ;;
  }

  dimension: invrm {
    type: number
    label: "Inventories Raw Materials"
    sql: ${TABLE}.invrm ;;
  }

  dimension: invt {
    type: number
    label: "Inventories - Total"
    sql: ${TABLE}.invt ;;
  }

  dimension: invwip {
    type: number
    label: "Inventories Work In Process"
    sql: ${TABLE}.invwip ;;
  }

  dimension: iobd {
    type: number
    label: "Other (Broker Dealer)"
    group_label: "Income"
    sql: ${TABLE}.iobd ;;
  }

  dimension: ioi {
    type: number
    label: "Other (Insurance)"
    group_label: "Income"
    sql: ${TABLE}.ioi ;;
  }

  dimension: iore {
    type: number
    label: "Other (Real Estate)"
    group_label: "Income"
    sql: ${TABLE}.iore ;;
  }

  dimension: ip {
    type: number
    label: "Investment Property"
    sql: ${TABLE}.ip ;;
  }

  dimension: ipabl {
    type: number
    group_label: "Individual Premiums"
    label: " Annuity (Business Line)"
    sql: ${TABLE}.ipabl ;;
  }

  dimension: ipc {
    type: number
    label: "Investment Property (Cost)"
    sql: ${TABLE}.ipc ;;
  }

  dimension: iphbl {
    type: number
    label: "Health (Business Line)"
    group_label: "Individual Premiums"
    sql: ${TABLE}.iphbl ;;
  }

  dimension: iplbl {
    type: number
    label: "Life (Business Line)"
    group_label: "Individual Premiums"
    sql: ${TABLE}.iplbl ;;
  }

  dimension: ipobl {
    type: number
    label: "Other (Business Line)"
    group_label: "Individual Premiums"
    sql: ${TABLE}.ipobl ;;
  }

  dimension_group: ipodate {
    label: "IPO Date"
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
    sql: ${TABLE}.ipodate ;;
  }

  dimension: iptbl {
    type: number
    label: "Total (Business Line)"
    group_label: "Individual Premiums"
    sql: ${TABLE}.iptbl ;;
  }

  dimension: ipti {
    type: number
    label: "Total (Insurance)"
    group_label: "Insurance Premiums"
    sql: ${TABLE}.ipti ;;
  }

  dimension: ipv {
    type: number
    label: "Investment Property (Valuation)"
    sql: ${TABLE}.ipv ;;
  }

  dimension: irei {
    type: number
    label: "Reinsurance (Insurance)"
    group_label: "Interest and Related Income"
    sql: ${TABLE}.irei ;;
  }

  dimension: irent {
    type: number
    label: "Rental Income"
    group_label: "Rental Commitments"
    sql: ${TABLE}.irent ;;
  }

  dimension: irii {
    type: number
    label: "(Insurance)"
    group_label: "Interest and Related Income"
    sql: ${TABLE}.irii ;;
  }

  dimension: irli {
    type: number
    label: "Life (Insurance)"
    group_label: "Interest and Related Income"
    sql: ${TABLE}.irli ;;
  }

  dimension: irnli {
    type: number
    label: "Non-Life (Insurance)"
    group_label: "Interest and Related Income"
    sql: ${TABLE}.irnli ;;
  }

  dimension: irsi {
    type: number
    label: "Sundry (Insurance)"
    group_label: "Interest and Related Income"
    sql: ${TABLE}.irsi ;;
  }

  dimension: iseq {
    type: number
    label: "Equity"
    group_label: "Investment Securities"
    sql: ${TABLE}.iseq ;;
  }

  dimension: iseqc {
    type: number
    label: "Equity (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.iseqc ;;
  }

  dimension: iseqm {
    type: number
    label: "Equity (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.iseqm ;;
  }

  dimension: isfi {
    type: number
    label: "Fixed Income"
    group_label: "Investment Securities"
    sql: ${TABLE}.isfi ;;
  }

  dimension: isfxc {
    type: number
    label: "Fixed Income (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.isfxc ;;
  }

  dimension: isfxm {
    type: number
    label: "Fixed Income (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.isfxm ;;
  }

  dimension: isgr {
    type: number
    label: "Gain (Loss) - Realized"
    group_label: "Investment Securities"
    sql: ${TABLE}.isgr ;;
  }

  dimension: isgt {
    type: number
    label: "Gain (Loss) - Total"
    group_label: "Investment Securities"
    sql: ${TABLE}.isgt ;;
  }

  dimension: isgu {
    type: number
    label: "Gain (Loss) - Unrealized"
    group_label: "Investment Securities"
    sql: ${TABLE}.isgu ;;
  }

  dimension: islg {
    type: number
    label: "Local Governments"
    group_label: "Investment Securities"
    sql: ${TABLE}.islg ;;
  }

  dimension: islgc {
    type: number
    label: "Local Governments (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.islgc ;;
  }

  dimension: islgm {
    type: number
    label: "Local Governments (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.islgm ;;
  }

  dimension: islt {
    type: number
    label: "Listed - Total"
    group_label: "Investment Securities"
    sql: ${TABLE}.islt ;;
  }

  dimension: ismod {
    type: number
    label: "Income Statement Model Number"
    sql: ${TABLE}.ismod ;;
  }

  dimension: isng {
    type: number
    label: "National Governments"
    group_label: "Investment Securities"
    sql: ${TABLE}.isng ;;
  }

  dimension: isngc {
    type: number
    label: "National Governments (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.isngc ;;
  }

  dimension: isngm {
    type: number
    label: "National Governments (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.isngm ;;
  }

  dimension: isotc {
    type: number
    label: "Other (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.isotc ;;
  }

  dimension: isoth {
    type: number
    label: "Other"
    group_label: "Investment Securities"
    sql: ${TABLE}.isoth ;;
  }

  dimension: isotm {
    type: number
    label: "Other (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.isotm ;;
  }

  dimension: issc {
    type: number
    label: "Sundry (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.issc ;;
  }

  dimension: issm {
    type: number
    label: "Sundry (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.issm ;;
  }

  dimension: issu {
    type: number
    label: "Sundry"
    group_label: "Investment Securities"
    sql: ${TABLE}.issu ;;
  }

  dimension: ist {
    type: number
    label: "Total"
    group_label: "Investment Securities"
    sql: ${TABLE}.ist ;;
  }

  dimension: istc {
    type: number
    label: "Total (Cost)"
    group_label: "Investment Securities"
    sql: ${TABLE}.istc ;;
  }

  dimension: istm {
    type: number
    label: "Total (Market)"
    group_label: "Investment Securities"
    sql: ${TABLE}.istm ;;
  }

  dimension: isut {
    type: number
    label: "Unlisted - Total"
    group_label: "Investment Securities"
    sql: ${TABLE}.isut ;;
  }

  dimension: itcb {
    type: number
    label: "Investment Tax Credit (Balance Sheet)"
    sql: ${TABLE}.itcb ;;
  }

  dimension: itcc {
    type: number
    label: "Investment Tax Credit - Net (Cash Flow) - Utility"
    sql: ${TABLE}.itcc ;;
  }

  dimension: itci {
    type: number
    label: "Investment Tax Credit (Income Account)"
    sql: ${TABLE}.itci ;;
  }

  dimension: ivaco {
    type: number
    label: "Investing Activities Other"
    sql: ${TABLE}.ivaco ;;
  }

  dimension: ivaeq {
    type: number
    label: "Investment and Advances - Equity"
    sql: ${TABLE}.ivaeq ;;
  }

  dimension: ivao {
    type: number
    label: "Investment and Advances Other"
    sql: ${TABLE}.ivao ;;
  }

  dimension: ivch {
    type: number
    label: "Increase in Investments"
    sql: ${TABLE}.ivch ;;
  }

  dimension: ivgod {
    type: number
    label: "Investments Grants and Other Deductions"
    sql: ${TABLE}.ivgod ;;
  }

  dimension: ivi {
    type: number
    label: "Total (Insurance)"
    group_label: "Investment Income"
    sql: ${TABLE}.ivi ;;
  }

  dimension: ivncf {
    type: number
    label: "Investing Activities Net Cash Flow"
    sql: ${TABLE}.ivncf ;;
  }

  dimension: ivpt {
    type: number
    label: "Permanent - Total"
    group_label: "Investments"
    sql: ${TABLE}.ivpt ;;
  }

  dimension: ivst {
    type: number
    label: "Short-Term Investments - Total"
    sql: ${TABLE}.ivst ;;
  }

  dimension: ivstch {
    type: number
    label: "Short-Term Investments Change"
    sql: ${TABLE}.ivstch ;;
  }

  dimension: lcabg {
    type: number
    label: "Banks and Government - Total"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcabg ;;
  }

  dimension: lcacl {
    type: number
    label: "Commercial"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcacl ;;
  }

  dimension: lcacr {
    type: number
    label: "Consumer"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcacr ;;
  }

  dimension: lcag {
    type: number
    label: "Government"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcag ;;
  }

  dimension: lcal {
    type: number
    label: "Lease"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcal ;;
  }

  dimension: lcalt {
    type: number
    label: "Long-Term (Banks)"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcalt ;;
  }

  dimension: lcam {
    type: number
    label: "Mortgage"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcam ;;
  }

  dimension: lcao {
    type: number
    label: "Other"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcao ;;
  }

  dimension: lcast {
    type: number
    label: "Short-Term - Banks"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcast ;;
  }

  dimension: lcat {
    type: number
    label: "Total"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcat ;;
  }

  dimension: lco {
    type: number
    label: "Other Total"
    group_label: "Current Liabilities"
    sql: ${TABLE}.lco ;;
  }

  dimension: lcox {
    type: number
    label: "Other Sundry"
    group_label: "Current Liabilities"
    sql: ${TABLE}.lcox ;;
  }

  dimension: lcoxar {
    type: number
    label: "Other - Total As Reported"
    group_label: "Current Liabilities"
    sql: ${TABLE}.lcoxar ;;
  }

  dimension: lcoxdr {
    type: number
    label: "Other - Excluding Deferred Revenue"
    group_label: "Current Liabilities"
    sql: ${TABLE}.lcoxdr ;;
  }

  dimension: lct {
    type: number
    label: "Total"
    group_label: "Current Liabilities"
    sql: ${TABLE}.lct ;;
  }

  dimension: lcuacu {
    type: number
    label: "Customer - Total"
    group_label: "Loans/Claims/Advances"
    sql: ${TABLE}.lcuacu ;;
  }

  dimension: li {
    type: number
    label: "Leasing Income"
    sql: ${TABLE}.li ;;
  }

  dimension: lif {
    type: number
    label: "Life Insurance in Force"
    sql: ${TABLE}.lif ;;
  }

  dimension: lifr {
    type: number
    label: "LIFO Reserve"
    sql: ${TABLE}.lifr ;;
  }

  dimension: lloml {
    type: number
    label: "Medium and Long-Term"
    group_label: "LDC Loans Outstanding"
    sql: ${TABLE}.lloml ;;
  }

  dimension: lloo {
    type: number
    label: "Other"
    group_label: "LDC Loans Outstanding"
    sql: ${TABLE}.lloo ;;
  }

  dimension: llot {
    type: number
    label: "Total"
    group_label: "LDC Loans Outstanding"
    sql: ${TABLE}.llot ;;
  }

  dimension: llrci {
    type: number
    label: "Credited to Income"
    group_label: "Loan Loss Recoveries"
    sql: ${TABLE}.llrci ;;
  }

  dimension: llrcr {
    type: number
    label: "Credited to Reserves"
    group_label: "Loan Loss Recoveries"
    sql: ${TABLE}.llrcr ;;
  }

  dimension: llwoci {
    type: number
    label: "Charged to Income"
    group_label: "Loan Loss Written Off"
    sql: ${TABLE}.llwoci ;;
  }

  dimension: llwocr {
    type: number
    label: "Charged to Reserves"
    group_label: "Loan Loss Written Off"
    sql: ${TABLE}.llwocr ;;
  }

  dimension: lno {
    type: number
    label: "Liabilities Netting & Other Adjustments"
    sql: ${TABLE}.lno ;;
  }

  dimension: lo {
    type: number
    label: "Other - Total"
    group_label: "Liabilities"
    sql: ${TABLE}.lo ;;
  }

  dimension: loc {
    type: string
    label: "Current ISO Country Code - Headquarters"
    sql: ${TABLE}.loc ;;
  }

  dimension: lol2 {
    type: number
    label: "Level2 (Observable)"
    group_label: "Liabilities"
    sql: ${TABLE}.lol2 ;;
  }

  dimension: loxdr {
    type: number
    label: "Other - Excluding Deferred Revenue"
    group_label: "Liabilities"
    sql: ${TABLE}.loxdr ;;
  }

  dimension: lqpl1 {
    type: number
    label: "Level1 (Quoted Prices)"
    group_label: "Liabilities"
    sql: ${TABLE}.lqpl1 ;;
  }

  dimension: lrv {
    type: number
    label: "Legal Reserves"
    sql: ${TABLE}.lrv ;;
  }

  dimension: ls {
    type: number
    label: "Other - Sundry"
    group_label: "Liabilities"
    sql: ${TABLE}.ls ;;
  }

  dimension: lse {
    type: number
    label: "Liabilities and Stockholders Equity - Total"
    sql: ${TABLE}.lse ;;
  }

  dimension: lst {
    type: number
    label: "Life Insurance Surrenders and Terminations"
    sql: ${TABLE}.lst ;;
  }

  dimension: lt {
    type: number
    label: "Total"
    group_label: "Liabilities"
    sql: ${TABLE}.lt ;;
  }

  dimension: ltcm {
    type: number
    label: "Long Term Contract Method"
    sql: ${TABLE}.ltcm ;;
  }

  dimension: lul3 {
    type: number
    label: "Level3 (Unobservable)"
    group_label: "Liabilities"
    sql: ${TABLE}.lul3 ;;
  }

  dimension: mib {
    type: number
    label: "Minority Interest (Balance Sheet)"
    sql: ${TABLE}.mib ;;
  }

  dimension: mibn {
    type: number
    label: "Noncontrolling Interests - Nonredeemable - Balance Sheet"
    sql: ${TABLE}.mibn ;;
  }

  dimension: mibt {
    type: number
    label: "Noncontrolling Interests - Total - Balance Sheet"
    sql: ${TABLE}.mibt ;;
  }

  dimension: mii {
    type: number
    label: "Minority Interest (Income Account)"
    sql: ${TABLE}.mii ;;
  }

  dimension: mkvalt {
    type: number
    label: "Market Value - Total - Fiscal"
    sql: ${TABLE}.mkvalt ;;
  }

  dimension: mrc1 {
    type: number
    label: "Minimum 1st Year"
    group_label: "Rental Commitments"
    sql: ${TABLE}.mrc1 ;;
  }

  dimension: mrc2 {
    type: number
    label: "Minimum 2nd Year"
    group_label: "Rental Commitments"
    sql: ${TABLE}.mrc2 ;;
  }

  dimension: mrc3 {
    type: number
    label: "Minimum 3rd Year"
    group_label: "Rental Commitments"
    sql: ${TABLE}.mrc3 ;;
  }

  dimension: mrc4 {
    type: number
    label: "Minimum 4th Year"
    group_label: "Rental Commitments"
    sql: ${TABLE}.mrc4 ;;
  }

  dimension: mrc5 {
    type: number
    label: "Minimum 5th Year"
    group_label: "Rental Commitments"
    sql: ${TABLE}.mrc5 ;;
  }

  dimension: mrct {
    type: number
    label: "Minimum 5th Year total"
    group_label: "Rental Commitments"
    sql: ${TABLE}.mrct ;;
  }

  dimension: mrcta {
    type: number
    label: "Thereafter Portion of Leases"
    sql: ${TABLE}.mrcta ;;
  }

  dimension: msa {
    type: number
    label: "Marketable Securities Adjustment"
    sql: ${TABLE}.msa ;;
  }

  dimension: msvrv {
    type: number
    label: "Mandatory Securities Valuation Reserve (Statutory)"
    sql: ${TABLE}.msvrv ;;
  }

  dimension: mtl {
    type: number
    label: "Loans From Securities Finance Companies for Margin Transactions"
    sql: ${TABLE}.mtl ;;
  }

  dimension: naics {
    type: number
    label: "North American Industry Classification Code"
    sql: ${TABLE}.naics ;;
  }

  dimension: naicsh {
    type: number
    label: "North America Industrial Classification System - Historical"
    sql: ${TABLE}.naicsh ;;
  }

  dimension: nat {
    type: number
    label: "Nonadmitted Assets - Total (Statutory)"
    sql: ${TABLE}.nat ;;
  }

  dimension: nco {
    type: number
    label: "Net Charge-Offs"
    sql: ${TABLE}.nco ;;
  }

  dimension: nfsr {
    type: number
    label: "Non-Financial Services Revenue"
    sql: ${TABLE}.nfsr ;;
  }

  dimension: ni {
    type: number
    label: "Net Income (Loss)"
    sql: ${TABLE}.ni ;;
  }

  dimension: niadj {
    type: number
    label: "Net Income Adjusted for Common/Ordinary Stock (Capital) Equivalents"
    sql: ${TABLE}.niadj ;;
  }

  dimension: nieci {
    type: number
    label: "Net Income Effect Capitalized Interest"
    sql: ${TABLE}.nieci ;;
  }

  dimension: niint {
    type: number
    label: "Net Interest Income"
    sql: ${TABLE}.niint ;;
  }

  dimension: niintpfc {
    type: string
    label: "Pro Forma Net Interest Income - Current"
    sql: ${TABLE}.niintpfc ;;
  }

  dimension: niintpfp {
    type: string
    label: "Pro Forma Net Interest Income - Prior"
    sql: ${TABLE}.niintpfp ;;
  }

  dimension: niit {
    type: number
    label: "Net Interest Income (Tax Equivalent)"
    sql: ${TABLE}.niit ;;
  }

  dimension: nim {
    type: number
    label: "Net Interest Margin"
    sql: ${TABLE}.nim ;;
  }

  dimension: nio {
    type: number
    label: "Net Items - Other"
    sql: ${TABLE}.nio ;;
  }

  dimension: nipfc {
    type: number
    label: "Pro Forma Net Income - Current"
    sql: ${TABLE}.nipfc ;;
  }

  dimension: nipfp {
    type: number
    label: "Pro Forma Net Income - Prior"
    sql: ${TABLE}.nipfp ;;
  }

  dimension: nit {
    type: number
    label: "Net Item - Total"
    sql: ${TABLE}.nit ;;
  }

  dimension: nits {
    type: number
    label: "Net Income - Total (Statutory)"
    sql: ${TABLE}.nits ;;
  }

  dimension: nopi {
    type: number
    label: "Nonoperating Income (Expense)"
    sql: ${TABLE}.nopi ;;
  }

  dimension: nopio {
    type: number
    label: "Nonoperating Income (Expense) Other"
    sql: ${TABLE}.nopio ;;
  }

  dimension: np {
    type: number
    label: "Notes Payable Short-Term Borrowings"
    sql: ${TABLE}.np ;;
  }

  dimension: npanl {
    type: number
    label: "Nonaccrual Loans"
    group_label: "Nonperforming Assets"
    sql: ${TABLE}.npanl ;;
  }

  dimension: npaore {
    type: number
    label: "Other Real Estate Owned"
    group_label: "Nonperforming Assets"
    sql: ${TABLE}.npaore ;;
  }

  dimension: nparl {
    type: number
    label: "Restructured Loans"
    group_label: "Nonperforming Assets"
    sql: ${TABLE}.nparl ;;
  }

  dimension: npat {
    type: number
    label: "Total"
    group_label: "Nonperforming Assets"
    sql: ${TABLE}.npat ;;
  }

  dimension: nrtxt {
    type: number
    label: "Nonrecurring Income Taxes After-tax"
    sql: ${TABLE}.nrtxt ;;
  }

  dimension: nrtxtd {
    type: number
    label: "Nonrecurring Income Tax Diluted EPS Effect"
    sql: ${TABLE}.nrtxtd ;;
  }

  dimension: nrtxteps {
    type: number
    label: "Nonrecurring Income Tax Basic EPS Effect"
    sql: ${TABLE}.nrtxteps ;;
  }

  dimension: oancf {
    type: number
    label: "Operating Activities Net Cash Flow"
    sql: ${TABLE}.oancf ;;
  }

  dimension: ob {
    type: number
    label: "Order Backlog"
    sql: ${TABLE}.ob ;;
  }

  dimension: ogm {
    type: string
    label: "OIL & GAS METHOD"
    sql: ${TABLE}.ogm ;;
  }

  dimension: oiadp {
    type: number
    label: "Operating Income After Depreciation"
    sql: ${TABLE}.oiadp ;;
  }

  dimension: oibdp {
    type: number
    label: "Operating Income Before Depreciation"
    sql: ${TABLE}.oibdp ;;
  }

  dimension: opeps {
    type: number
    label: "Earnings Per Share from Operations"
    sql: ${TABLE}.opeps ;;
  }

  dimension: opili {
    type: number
    label: "Life"
    group_label: "Operating Income"
    sql: ${TABLE}.opili ;;
  }

  dimension: opincar {
    type: number
    label: "As Reported"
    group_label: "Operating Income"
    sql: ${TABLE}.opincar ;;
  }

  dimension: opini {
    type: number
    label: "Non-Life"
    group_label: "Operating Income"
    sql: ${TABLE}.opini ;;
  }

  dimension: opioi {
    type: number
    label: "Other"
    group_label: "Operating Income"
    sql: ${TABLE}.opioi ;;
  }

  dimension: opiri {
    type: number
    label: "Reinsurance"
    group_label: "Operating Income"
    sql: ${TABLE}.opiri ;;
  }

  dimension: opiti {
    type: number
    label: "Total"
    group_label: "Operating Income"
    sql: ${TABLE}.opiti ;;
  }

  dimension: oprepsx {
    type: number
    label: "Earnings Per Share Diluted from Operations"
    sql: ${TABLE}.oprepsx ;;
  }

  dimension: optca {
    type: number
    label: "Options - Cancelled (-)"
    sql: ${TABLE}.optca ;;
  }

  dimension: optdr {
    type: number
    label: "Dividend Rate - Assumption (%)"
    sql: ${TABLE}.optdr ;;
  }

  dimension: optex {
    type: number
    label: "Options Exercisable (000)"
    group_label: "Options"
    sql: ${TABLE}.optex ;;
  }

  dimension: optexd {
    type: number
    label: "Exercised (-)"
    group_label: "Options"
    sql: ${TABLE}.optexd ;;
  }

  dimension: optfvgr {
    type: number
    label: "Fair Value of Options Granted"
    group_label: "Options"
    sql: ${TABLE}.optfvgr ;;
  }

  dimension: optgr {
    type: number
    label: "Granted"
    group_label: "Options"
    sql: ${TABLE}.optgr ;;
  }

  dimension: optlife {
    type: number
    label: "Life of Options- Assumption (## yrs)"
    group_label: "Options"
    sql: ${TABLE}.optlife ;;
  }

  dimension: optosby {
    type: number
    label: "Options Outstanding - Beg of Year"
    group_label: "Options"
    sql: ${TABLE}.optosby ;;
  }

  dimension: optosey {
    type: number
    label: "Options Outstanding - End of Year"
    group_label: "Options"
    sql: ${TABLE}.optosey ;;
  }

  dimension: optprcby {
    type: number
    label: "Options Outstanding Beg of Year - Price"
    group_label: "Options"
    sql: ${TABLE}.optprcby ;;
  }

  dimension: optprcca {
    type: number
    label: "Options Cancelled - Price"
    group_label: "Options"
    sql: ${TABLE}.optprcca ;;
  }

  dimension: optprcex {
    type: number
    label: "Options Exercised - Price"
    group_label: "Options"
    sql: ${TABLE}.optprcex ;;
  }

  dimension: optprcey {
    type: number
    label: "Options Outstanding End of Year - Price"
    group_label: "Options"
    sql: ${TABLE}.optprcey ;;
  }

  dimension: optprcgr {
    type: number
    label: "Options Granted - Price"
    group_label: "Options"
    sql: ${TABLE}.optprcgr ;;
  }

  dimension: optprcwa {
    type: number
    label: "Options Exercisable - Weighted Avg Price"
    group_label: "Options"
    sql: ${TABLE}.optprcwa ;;
  }

  dimension: optrfr {
    type: number
    label: "Risk Free Rate - Assumption (%)"
    group_label: "Options"
    sql: ${TABLE}.optrfr ;;
  }

  dimension: optvol {
    type: number
    label: "Volatility - Assumption (%)"
    group_label: "Options"
    sql: ${TABLE}.optvol ;;
  }

  dimension: palr {
    type: number
    label: "Premiums Assumed - Life"
    group_label: "Premiums"
    sql: ${TABLE}.palr ;;
  }

  dimension: panlr {
    type: number
    group_label: "Premiums"
    label: "Premiums Assumed - Nonlife"
    sql: ${TABLE}.panlr ;;
  }

  dimension: patr {
    type: number
    group_label: "Premiums"
    label: "Premiums Assumed - Total"
    sql: ${TABLE}.patr ;;
  }

  dimension: pcl {
    type: number
    label: "Provision - Credit Losses (Income Account)"
    sql: ${TABLE}.pcl ;;
  }

  dimension: pclr {
    type: number
    group_label: "Premiums"
    label: "Premiums Ceded - Life"
    sql: ${TABLE}.pclr ;;
  }

  dimension: pcnlr {
    type: number
    group_label: "Premiums"
    label: "Premiums Ceded - Nonlife"
    sql: ${TABLE}.pcnlr ;;
  }

  dimension: pctr {
    type: number
    group_label: "Premiums"
    label: "Premiums Ceded - Total"
    sql: ${TABLE}.pctr ;;
  }

  dimension_group: pdate {
    label: "Preliminary Date"
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
    sql: ${TABLE}.pdate ;;
  }

  dimension: pddur {
    type: number
    label: "Period Duration"
    sql: ${TABLE}.pddur ;;
  }

  dimension: pdvc {
    type: number
    label: "Cash Dividends on Preferred/Preference Stock (Cash Flow)"
    sql: ${TABLE}.pdvc ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: pi {
    type: number
    label: "Pretax Income"
    sql: ${TABLE}.pi ;;
  }

  dimension: pidom {
    type: number
    label: "Pretax Income Domestic"
    sql: ${TABLE}.pidom ;;
  }

  dimension: pifo {
    type: number
    label: "Pretax Income Foreign"
    sql: ${TABLE}.pifo ;;
  }

  dimension: pll {
    type: number
    label: "Provision for Loan/Asset Losses"
    sql: ${TABLE}.pll ;;
  }

  dimension: pltbl {
    type: number
    label: "Life - Total (Business Line)"
    group_label: "Premiums"
    sql: ${TABLE}.pltbl ;;
  }

  dimension: pnca {
    type: number
    label: "Core Pension Adjustment"
    sql: ${TABLE}.pnca ;;
  }

  dimension: pncad {
    type: number
    label: "Core Pension Adjustment Diluted EPS Effect"
    sql: ${TABLE}.pncad ;;
  }

  dimension: pncaeps {
    type: number
    label: "Core Pension Adjustment Basic EPS Effect"
    sql: ${TABLE}.pncaeps ;;
  }

  dimension: pncia {
    type: number
    label: "Core Pension Interest Adjustment After-tax"
    sql: ${TABLE}.pncia ;;
  }

  dimension: pncid {
    type: number
    label: "Core Pension Interest Adjustment Diluted EPS Effect"
    value_format_name: id
    sql: ${TABLE}.pncid ;;
  }

  dimension: pncieps {
    type: number
    label: "Core Pension Interest Adjustment Basic EPS Effect"
    sql: ${TABLE}.pncieps ;;
  }

  dimension: pncip {
    type: number
    label: "Core Pension Interest Adjustment Pretax"
    sql: ${TABLE}.pncip ;;
  }

  dimension: pncwia {
    type: number
    label: "Core Pension w/o Interest Adjustment After-tax"
    sql: ${TABLE}.pncwia ;;
  }

  dimension: pncwid {
    type: number
    label: "Core Pension w/o Interest Adjustment Diluted EPS Effect"
    value_format_name: id
    sql: ${TABLE}.pncwid ;;
  }

  dimension: pncwieps {
    type: number
    label: "Core Pension w/o Interest Adjustment Basic EPS Effect"
    sql: ${TABLE}.pncwieps ;;
  }

  dimension: pncwip {
    type: number
    label: "Core Pension w/o Interest Adjustment Pretax"
    sql: ${TABLE}.pncwip ;;
  }

  dimension: pnlbl {
    type: number
    label: "Premiums - Nonlife - Total (Business Line)"
    group_label: "Premiums"
    sql: ${TABLE}.pnlbl ;;
  }

  dimension: pnli {
    type: number
    label: "Premiums Written - Non-Life"
    group_label: "Premiums"
    sql: ${TABLE}.pnli ;;
  }

  dimension: pnrsho {
    type: number
    label: "Nonred Pfd Shares Outs (000)"
    sql: ${TABLE}.pnrsho ;;
  }

  dimension: pobl {
    type: number
    label: "Other (Business Line)"
    group_label: "Premiums"
    sql: ${TABLE}.pobl ;;
  }

  dimension: popsrc {
    type: string
    sql: ${TABLE}.popsrc ;;
  }

  dimension: ppcbl {
    type: number
    label: "Personal Property and Casualty Claims (Business Line)"
    sql: ${TABLE}.ppcbl ;;
  }

  dimension: ppegt {
    type: number
    label: "Property, Plant and Equipment - Total (Gross)"
    sql: ${TABLE}.ppegt ;;
  }

  dimension: ppenb {
    type: number
    label: "Property, Plant, and Equipment Buildings (Net)"
    sql: ${TABLE}.ppenb ;;
  }

  dimension: ppenc {
    type: number
    label: "Property, Plant, and Equipment Construction in Progress (Net)"
    sql: ${TABLE}.ppenc ;;
  }

  dimension: ppenli {
    type: number
    label: "Property, Plant, and Equipment Land and Improvements (Net)"
    sql: ${TABLE}.ppenli ;;
  }

  dimension: ppenls {
    type: number
    label: "Property, Plant, and Equipment Leases (Net)"
    sql: ${TABLE}.ppenls ;;
  }

  dimension: ppenme {
    type: number
    label: "Property, Plant, and Equipment Machinery and Equipment (Net)"
    sql: ${TABLE}.ppenme ;;
  }

  dimension: ppennr {
    type: number
    label: "Property, Plant, and Equipment Natural Resources (Net)"
    sql: ${TABLE}.ppennr ;;
  }

  dimension: ppeno {
    type: number
    label: "Property, Plant, and Equipment Other (Net)"
    sql: ${TABLE}.ppeno ;;
  }

  dimension: ppent {
    type: number
    label: "Property, Plant and Equipment - Total (Net)"
    sql: ${TABLE}.ppent ;;
  }

  dimension: ppevbb {
    type: number
    label: "Property, Plant and Equipment Beginning Balance (Schedule V)"
    sql: ${TABLE}.ppevbb ;;
  }

  dimension: ppeveb {
    type: number
    label: "Property, Plant, and Equipment Ending Balance (Schedule V)"
    sql: ${TABLE}.ppeveb ;;
  }

  dimension: ppevo {
    type: number
    label: "Property, Plant, and Equipment Other Changes (Schedule V)"
    sql: ${TABLE}.ppevo ;;
  }

  dimension: ppevr {
    type: number
    label: "Property, Plant and Equipment Retirements (Schedule V)"
    sql: ${TABLE}.ppevr ;;
  }

  dimension: pppabl {
    type: number
    label: "Automobile (Business Line)"
    group_label: "Personal Property & Casualty Premiums"
    sql: ${TABLE}.pppabl ;;
  }

  dimension: ppphbl {
    type: number
    label: "Homeowners (Business Line)"
    group_label: "Personal Property & Casualty Premiums"
    sql: ${TABLE}.ppphbl ;;
  }

  dimension: pppobl {
    type: number
    label: "Other (Business Line)"
    group_label: "Personal Property & Casualty Premiums"
    sql: ${TABLE}.pppobl ;;
  }

  dimension: ppptbl {
    type: number
    label: "Total (Business Line)"
    group_label: "Personal Property & Casualty Premiums"
    sql: ${TABLE}.ppptbl ;;
  }

  dimension: prc {
    type: number
    label: "Participation Rights Certificates"
    group_label: "Participation Rights Certificates"
    sql: ${TABLE}.prc ;;
  }

  dimension: prca {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Core Post Retirement Adjustment"
    sql: ${TABLE}.prca ;;
  }

  dimension: prcad {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Core Post Retirement Adjustment Diluted EPS Effect"
    sql: ${TABLE}.prcad ;;
  }

  dimension: prcaeps {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Core Post Retirement Adjustment Basic EPS Effect"
    sql: ${TABLE}.prcaeps ;;
  }

  dimension: prcc_c {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Price Close - Annual - Calendar"
    sql: ${TABLE}.prcc_c ;;
  }

  dimension: prcc_f {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Price Close - Annual - Fiscal"
    sql: ${TABLE}.prcc_f ;;
  }

  dimension: prch_c {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Price High - Annual - Calendar"
    sql: ${TABLE}.prch_c ;;
  }

  dimension: prch_f {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Price High - Annual - Fiscal"
    sql: ${TABLE}.prch_f ;;
  }

  dimension: prcl_c {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Price Low - Annual - Calendar"
    sql: ${TABLE}.prcl_c ;;
  }

  dimension: prcl_f {
    type: number
    group_label: "Participation Rights Certificates"
    label: "Price Low - Annual - Fiscal"
    sql: ${TABLE}.prcl_f ;;
  }

  dimension: prebl {
    type: number
    label: "Premiums - Reinsurance (Business Line)"
    group_label: "Premiums"
    sql: ${TABLE}.prebl ;;
  }

  dimension: pri {
    type: number
    label: "Premiums Written - Reinsurance"
    group_label: "Premiums"
    sql: ${TABLE}.pri ;;
  }



  dimension: prodv {
    type: number
    label: "Proposed Dividends"
    sql: ${TABLE}.prodv ;;
  }

  dimension: prsho {
    type: number
    label: "Redeem Pfd Shares Outs (000)"
    sql: ${TABLE}.prsho ;;
  }

  dimension: prstkc {
    type: number
    label: "Purchase of Common and Preferred Stock"
    sql: ${TABLE}.prstkc ;;
  }

  dimension: prstkcc {
    type: number
    label: "Purchase of Common Stock (Cash Flow)"
    sql: ${TABLE}.prstkcc ;;
  }

  dimension: prstkpc {
    type: number
    label: "Purchase of Preferred/Preference Stock (Cash Flow)"
    sql: ${TABLE}.prstkpc ;;
  }

  dimension: prvt {
    type: string
    label: "Policy Reserves - Total (Statutory)"
    sql: ${TABLE}.prvt ;;
  }

  dimension: pstk {
    type: number
    label: "Preferred/Preference Stock (Capital) - Total"
    sql: ${TABLE}.pstk ;;
  }

  dimension: pstkc {
    type: number
    label: "Preferred Stock Convertible"
    sql: ${TABLE}.pstkc ;;
  }

  dimension: pstkl {
    type: number
    label: "Preferred Stock Liquidating Value"
    sql: ${TABLE}.pstkl ;;
  }

  dimension: pstkn {
    type: number
    label: "Preferred/Preference Stock - Nonredeemable"
    sql: ${TABLE}.pstkn ;;
  }

  dimension: pstkr {
    type: number
    label: "Preferred/Preference Stock - Redeemable"
    sql: ${TABLE}.pstkr ;;
  }

  dimension: pstkrv {
    type: number
    label: "Preferred Stock Redemption Value"
    sql: ${TABLE}.pstkrv ;;
  }

  dimension: ptbl {
    type: number
    label: "Total (Business Line)"
    group_label: "Premiums"
    sql: ${TABLE}.ptbl ;;
  }

  dimension: ptran {
    type: number
    label: "Principal Transactions"
    sql: ${TABLE}.ptran ;;
  }

  dimension: pvcl {
    type: number
    group_label: "Provisions"
    label: "Provision - Credit Losses (Balance Sheet)"
    sql: ${TABLE}.pvcl ;;
  }

  dimension: pvo {
    type: number
    group_label: "Provisions"
    label: "Provision - Other"
    sql: ${TABLE}.pvo ;;
  }

  dimension: pvon {
    type: number
    group_label: "Provisions"
    label: "Provisions - Other (Net)"
    sql: ${TABLE}.pvon ;;
  }

  dimension: pvpl {
    type: number
    group_label: "Provisions"
    label: "Provision - Pension Liabilities"
    sql: ${TABLE}.pvpl ;;
  }

  dimension: pvt {
    type: number
    group_label: "Provisions"
    label: "Provisions - Total"
    sql: ${TABLE}.pvt ;;
  }

  dimension: pwoi {
    type: number
    label: "Premiums Written - Other"
    sql: ${TABLE}.pwoi ;;
  }

  dimension: radp {
    type: number
    label: "Reinsurance Assets - Deposits and Other (Insurance)"
    sql: ${TABLE}.radp ;;
  }

  dimension: ragr {
    type: number
    label: "Resale Agreements"
    sql: ${TABLE}.ragr ;;
  }

  dimension: rank {
    type: number
    label: "Rank - Auditor"
    sql: ${TABLE}.rank ;;
  }

  dimension: rari {
    type: number
    label: "Reinsurance Assets - Receivable/Debtors (Insurance)"
    sql: ${TABLE}.rari ;;
  }

  dimension: rati {
    type: number
    label: "Reinsurance Assets - Total (Insurance)"
    sql: ${TABLE}.rati ;;
  }

  dimension: rca {
    type: number
    label: "Restructuring Costs After-tax"
    sql: ${TABLE}.rca ;;
  }

  dimension: rcd {
    type: number
    label: "Restructuring Costs Diluted EPS Effect"
    sql: ${TABLE}.rcd ;;
  }

  dimension: rceps {
    type: number
    label: "Restructuring Costs Basic EPS Effect"
    sql: ${TABLE}.rceps ;;
  }

  dimension: rcl {
    type: number
    label: "Reserves for Credit Losses (Assets)"
    group_label: "Reserves"
    sql: ${TABLE}.rcl ;;
  }

  dimension: rcp {
    type: number
    label: "Restructuring Costs Pretax"
    sql: ${TABLE}.rcp ;;
  }

  dimension: rdip {
    type: number
    label: "In Process R&D Expense"
    sql: ${TABLE}.rdip ;;
  }

  dimension: rdipa {
    type: number
    label: "In Process R&D Expense After-tax"
    sql: ${TABLE}.rdipa ;;
  }

  dimension: rdipd {
    type: number
    label: "In Process R&D Expense Diluted EPS Effect"
    sql: ${TABLE}.rdipd ;;
  }

  dimension: rdipeps {
    type: number
    label: "In Process R&D Expense Basic EPS Effect"
    sql: ${TABLE}.rdipeps ;;
  }

  dimension: rdp {
    type: number
    label: "Regulatory Deposits"
    sql: ${TABLE}.rdp ;;
  }

  dimension: re {
    type: number
    label: "Retained Earnings"
    group_label: "Retained Earnings"
    sql: ${TABLE}.re ;;
  }

  dimension: rea {
    type: number
    group_label: "Retained Earnings"
    label: "Retained Earnings Restatement"
    sql: ${TABLE}.rea ;;
  }

  dimension: reajo {
    type: number
    group_label: "Retained Earnings"
    label: "Retained Earnings Other Adjustments"
    sql: ${TABLE}.reajo ;;
  }

  dimension: recch {
    type: number
    group_label: "Retained Earnings"
    label: "Accounts Receivable Decrease (Increase)"
    sql: ${TABLE}.recch ;;
  }

  dimension: recco {
    type: number
    group_label: "Retained Earnings"
    label: "Receivables - Current - Other"
    sql: ${TABLE}.recco ;;
  }

  dimension: recd {
    type: number
    group_label: "Retained Earnings"
    label: "Receivables - Estimated Doubtful"
    sql: ${TABLE}.recd ;;
  }

  dimension: rect {
    type: number
    group_label: "Retained Earnings"
    label: "Receivables Total"
    sql: ${TABLE}.rect ;;
  }

  dimension: recta {
    type: number
    group_label: "Retained Earnings"
    label: "Retained Earnings Cumulative Translation Adjustment"
    sql: ${TABLE}.recta ;;
  }

  dimension: rectr {
    type: number
    group_label: "Retained Earnings"
    label: "Receivables - Trade"
    sql: ${TABLE}.rectr ;;
  }

  dimension: recub {
    type: number
    group_label: "Retained Earnings"
    label: "Unbilled Receivables"
    sql: ${TABLE}.recub ;;
  }

  dimension: ret {
    type: number
    group_label: "Retained Earnings"
    label: "Total RE Property"
    sql: ${TABLE}.ret ;;
  }

  dimension: reuna {
    type: number
    group_label: "Retained Earnings"
    label: "Retained Earnings Unadjusted"
    sql: ${TABLE}.reuna ;;
  }

  dimension: reunr {
    type: number
    group_label: "Retained Earnings"
    label: "Retained Earnings Unrestricted"
    sql: ${TABLE}.reunr ;;
  }

  dimension: revt {
    type: number
    group_label: "Retained Earnings"
    label: "Revenue - Total"
    sql: ${TABLE}.revt ;;
  }

  dimension: ris {
    type: number
    label: "Revenue/Income - Sundry"
    sql: ${TABLE}.ris ;;
  }

  dimension: rll {
    type: number
    label: "Reserve for Loan/Asset Losses"
    group_label: "Reserves"
    sql: ${TABLE}.rll ;;
  }

  dimension: rlo {
    type: number
    label: "Reinsurance Liabilities - Other"
    sql: ${TABLE}.rlo ;;
  }

  dimension: rlp {
    type: number
    label: "Reinsurance Liabilities - Payables/Creditors"
    sql: ${TABLE}.rlp ;;
  }

  dimension: rlri {
    type: number
    label: "Reinsurers' Liability for Reserves (Insurance)"
    sql: ${TABLE}.rlri ;;
  }

  dimension: rlt {
    type: number
    label: "Reinsurance Liabilities - Total"
    sql: ${TABLE}.rlt ;;
  }

  dimension: rmum {
    type: number
    label: "Auditors' Remuneraton"
    group_label: "Auditor"
    sql: ${TABLE}.rmum ;;
  }

  dimension: rpag {
    type: number
    label: "Repurchase Agreements"
    sql: ${TABLE}.rpag ;;
  }

  dimension: rra {
    type: number
    label: "Reversal Restructruring/Acquisition Aftertax"
    sql: ${TABLE}.rra ;;
  }

  dimension: rrd {
    type: number
    label: "Reversal Restructuring/Acq Diluted EPS Effect"
    sql: ${TABLE}.rrd ;;
  }

  dimension: rreps {
    type: number
    label: "Reversal Restructuring/Acq Basic EPS Effect"
    sql: ${TABLE}.rreps ;;
  }

  dimension: rrp {
    type: number
    label: "Reversal Restructruring/Acquisition Pretax"
    sql: ${TABLE}.rrp ;;
  }

  dimension: rvbci {
    type: number
    label: "Reserves for Benefits - Life - Claims (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.rvbci ;;
  }

  dimension: rvbpi {
    type: number
    label: "Reserves for Benefits - Life - Policy (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.rvbpi ;;
  }

  dimension: rvbti {
    type: number
    label: "Reserves for Benefits - Life - Total (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.rvbti ;;
  }

  dimension: rvdo {
    type: number
    label: "Distributable - Other"
    group_label: "Reserves"
    sql: ${TABLE}.rvdo ;;
  }

  dimension: rvdt {
    type: number
    label: "Distributable - Total"
    group_label: "Reserves"
    sql: ${TABLE}.rvdt ;;
  }

  dimension: rveqt {
    type: number
    label: "Equity Reserves - Total"
    group_label: "Reserves"
    sql: ${TABLE}.rveqt ;;
  }

  dimension: rvlrv {
    type: number
    label: "Revaluation Reserve"
    group_label: "Reserves"
    sql: ${TABLE}.rvlrv ;;
  }

  dimension: rvno {
    type: number
    label: "Nondistributable - Other"
    group_label: "Reserves"
    sql: ${TABLE}.rvno ;;
  }

  dimension: rvnt {
    type: number
    label: "Nondistributable - Total"
    group_label: "Reserves"
    sql: ${TABLE}.rvnt ;;
  }

  dimension: rvri {
    type: number
    label: " Reinsurance (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.rvri ;;
  }

  dimension: rvsi {
    type: number
    label: "Sundry (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.rvsi ;;
  }

  dimension: rvti {
    type: number
    label: "Total"
    group_label: "Reserves"
    sql: ${TABLE}.rvti ;;
  }

  dimension: rvtxr {
    type: number
    label: "Tax-Regulated"
    group_label: "Reserves"
    sql: ${TABLE}.rvtxr ;;
  }

  dimension: rvupi {
    type: number
    label: "Reserves for Unearned Premiums (Insurance)"
    group_label: "Reserves"
    sql: ${TABLE}.rvupi ;;
  }

  dimension: rvutx {
    type: number
    label: "Untaxed"
    group_label: "Reserves"
    sql: ${TABLE}.rvutx ;;
  }

  dimension: saa {
    type: number
    label: "Separate Account Assets"
    sql: ${TABLE}.saa ;;
  }

  dimension: sal {
    type: number
    label: "Separate Account Liabilities"
    sql: ${TABLE}.sal ;;
  }

  dimension: sale {
    type: number
    label: "Sales/Turnover (Net)"
    sql: ${TABLE}.sale ;;
  }

  dimension: salepfc {
    type: number
    label: "Pro Forma Net Sales - Current Year"
    sql: ${TABLE}.salepfc ;;
  }

  dimension: salepfp {
    type: number
    label: "Pro Forma Net Sales - Prior Year"
    sql: ${TABLE}.salepfp ;;
  }

  dimension: sbdc {
    type: number
    label: "Securities Borrowed and Deposited by Customers"
    sql: ${TABLE}.sbdc ;;
  }

  dimension: sc {
    type: number
    label: "Securities In Custody"
    sql: ${TABLE}.sc ;;
  }

  dimension: scf {
    type: number
    label: "Cash Flow Format"
    sql: ${TABLE}.scf ;;
  }

  dimension: sco {
    type: number
    label: "Share Capital - Other"
    sql: ${TABLE}.sco ;;
  }

  dimension: scstkc {
    type: number
    label: "Sale of Common Stock (Cash Flow)"
    sql: ${TABLE}.scstkc ;;
  }

  dimension: secu {
    type: number
    label: "Securities Gains (Losses) - Unrealized"
    sql: ${TABLE}.secu ;;
  }

  dimension: seq {
    type: number
    label: "Stockholders' Equity - Total"
    sql: ${TABLE}.seq ;;
  }

  dimension: seqo {
    type: number
    label: "Other Stockholders Equity Adjustments"
    sql: ${TABLE}.seqo ;;
  }

  dimension: seta {
    type: number
    label: "Settlement (Litigation/Insurance) After-tax"
    sql: ${TABLE}.seta ;;
  }

  dimension: setd {
    type: number
    label: "Settlement (Litigation/Insurance) Diluted EPS Effect"
    sql: ${TABLE}.setd ;;
  }

  dimension: seteps {
    type: number
    label: "Settlement (Litigation/Insurance) Basic EPS Effect"
    sql: ${TABLE}.seteps ;;
  }

  dimension: setp {
    type: number
    label: "Settlement (Litigation/Insurance) Pretax"
    sql: ${TABLE}.setp ;;
  }

  dimension: siv {
    type: number
    label: "Sale of Investments"
    sql: ${TABLE}.siv ;;
  }

  dimension: spce {
    type: number
    label: "S&P Core Earnings"
    sql: ${TABLE}.spce ;;
  }

  dimension: spced {
    type: number
    label: "S&P Core Earnings EPS Diluted "
    sql: ${TABLE}.spced ;;
  }

  dimension: spceeps {
    type: number
    label: "S&P Core Earnings EPS Basic"
    sql: ${TABLE}.spceeps ;;
  }



  dimension: spcsrc {
    type: string
    label: "S&P Quality Ranking - Current"
    sql: ${TABLE}.spcsrc ;;
  }

  dimension: spi {
    type: number
    label: "Special Items"
    group_label: "Special Items"
    sql: ${TABLE}.spi ;;
  }

  dimension: spid {
    type: number
    label: "Other Special Items Diluted EPS Effect"
    group_label: "Special Items"
    value_format_name: id
    sql: ${TABLE}.spid ;;
  }

  dimension: spieps {
    type: number
    label: "Other Special Items Basic EPS Effect"
    group_label: "Special Items"
    sql: ${TABLE}.spieps ;;
  }

  dimension: spioa {
    type: number
    label: "Other Special Items After-tax"
    group_label: "Special Items"
    sql: ${TABLE}.spioa ;;
  }

  dimension: spiop {
    type: number
    label: "Other Special Items Pretax"
    group_label: "Special Items"
    sql: ${TABLE}.spiop ;;
  }

  dimension: sppe {
    type: number
    label: "Sale of Property"
    sql: ${TABLE}.sppe ;;
  }

  dimension: sppiv {
    type: number
    label: "Sale of Property, Plant and Equipment and Investments Gain (Loss)"
    sql: ${TABLE}.sppiv ;;
  }

  dimension: spstkc {
    type: number
    label: "Sale of Preferred/Preference Stock (Cash Flow)"
    sql: ${TABLE}.spstkc ;;
  }

  dimension: src {
    type: number
    label: "Source Document"
    sql: ${TABLE}.src ;;
  }

  dimension: sret {
    type: number
    label: "Gain/Loss on Sale of Property"
    sql: ${TABLE}.sret ;;
  }

  dimension: srt {
    type: number
    label: "Surplus - Total (Statutory)"
    sql: ${TABLE}.srt ;;
  }

  dimension: ssnp {
    type: number
    label: "Securities Sold Not Yet Purchased"
    sql: ${TABLE}.ssnp ;;
  }

  dimension: sstk {
    type: number
    label: "Sale of Common and Preferred Stock"
    sql: ${TABLE}.sstk ;;
  }

  dimension: stalt {
    type: string
    label: "Status Alert"
    sql: ${TABLE}.stalt ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: stbo {
    type: number
    label: "Short-Term Borrowings - Other"
    sql: ${TABLE}.stbo ;;
  }

  dimension: stio {
    type: number
    label: "Short-Term Investments - Other"
    sql: ${TABLE}.stio ;;
  }

  dimension: stkco {
    type: number
    label: "Stock Compensation Expense"
    sql: ${TABLE}.stkco ;;
  }

  dimension: stkcpa {
    type: number
    label: "After-tax stock compensation"
    sql: ${TABLE}.stkcpa ;;
  }

  dimension: stko {
    type: number
    label: "Stock Ownership Code"
    sql: ${TABLE}.stko ;;
  }

  dimension: tdc {
    type: number
    label: "Deferred Income Taxes - Net (Cash Flow)"
    sql: ${TABLE}.tdc ;;
  }

  dimension: tdscd {
    type: number
    label: "Corporate Debt"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdscd ;;
  }

  dimension: tdsce {
    type: number
    label: "Corporate Equity"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdsce ;;
  }

  dimension: tdsg {
    type: number
    label: "Gain (Loss)"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdsg ;;
  }

  dimension: tdslg {
    type: number
    label: "Local Governments"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdslg ;;
  }

  dimension: tdsmm {
    type: number
    label: "Money Market"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdsmm ;;
  }

  dimension: tdsng {
    type: number
    label: "National Governments"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdsng ;;
  }

  dimension: tdso {
    type: number
    label: "Other"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdso ;;
  }

  dimension: tdss {
    type: number
    label: "Sundry"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdss ;;
  }

  dimension: tdst {
    type: number
    label: "Total"
    group_label: "Trading/Dealing Account Securities"
    sql: ${TABLE}.tdst ;;
  }

  dimension: teq {
    type: number
    label: "Stockholders Equity - Total"
    sql: ${TABLE}.teq ;;
  }

  dimension: tf {
    type: number
    label: "Trust Fees "
    sql: ${TABLE}.tf ;;
  }

  dimension: tfva {
    type: number
    label: "Total Fair Value Assets"
    sql: ${TABLE}.tfva ;;
  }

  dimension: tfvce {
    type: number
    label: "Total Fair Value Changes including Earnings"
    sql: ${TABLE}.tfvce ;;
  }

  dimension: tfvl {
    type: number
    label: "Total Fair Value Liabilities"
    sql: ${TABLE}.tfvl ;;
  }

  dimension: tic {
    type: string
    label: "Ticker Symbol"
    sql: ${TABLE}.tic ;;
  }

  dimension: tie {
    type: number
    label: "Interest Expense Total (Financial Services)"
    sql: ${TABLE}.tie ;;
  }

  dimension: tii {
    type: number
    label: "Interest Income Total (Financial Services)"
    sql: ${TABLE}.tii ;;
  }

  dimension: tlcf {
    type: number
    label: "Tax Loss Carry Forward"
    sql: ${TABLE}.tlcf ;;
  }

  dimension: transa {
    type: number
    label: "Cumulative Translation Adjustment"
    sql: ${TABLE}.transa ;;
  }

  dimension: tsa {
    type: number
    label: "Treasury Stock (Assets)"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tsa ;;
  }

  dimension: tsafc {
    type: string
    label: "Total Sources/Applications of Funds (Cash Flow)"
    sql: ${TABLE}.tsafc ;;
  }

  dimension: tso {
    type: number
    label: "Treasury Stock - Other Share Capital"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tso ;;
  }

  dimension: tstk {
    type: number
    label: "Treasury Stock - Total (All Capital)"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tstk ;;
  }

  dimension: tstkc {
    type: number
    label: "Treasury Stock - Common"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tstkc ;;
  }

  dimension: tstkme {
    type: string
    label: "Treasury Stock Book Value Memo Entry"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tstkme ;;
  }

  dimension: tstkn {
    type: number
    label: "Treasury Stock Number of Common Shares"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tstkn ;;
  }

  dimension: tstkp {
    type: number
    label: "Treasury Stock - Preferrred"
    group_label: "Treasury Stock"
    sql: ${TABLE}.tstkp ;;
  }

  dimension: txach {
    type: number
    group_label: "Taxes"
    label: "Income Taxes Accrued Increase/(Decrease)"
    sql: ${TABLE}.txach ;;
  }

  dimension: txbco {
    type: number
    group_label: "Taxes"
    label: "Excess Tax Benefit Stock Options - Cash Flow Operating"
    sql: ${TABLE}.txbco ;;
  }

  dimension: txbcof {
    type: number
    group_label: "Taxes"
    label: "Excess Tax Benefit of Stock Options - Cash Flow Financing"
    sql: ${TABLE}.txbcof ;;
  }

  dimension: txc {
    type: number
    group_label: "Taxes"
    label: "Income Taxes - Current"
    sql: ${TABLE}.txc ;;
  }

  dimension: txdb {
    type: number
    group_label: "Taxes"
    label: "Deferred Taxes (Balance Sheet)"
    sql: ${TABLE}.txdb ;;
  }

  dimension: txdba {
    type: number
    group_label: "Taxes"
    label: "Deferred Tax Asset - Long Term"
    sql: ${TABLE}.txdba ;;
  }

  dimension: txdbca {
    type: number
    group_label: "Taxes"
    label: "Deferred Tax Asset - Current"
    sql: ${TABLE}.txdbca ;;
  }

  dimension: txdbcl {
    type: number
    group_label: "Taxes"
    label: "Deferred Tax Liability - Current"
    sql: ${TABLE}.txdbcl ;;
  }

  dimension: txdc {
    type: number
    group_label: "Taxes"
    label: "Deferred Taxes (Cash Flow)"
    sql: ${TABLE}.txdc ;;
  }

  dimension: txdfed {
    type: number
    group_label: "Taxes"
    label: "Deferred Taxes-Federal"
    sql: ${TABLE}.txdfed ;;
  }

  dimension: txdfo {
    type: number
    group_label: "Taxes"
    label: "Deferred Taxes-Foreign"
    sql: ${TABLE}.txdfo ;;
  }

  dimension: txdi {
    type: number
    group_label: "Taxes"
    label: "Income Taxes - Deferred"
    sql: ${TABLE}.txdi ;;
  }

  dimension: txditc {
    type: number
    group_label: "Taxes"
    label: "Deferred Taxes and Investment Tax Credit"
    sql: ${TABLE}.txditc ;;
  }

  dimension: txds {
    type: number
    group_label: "Taxes"
    label: "Deferred Taxes-State"
    sql: ${TABLE}.txds ;;
  }

  dimension: txeqa {
    type: number
    group_label: "Taxes"
    label: "Tax - Equivalent Adjustment"
    sql: ${TABLE}.txeqa ;;
  }

  dimension: txeqii {
    type: number
    group_label: "Taxes"
    label: "Tax - Equivalent Interest Income (Gross)"
    sql: ${TABLE}.txeqii ;;
  }

  dimension: txfed {
    type: number
    group_label: "Taxes"
    label: "Income Taxes Federal"
    sql: ${TABLE}.txfed ;;
  }

  dimension: txfo {
    type: number
    group_label: "Taxes"
    label: "Income Taxes - Foreign"
    sql: ${TABLE}.txfo ;;
  }

  dimension: txndb {
    type: number
    group_label: "Taxes"
    label: "Net Deferred Tax Asset (Liab) - Total"
    sql: ${TABLE}.txndb ;;
  }

  dimension: txndba {
    type: number
    group_label: "Taxes"
    label: "Net Deferred Tax Asset"
    sql: ${TABLE}.txndba ;;
  }

  dimension: txndbl {
    type: number
    group_label: "Taxes"
    label: "Net Deferred Tax Liability"
    sql: ${TABLE}.txndbl ;;
  }

  dimension: txndbr {
    type: number
    group_label: "Taxes"
    label: "Deferred Tax Residual"
    sql: ${TABLE}.txndbr ;;
  }

  dimension: txo {
    type: number
    group_label: "Taxes"
    label: "Income Taxes - Other"
    sql: ${TABLE}.txo ;;
  }

  dimension: txp {
    type: number
    group_label: "Taxes"
    label: "Income Taxes Payable"
    sql: ${TABLE}.txp ;;
  }

  dimension: txpd {
    type: number
    group_label: "Taxes"
    label: "Income Taxes Paid"
    sql: ${TABLE}.txpd ;;
  }

  dimension: txr {
    type: number
    group_label: "Taxes"
    label: "Income Tax Refund"
    sql: ${TABLE}.txr ;;
  }

  dimension: txs {
    type: number
    group_label: "Taxes"
    label: "Income Taxes State"
    sql: ${TABLE}.txs ;;
  }

  dimension: txt {
    type: number
    group_label: "Taxes"
    label: "Income Taxes - Total"
    sql: ${TABLE}.txt ;;
  }

  dimension: txtubadjust {
    type: number
    label: "Other Unrecog Tax Benefit Adj."
    group_label: "Tax Benefits"
    sql: ${TABLE}.txtubadjust ;;
  }

  dimension: txtubbegin {
    type: number
    label: "Unrecog. Tax Benefits - Beg of Year"
    group_label: "Tax Benefits"
    sql: ${TABLE}.txtubbegin ;;
  }

  dimension: txtubend {
    type: number
    label: "Unrecog. Tax Benefits - End of Year"
    group_label: "Tax Benefits"
    sql: ${TABLE}.txtubend ;;
  }

  dimension: txtubmax {
    type: number
    label: "Chg. In Unrecog. Tax Benefits - Max"
    group_label: "Tax Benefits"
    sql: ${TABLE}.txtubmax ;;
  }

  dimension: txtubmin {
    type: number
    label: "Chg. In Unrecog. Tax Benefits - Min"
    group_label: "Tax Benefits"
    sql: ${TABLE}.txtubmin ;;
  }

  dimension: txtubposdec {
    type: number
    group_label: "Taxes"
    label: " Decrease- Current Tax Positions"
    sql: ${TABLE}.txtubposdec ;;
  }

  dimension: txtubposinc {
    type: number
    group_label: "Taxes"
    label: "Increase- Current Tax Positions"
    sql: ${TABLE}.txtubposinc ;;
  }

  dimension: txtubpospdec {
    type: number
    group_label: "Taxes"
    label: "Decrease- Prior Tax Positions"
    sql: ${TABLE}.txtubpospdec ;;
  }

  dimension: txtubpospinc {
    type: number
    group_label: "Taxes"
    label: "Increase- Prior Tax Positions"
    sql: ${TABLE}.txtubpospinc ;;
  }

  dimension: txtubsettle {
    type: number
    group_label: "Taxes"
    label: "Settlements with Tax Authorities"
    sql: ${TABLE}.txtubsettle ;;
  }

  dimension: txtubsoflimit {
    type: number
    group_label: "Taxes"
    label: "Lapse of Statute of Limitations"
    sql: ${TABLE}.txtubsoflimit ;;
  }

  dimension: txtubtxtr {
    type: number
    group_label: "Taxes"
    label: "Impact on Effective Tax Rate"
    sql: ${TABLE}.txtubtxtr ;;
  }

  dimension: txtubxintbs {
    type: number
    group_label: "Taxes"
    label: "Interest & Penalties Accrued - B/S"
    sql: ${TABLE}.txtubxintbs ;;
  }

  dimension: txtubxintis {
    type: number
    group_label: "Taxes"
    label: "Interest & Penalties Reconized - I/S"
    sql: ${TABLE}.txtubxintis ;;
  }

  dimension: txva {
    type: number
    group_label: "Taxes"
    label: "Value Added Taxes"
    sql: ${TABLE}.txva ;;
  }

  dimension: txw {
    type: number
    group_label: "Taxes"
    label: "Excise Taxes"
    sql: ${TABLE}.txw ;;
  }

  dimension: uaoloch {
    type: number
    label: "Other Assets and Liabilities - Net Change (Statement of Cash Flows)"
    sql: ${TABLE}.uaoloch ;;
  }

  dimension: uaox {
    type: number
    label: "Other Assets - Utility"
    sql: ${TABLE}.uaox ;;
  }

  dimension: uapt {
    type: number
    label: "Accounts Payable - Utility"
    group_label: "Accounts Payable"
    sql: ${TABLE}.uapt ;;
  }

  dimension: ucaps {
    type: number
    label: "Paid in Capital - Other"
    sql: ${TABLE}.ucaps ;;
  }

  dimension: uccons {
    type: number
    label: "Contributions in Aid of Construction"
    sql: ${TABLE}.uccons ;;
  }

  dimension: uceq {
    type: number
    label: "Common Equity Total - Utility"
    sql: ${TABLE}.uceq ;;
  }

  dimension: ucustad {
    type: number
    label: "Customer Advances for Construction"
    sql: ${TABLE}.ucustad ;;
  }

  dimension: udcopres {
    type: number
    label: "Deferred Credits and Operating Reserves - Other"
    sql: ${TABLE}.udcopres ;;
  }

  dimension: udd {
    type: number
    label: "Debt (Debentures)"
    group_label: "Debt"
    sql: ${TABLE}.udd ;;
  }

  dimension: udfcc {
    type: number
    label: "Deferred Fuel - Increase (Decrease) (Statement of Cash Flows)"
    sql: ${TABLE}.udfcc ;;
  }

  dimension: udmb {
    type: number
    label: "Debt (Mortgage Bonds) - Utility"
    group_label: "Debt"
    sql: ${TABLE}.udmb ;;
  }

  dimension: udolt {
    type: number
    label: "Debt (Other Long-Term) - Utility"
    group_label: "Debt"
    sql: ${TABLE}.udolt ;;
  }

  dimension: udpco {
    type: number
    label: "Debt (Pollution Control Obligations) - Utility"
    group_label: "Debt"
    sql: ${TABLE}.udpco ;;
  }

  dimension: udpfa {
    type: number
    label: "Depreciation of Fixed Assets"
    sql: ${TABLE}.udpfa ;;
  }

  dimension: udpl {
    type: number
    label: "Utility - Liberalized Depreciation Code"
    sql: ${TABLE}.udpl ;;
  }

  dimension: udvp {
    type: number
    label: "Preferred Dividend Requirements"
    sql: ${TABLE}.udvp ;;
  }

  dimension: ufretsd {
    type: string
    label: "Funds for Retirement of Securities and Short-Term Debt (Cash Flow)"
    sql: ${TABLE}.ufretsd ;;
  }

  dimension: ugi {
    type: number
    label: "Gross Income (Income Before Interest Charges)"
    sql: ${TABLE}.ugi ;;
  }

  dimension: ui {
    type: number
    label: "Unearned Income"
    sql: ${TABLE}.ui ;;
  }

  dimension: uinvt {
    type: number
    label: "Inventories - Utility"
    sql: ${TABLE}.uinvt ;;
  }

  dimension: ulcm {
    type: number
    label: "Current Liabilities - Miscellaneous"
    group_label: "Current Liabilities"
    sql: ${TABLE}.ulcm ;;
  }

  dimension: ulco {
    type: number
    label: "Current Liabilities - Other - Utility"
    group_label: "Current Liabilities"
    sql: ${TABLE}.ulco ;;
  }

  dimension: uniami {
    type: number
    label: "Net Income before Extraordinary Items and after Minority Interest"
    sql: ${TABLE}.uniami ;;
  }

  dimension: unl {
    type: number
    label: "Unappropriated Net Loss"
    sql: ${TABLE}.unl ;;
  }

  dimension: unnp {
    type: number
    label: "Unappropriated Net Profit (Stockholders' Equity)"
    sql: ${TABLE}.unnp ;;
  }

  dimension: unnpl {
    type: number
    label: "Unappropriated Net Profit"
    sql: ${TABLE}.unnpl ;;
  }

  dimension: unopinc {
    type: number
    label: "Nonoperating Income (Net) - Other"
    sql: ${TABLE}.unopinc ;;
  }

  dimension: unwcc {
    type: string
    label: "Working Capital (Use) - Increase (Decrease) (Cash Flow)"
    sql: ${TABLE}.unwcc ;;
  }

  dimension: uois {
    type: number
    label: "Other Internal Sources - Net (Cash Flow)"
    sql: ${TABLE}.uois ;;
  }

  dimension: uopi {
    type: number
    label: "Operating Income - Total - Utility"
    sql: ${TABLE}.uopi ;;
  }

  dimension: uopres {
    type: number
    label: "Operating Reserves"
    sql: ${TABLE}.uopres ;;
  }


  dimension: updvp {
    type: number
    label: "Preference Dividend Requirements"
    sql: ${TABLE}.updvp ;;
  }

  dimension: upmcstk {
    type: number
    label: "Premium on Common Stock"
    sql: ${TABLE}.upmcstk ;;
  }

  dimension: upmpf {
    type: number
    label: "Premium on Preferred Stock"
    sql: ${TABLE}.upmpf ;;
  }

  dimension: upmpfs {
    type: number
    label: "Premium on Preference Stock"
    sql: ${TABLE}.upmpfs ;;
  }

  dimension: upmsubp {
    type: number
    label: "Premium on Subsidiary Preferred Stock"
    sql: ${TABLE}.upmsubp ;;
  }

  dimension: upstk {
    type: number
    label: "Preferred Stock at Carrying Value"
    sql: ${TABLE}.upstk ;;
  }

  dimension: upstkc {
    type: number
    label: "Preference Stock at Carrying Value"
    sql: ${TABLE}.upstkc ;;
  }

  dimension: upstksf {
    type: number
    label: "Preferred/Preference Stock Sinking Fund Requirement"
    sql: ${TABLE}.upstksf ;;
  }

  dimension: urect {
    type: number
    label: "Receivables (Net)"
    sql: ${TABLE}.urect ;;
  }

  dimension: urectr {
    type: number
    label: "Accounts Receivable - Trade - Utility"
    sql: ${TABLE}.urectr ;;
  }

  dimension: urevub {
    type: number
    label: "Accrued Unbilled Revenues (Balance Sheet)"
    sql: ${TABLE}.urevub ;;
  }

  dimension: uspi {
    type: number
    label: "Special Items"
    group_label: "Special Items"
    sql: ${TABLE}.uspi ;;
  }

  dimension: ustdnc {
    type: string
    label: "Short-Term Debt - Decrease (Increase) (Cash Flow)"
    sql: ${TABLE}.ustdnc ;;
  }

  dimension: usubdvp {
    type: number
    label: "Subsidiary Preferred Dividends"
    sql: ${TABLE}.usubdvp ;;
  }

  dimension: usubpstk {
    type: number
    label: "Subsidiary Preferred Stock at Carrying Value"
    sql: ${TABLE}.usubpstk ;;
  }

  dimension: utfdoc {
    type: string
    label: "Total Funds From Operations (Cash Flow)"
    sql: ${TABLE}.utfdoc ;;
  }

  dimension: utfosc {
    type: string
    label: "Total Funds from Outside Sources (Cash Flow)"
    sql: ${TABLE}.utfosc ;;
  }

  dimension: utme {
    type: number
    label: "Maintenance Expense - Total"
    sql: ${TABLE}.utme ;;
  }

  dimension: utxfed {
    type: number
    label: "Current Taxes - Federal (Operating)"
    sql: ${TABLE}.utxfed ;;
  }

  dimension: uwkcapc {
    type: string
    label: "Working Capital (Source) - Decrease (Increase) (Cash Flow)"
    sql: ${TABLE}.uwkcapc ;;
  }

  dimension: uxinst {
    type: number
    label: "Interest On Short-Term Debt - Utility"
    sql: ${TABLE}.uxinst ;;
  }

  dimension: uxintd {
    type: number
    label: "Interest on Long-Term Debt"
    sql: ${TABLE}.uxintd ;;
  }

  dimension: vpac {
    type: number
    label: "Investments - Permanent - Associated Companies"
    sql: ${TABLE}.vpac ;;
  }

  dimension: vpo {
    type: number
    label: "Investments - Permanent - Other"
    sql: ${TABLE}.vpo ;;
  }

  dimension: wcap {
    type: number
    label: "Working Capital (Balance Sheet)"
    sql: ${TABLE}.wcap ;;
  }

  dimension: wcapc {
    type: number
    label: "Working Capital Change Other Increase/(Decrease)"
    sql: ${TABLE}.wcapc ;;
  }

  dimension: wcapch {
    type: number
    label: "Working Capital Change Total"
    sql: ${TABLE}.wcapch ;;
  }

  dimension: wda {
    type: number
    label: "Writedowns After-tax"
    sql: ${TABLE}.wda ;;
  }

  dimension: wdd {
    type: number
    label: "Writedowns Diluted EPS Effect"
    sql: ${TABLE}.wdd ;;
  }

  dimension: wdeps {
    type: number
    label: "Writedowns Basic EPS Effect"
    sql: ${TABLE}.wdeps ;;
  }

  dimension: wdp {
    type: number
    label: "Writedowns Pretax"
    sql: ${TABLE}.wdp ;;
  }

  dimension: weburl {
    type: string
    sql: ${TABLE}.weburl ;;
  }

  dimension: xacc {
    type: number
    label: "Accrued Expenses"
    sql: ${TABLE}.xacc ;;
  }

  dimension: xad {
    type: number
    label: "Advertising Expense"
    sql: ${TABLE}.xad ;;
  }

  dimension: xago {
    type: number
    label: "Administrative and General Expense - Other"
    sql: ${TABLE}.xago ;;
  }

  dimension: xagt {
    type: number
    label: "Administrative and General Expense - Total"
    sql: ${TABLE}.xagt ;;
  }

  dimension: xcom {
    type: number
    label: "Communications Expense"
    sql: ${TABLE}.xcom ;;
  }

  dimension: xcomi {
    type: number
    label: "Commissions Expense (Insurance)"
    sql: ${TABLE}.xcomi ;;
  }

  dimension: xdepl {
    type: number
    label: "Depletion Expense (Schedule VI)"
    sql: ${TABLE}.xdepl ;;
  }

  dimension: xdp {
    type: number
    label: "Depreciation Expense (Schedule VI)"
    sql: ${TABLE}.xdp ;;
  }

  dimension: xdvre {
    type: number
    label: "Expense - Development (Real Estate) "
    sql: ${TABLE}.xdvre ;;
  }

  dimension: xeqo {
    type: number
    label: "Equipment and Occupancy Expense"
    sql: ${TABLE}.xeqo ;;
  }

  dimension: xi {
    type: number
    label: "Extraordinary Items"
    sql: ${TABLE}.xi ;;
  }

  dimension: xido {
    type: number
    label: "Extraordinary Items and Discontinued Operations"
    sql: ${TABLE}.xido ;;
  }

  dimension: xidoc {
    type: number
    label: "Extraordinary Items and Discontinued Operations (Cash Flow) "
    sql: ${TABLE}.xidoc ;;
  }

  dimension: xindb {
    type: number
    label: "Interest Expense - Deposits - Banks"
    sql: ${TABLE}.xindb ;;
  }

  dimension: xindc {
    type: number
    label: "Interest Expense - Deposits - Customer  "
    sql: ${TABLE}.xindc ;;
  }

  dimension: xins {
    type: number
    label: "Interest Expense - Sundry"
    sql: ${TABLE}.xins ;;
  }

  dimension: xinst {
    type: number
    label: "Interest Expense - Short-Term Borrowings"
    sql: ${TABLE}.xinst ;;
  }

  dimension: xint {
    type: number
    label: "Interest and Related Expense - Total"
    sql: ${TABLE}.xint ;;
  }

  dimension: xintd {
    type: number
    label: "Interest Expense - Long-Term Debt"
    sql: ${TABLE}.xintd ;;
  }

  dimension: xintopt {
    type: number
    label: "Implied Option Expense"
    sql: ${TABLE}.xintopt ;;
  }

  dimension: xivi {
    type: number
    label: "Investment Expense (Insurance)  "
    sql: ${TABLE}.xivi ;;
  }

  dimension: xivre {
    type: number
    label: "Expense - Investment (Real Estate)  "
    sql: ${TABLE}.xivre ;;
  }

  dimension: xlr {
    type: number
    label: "Staff Expense - Total"
    sql: ${TABLE}.xlr ;;
  }

  dimension: xnbi {
    type: number
    label: "Other Insurance Expense"
    sql: ${TABLE}.xnbi ;;
  }

  dimension: xnf {
    type: number
    label: "Non-Financial Services Expense  "
    sql: ${TABLE}.xnf ;;
  }

  dimension: xnins {
    type: number
    label: "Other Expense - Noninsurance"
    sql: ${TABLE}.xnins ;;
  }

  dimension: xnitb {
    type: number
    label: "Expense - Noninterest - Total (Bank)"
    sql: ${TABLE}.xnitb ;;
  }

  dimension: xobd {
    type: number
    label: "Expense - Other (Broker/Dealer)"
    sql: ${TABLE}.xobd ;;
  }

  dimension: xoi {
    type: number
    label: "Expenses - Other (Insurance)"
    sql: ${TABLE}.xoi ;;
  }

  dimension: xopr {
    type: number
    label: "Operating Expenses Total "
    sql: ${TABLE}.xopr ;;
  }

  dimension: xoprar {
    type: number
    label: "Operatings Expenses - As Reported "
    sql: ${TABLE}.xoprar ;;
  }

  dimension: xoptd {
    type: number
    label: "Implied Option EPS Diluted  "
    sql: ${TABLE}.xoptd ;;
  }

  dimension: xopteps {
    type: number
    label: "Implied Option EPS Basic"
    sql: ${TABLE}.xopteps ;;
  }

  dimension: xore {
    type: number
    label: "Expense - Other (Real Estate) "
    sql: ${TABLE}.xore ;;
  }

  dimension: xpp {
    type: number
    label: "Prepaid Expenses  "
    sql: ${TABLE}.xpp ;;
  }

  dimension: xpr {
    type: number
    label: "Pension and Retirement Expense  "
    sql: ${TABLE}.xpr ;;
  }

  dimension: xrd {
    type: number
    label: "Research and Development Expense "
    sql: ${TABLE}.xrd ;;
  }

  dimension: xrent {
    type: number
    label: "Rental Expense"
    group_label: "Rental Commitments"
    sql: ${TABLE}.xrent ;;
  }

  dimension: xs {
    type: number
    label: "Expense - Sundry  "
    sql: ${TABLE}.xs ;;
  }

  dimension: xsga {
    type: number
    label: "Selling, General and Administrative Expense "
    sql: ${TABLE}.xsga ;;
  }

  dimension: xstf {
    type: number
    label: "Staff Expense (Income Account)  "
    sql: ${TABLE}.xstf ;;
  }

  dimension: xstfo {
    type: number
    label: "Staff Expense - Other  "
    sql: ${TABLE}.xstfo ;;
  }

  dimension: xstfws {
    type: number
    label: "Staff Expense - Wages and Salaries  "
    sql: ${TABLE}.xstfws ;;
  }

  dimension: xt {
    type: number
    label: "Expense - Total "
    sql: ${TABLE}.xt ;;
  }

  dimension: xuw {
    type: number
    label: "Other Underwriting Expenses - Insurance"
    group_label: "Underwriting Expenses"
    sql: ${TABLE}.xuw ;;
  }

  dimension: xuwli {
    type: number
    label: "Underwriting Expense - Life"
    group_label: "Underwriting Expenses"
    sql: ${TABLE}.xuwli ;;
  }

  dimension: xuwnli {
    type: number
    label: "Underwriting Expense - Non-Life"
    group_label: "Underwriting Expenses"
    sql: ${TABLE}.xuwnli ;;
  }

  dimension: xuwoi {
    type: number
    label: "Underwriting Expense - Other"
    group_label: "Underwriting Expenses"
    sql: ${TABLE}.xuwoi ;;
  }

  dimension: xuwrei {
    type: number
    label: "Underwriting Expense - Reinsurance"
    group_label: "Underwriting Expenses"
    sql: ${TABLE}.xuwrei ;;
  }

  dimension: xuwti {
    type: number
    label: "Underwriting Expense - Total"
    group_label: "Underwriting Expenses"
    sql: ${TABLE}.xuwti ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
