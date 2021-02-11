view: compustat_financial_fundamental {
  sql_table_name: `bi-model-development.looker_FINAL.Compustat_Financial_Fundamental`
    ;;

  dimension: acchg {
    type: number
    sql: ${TABLE}.acchg ;;
  }

  dimension: acco {
    type: number
    sql: ${TABLE}.acco ;;
  }

  dimension: acctchg {
    type: string
    sql: ${TABLE}.acctchg ;;
  }

  dimension: acctstd {
    type: string
    sql: ${TABLE}.acctstd ;;
  }

  dimension: acdo {
    type: number
    sql: ${TABLE}.acdo ;;
  }

  dimension: aco {
    type: number
    sql: ${TABLE}.aco ;;
  }

  dimension: acodo {
    type: number
    sql: ${TABLE}.acodo ;;
  }

  dimension: acominc {
    type: number
    sql: ${TABLE}.acominc ;;
  }

  dimension: acox {
    type: number
    sql: ${TABLE}.acox ;;
  }

  dimension: acoxar {
    type: number
    sql: ${TABLE}.acoxar ;;
  }

  dimension: acqao {
    type: number
    sql: ${TABLE}.acqao ;;
  }

  dimension: acqcshi {
    type: number
    sql: ${TABLE}.acqcshi ;;
  }

  dimension: acqgdwl {
    type: number
    sql: ${TABLE}.acqgdwl ;;
  }

  dimension: acqic {
    type: number
    sql: ${TABLE}.acqic ;;
  }

  dimension: acqintan {
    type: number
    sql: ${TABLE}.acqintan ;;
  }

  dimension: acqinvt {
    type: number
    sql: ${TABLE}.acqinvt ;;
  }

  dimension: acqlntal {
    type: number
    sql: ${TABLE}.acqlntal ;;
  }

  dimension: acqmeth {
    type: string
    sql: ${TABLE}.acqmeth ;;
  }

  dimension: acqniintc {
    type: string
    sql: ${TABLE}.acqniintc ;;
  }

  dimension: acqppe {
    type: number
    sql: ${TABLE}.acqppe ;;
  }

  dimension: acqsc {
    type: number
    sql: ${TABLE}.acqsc ;;
  }

  dimension: act {
    type: number
    sql: ${TABLE}.act ;;
  }

  dimension: add1 {
    type: string
    sql: ${TABLE}.add1 ;;
  }

  dimension: add2 {
    type: string
    sql: ${TABLE}.add2 ;;
  }

  dimension: add3 {
    type: string
    sql: ${TABLE}.add3 ;;
  }

  dimension: add4 {
    type: string
    sql: ${TABLE}.add4 ;;
  }

  dimension: addzip {
    type: string
    sql: ${TABLE}.addzip ;;
  }

  dimension: adjex_c {
    type: number
    sql: ${TABLE}.adjex_c ;;
  }

  dimension: adjex_f {
    type: number
    sql: ${TABLE}.adjex_f ;;
  }

  dimension: adpac {
    type: number
    sql: ${TABLE}.adpac ;;
  }

  dimension: adrr {
    type: number
    sql: ${TABLE}.adrr ;;
  }

  dimension: aedi {
    type: number
    sql: ${TABLE}.aedi ;;
  }

  dimension: afudcc {
    type: number
    sql: ${TABLE}.afudcc ;;
  }

  dimension: afudci {
    type: number
    sql: ${TABLE}.afudci ;;
  }

  dimension: ajex {
    type: number
    sql: ${TABLE}.ajex ;;
  }

  dimension: ajp {
    type: number
    sql: ${TABLE}.ajp ;;
  }

  dimension: aldo {
    type: number
    sql: ${TABLE}.aldo ;;
  }

  dimension: am {
    type: number
    sql: ${TABLE}.am ;;
  }

  dimension: amc {
    type: number
    sql: ${TABLE}.amc ;;
  }

  dimension: amdc {
    type: number
    sql: ${TABLE}.amdc ;;
  }

  dimension: amgw {
    type: number
    sql: ${TABLE}.amgw ;;
  }

  dimension: ano {
    type: number
    sql: ${TABLE}.ano ;;
  }

  dimension: ao {
    type: number
    sql: ${TABLE}.ao ;;
  }

  dimension: aocidergl {
    type: number
    sql: ${TABLE}.aocidergl ;;
  }

  dimension: aociother {
    type: number
    sql: ${TABLE}.aociother ;;
  }

  dimension: aocipen {
    type: number
    sql: ${TABLE}.aocipen ;;
  }

  dimension: aocisecgl {
    type: number
    sql: ${TABLE}.aocisecgl ;;
  }

  dimension: aodo {
    type: number
    sql: ${TABLE}.aodo ;;
  }

  dimension: aol2 {
    type: number
    sql: ${TABLE}.aol2 ;;
  }

  dimension: aoloch {
    type: number
    sql: ${TABLE}.aoloch ;;
  }

  dimension: aox {
    type: number
    sql: ${TABLE}.aox ;;
  }

  dimension: ap {
    type: number
    sql: ${TABLE}.ap ;;
  }

  dimension: apalch {
    type: number
    sql: ${TABLE}.apalch ;;
  }

  dimension: apb {
    type: number
    sql: ${TABLE}.apb ;;
  }

  dimension: apc {
    type: number
    sql: ${TABLE}.apc ;;
  }

  dimension_group: apdedate {
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
    sql: ${TABLE}.apofs ;;
  }

  dimension: aqa {
    type: number
    sql: ${TABLE}.aqa ;;
  }

  dimension: aqc {
    type: number
    sql: ${TABLE}.aqc ;;
  }

  dimension: aqd {
    type: number
    sql: ${TABLE}.aqd ;;
  }

  dimension: aqeps {
    type: number
    sql: ${TABLE}.aqeps ;;
  }

  dimension: aqi {
    type: number
    sql: ${TABLE}.aqi ;;
  }

  dimension: aqp {
    type: number
    sql: ${TABLE}.aqp ;;
  }

  dimension: aqpl1 {
    type: number
    sql: ${TABLE}.aqpl1 ;;
  }

  dimension: aqs {
    type: number
    sql: ${TABLE}.aqs ;;
  }

  dimension: arb {
    type: number
    sql: ${TABLE}.arb ;;
  }

  dimension: arc {
    type: number
    sql: ${TABLE}.arc ;;
  }

  dimension: arce {
    type: number
    sql: ${TABLE}.arce ;;
  }

  dimension: arced {
    type: number
    sql: ${TABLE}.arced ;;
  }

  dimension: arceeps {
    type: number
    sql: ${TABLE}.arceeps ;;
  }

  dimension: artfs {
    type: number
    sql: ${TABLE}.artfs ;;
  }

  dimension: at {
    type: number
    sql: ${TABLE}.`at` ;;
  }

  dimension: au {
    type: number
    sql: ${TABLE}.au ;;
  }

  dimension: aul3 {
    type: number
    sql: ${TABLE}.aul3 ;;
  }

  dimension: auop {
    type: number
    sql: ${TABLE}.auop ;;
  }

  dimension: auopic {
    type: number
    sql: ${TABLE}.auopic ;;
  }

  dimension: autxr {
    type: number
    sql: ${TABLE}.autxr ;;
  }

  dimension: balr {
    type: number
    sql: ${TABLE}.balr ;;
  }

  dimension: banlr {
    type: number
    sql: ${TABLE}.banlr ;;
  }

  dimension: bast {
    type: number
    sql: ${TABLE}.bast ;;
  }

  dimension: bastr {
    type: number
    sql: ${TABLE}.bastr ;;
  }

  dimension: batr {
    type: number
    sql: ${TABLE}.batr ;;
  }

  dimension: bcef {
    type: number
    sql: ${TABLE}.bcef ;;
  }

  dimension: bclr {
    type: number
    sql: ${TABLE}.bclr ;;
  }

  dimension: bcltbl {
    type: number
    sql: ${TABLE}.bcltbl ;;
  }

  dimension: bcnlr {
    type: number
    sql: ${TABLE}.bcnlr ;;
  }

  dimension: bcrbl {
    type: number
    sql: ${TABLE}.bcrbl ;;
  }

  dimension: bct {
    type: number
    sql: ${TABLE}.bct ;;
  }

  dimension: bctbl {
    type: number
    sql: ${TABLE}.bctbl ;;
  }

  dimension: bctr {
    type: number
    sql: ${TABLE}.bctr ;;
  }

  dimension: bkvlps {
    type: number
    sql: ${TABLE}.bkvlps ;;
  }

  dimension: bltbl {
    type: number
    sql: ${TABLE}.bltbl ;;
  }

  dimension: bspr {
    type: string
    sql: ${TABLE}.bspr ;;
  }

  dimension: busdesc {
    type: string
    sql: ${TABLE}.busdesc ;;
  }

  dimension: ca {
    type: number
    sql: ${TABLE}.ca ;;
  }

  dimension: capr1 {
    type: number
    sql: ${TABLE}.capr1 ;;
  }

  dimension: capr2 {
    type: number
    sql: ${TABLE}.capr2 ;;
  }

  dimension: capr3 {
    type: number
    sql: ${TABLE}.capr3 ;;
  }

  dimension: caps {
    type: number
    sql: ${TABLE}.caps ;;
  }

  dimension: capx {
    type: number
    sql: ${TABLE}.capx ;;
  }

  dimension: capxv {
    type: number
    sql: ${TABLE}.capxv ;;
  }

  dimension: cb {
    type: number
    sql: ${TABLE}.cb ;;
  }

  dimension: cbi {
    type: number
    sql: ${TABLE}.cbi ;;
  }

  dimension: cdpac {
    type: number
    sql: ${TABLE}.cdpac ;;
  }

  dimension: cdvc {
    type: number
    sql: ${TABLE}.cdvc ;;
  }

  dimension: ceoso {
    type: string
    sql: ${TABLE}.ceoso ;;
  }

  dimension: ceq {
    type: number
    sql: ${TABLE}.ceq ;;
  }

  dimension: ceql {
    type: number
    sql: ${TABLE}.ceql ;;
  }

  dimension: ceqt {
    type: number
    sql: ${TABLE}.ceqt ;;
  }

  dimension: cfbd {
    type: number
    sql: ${TABLE}.cfbd ;;
  }

  dimension: cfere {
    type: number
    sql: ${TABLE}.cfere ;;
  }

  dimension: cfo {
    type: number
    sql: ${TABLE}.cfo ;;
  }

  dimension: cfoso {
    type: string
    sql: ${TABLE}.cfoso ;;
  }

  dimension: cfpdo {
    type: number
    sql: ${TABLE}.cfpdo ;;
  }

  dimension: cga {
    type: number
    sql: ${TABLE}.cga ;;
  }

  dimension: cgri {
    type: number
    sql: ${TABLE}.cgri ;;
  }

  dimension: cgti {
    type: number
    sql: ${TABLE}.cgti ;;
  }

  dimension: cgui {
    type: number
    sql: ${TABLE}.cgui ;;
  }

  dimension: ch {
    type: number
    sql: ${TABLE}.ch ;;
  }

  dimension: che {
    type: number
    sql: ${TABLE}.che ;;
  }

  dimension: chech {
    type: number
    sql: ${TABLE}.chech ;;
  }

  dimension: chs {
    type: number
    sql: ${TABLE}.chs ;;
  }

  dimension: ci {
    type: number
    sql: ${TABLE}.ci ;;
  }

  dimension: cibegni {
    type: number
    sql: ${TABLE}.cibegni ;;
  }

  dimension: cicurr {
    type: number
    sql: ${TABLE}.cicurr ;;
  }

  dimension: cidergl {
    type: number
    sql: ${TABLE}.cidergl ;;
  }

  dimension: cik {
    type: number
    sql: ${TABLE}.cik ;;
  }

  dimension: cimii {
    type: number
    sql: ${TABLE}.cimii ;;
  }

  dimension: ciother {
    type: number
    sql: ${TABLE}.ciother ;;
  }

  dimension: cipen {
    type: number
    sql: ${TABLE}.cipen ;;
  }

  dimension: cisecgl {
    type: number
    sql: ${TABLE}.cisecgl ;;
  }

  dimension: citotal {
    type: number
    sql: ${TABLE}.citotal ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cld2 {
    type: number
    sql: ${TABLE}.cld2 ;;
  }

  dimension: cld3 {
    type: number
    sql: ${TABLE}.cld3 ;;
  }

  dimension: cld4 {
    type: number
    sql: ${TABLE}.cld4 ;;
  }

  dimension: cld5 {
    type: number
    sql: ${TABLE}.cld5 ;;
  }

  dimension: clfc {
    type: number
    sql: ${TABLE}.clfc ;;
  }

  dimension: clfx {
    type: number
    sql: ${TABLE}.clfx ;;
  }

  dimension: clg {
    type: number
    sql: ${TABLE}.clg ;;
  }

  dimension: clis {
    type: number
    sql: ${TABLE}.clis ;;
  }

  dimension: cll {
    type: number
    sql: ${TABLE}.cll ;;
  }

  dimension: cllc {
    type: number
    sql: ${TABLE}.cllc ;;
  }

  dimension: clo {
    type: number
    sql: ${TABLE}.clo ;;
  }

  dimension: clrll {
    type: number
    sql: ${TABLE}.clrll ;;
  }

  dimension: clt {
    type: number
    sql: ${TABLE}.clt ;;
  }

  dimension: cmp {
    type: number
    sql: ${TABLE}.cmp ;;
  }

  dimension: cnltbl {
    type: number
    sql: ${TABLE}.cnltbl ;;
  }

  dimension: cogs {
    type: number
    sql: ${TABLE}.cogs ;;
  }

  dimension: compst {
    type: string
    sql: ${TABLE}.compst ;;
  }

  dimension: conm {
    type: string
    sql: ${TABLE}.conm ;;
  }

  dimension: conml {
    type: string
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
    sql: ${TABLE}.county ;;
  }

  dimension: cpcbl {
    type: number
    sql: ${TABLE}.cpcbl ;;
  }

  dimension: cpdoi {
    type: number
    sql: ${TABLE}.cpdoi ;;
  }

  dimension: cpnli {
    type: number
    sql: ${TABLE}.cpnli ;;
  }

  dimension: cppbl {
    type: number
    sql: ${TABLE}.cppbl ;;
  }

  dimension: cprei {
    type: number
    sql: ${TABLE}.cprei ;;
  }

  dimension: crv {
    type: number
    sql: ${TABLE}.crv ;;
  }

  dimension: crvnli {
    type: number
    sql: ${TABLE}.crvnli ;;
  }

  dimension: cshfd {
    type: number
    sql: ${TABLE}.cshfd ;;
  }

  dimension: cshi {
    type: number
    sql: ${TABLE}.cshi ;;
  }

  dimension: csho {
    type: number
    sql: ${TABLE}.csho ;;
  }

  dimension: cshpri {
    type: number
    sql: ${TABLE}.cshpri ;;
  }

  dimension: cshr {
    type: number
    sql: ${TABLE}.cshr ;;
  }

  dimension: cshrc {
    type: number
    sql: ${TABLE}.cshrc ;;
  }

  dimension: cshrp {
    type: number
    sql: ${TABLE}.cshrp ;;
  }

  dimension: cshrso {
    type: number
    sql: ${TABLE}.cshrso ;;
  }

  dimension: cshrt {
    type: number
    sql: ${TABLE}.cshrt ;;
  }

  dimension: cshrw {
    type: number
    sql: ${TABLE}.cshrw ;;
  }

  dimension: cshtr_c {
    type: number
    sql: ${TABLE}.cshtr_c ;;
  }

  dimension: cshtr_f {
    type: number
    sql: ${TABLE}.cshtr_f ;;
  }

  dimension: cstk {
    type: number
    sql: ${TABLE}.cstk ;;
  }

  dimension: cstkcv {
    type: number
    sql: ${TABLE}.cstkcv ;;
  }

  dimension: cstke {
    type: number
    sql: ${TABLE}.cstke ;;
  }

  dimension: curcd {
    type: string
    sql: ${TABLE}.curcd ;;
  }

  dimension: curncd {
    type: string
    sql: ${TABLE}.curncd ;;
  }

  dimension: currtr {
    type: number
    sql: ${TABLE}.currtr ;;
  }

  dimension: curuscn {
    type: number
    sql: ${TABLE}.curuscn ;;
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
    sql: ${TABLE}.dbi ;;
  }

  dimension: dc {
    type: number
    sql: ${TABLE}.dc ;;
  }

  dimension: dclo {
    type: number
    sql: ${TABLE}.dclo ;;
  }

  dimension: dcom {
    type: number
    sql: ${TABLE}.dcom ;;
  }

  dimension: dcpstk {
    type: number
    sql: ${TABLE}.dcpstk ;;
  }

  dimension: dcs {
    type: number
    sql: ${TABLE}.dcs ;;
  }

  dimension: dcvsr {
    type: number
    sql: ${TABLE}.dcvsr ;;
  }

  dimension: dcvsub {
    type: number
    sql: ${TABLE}.dcvsub ;;
  }

  dimension: dcvt {
    type: number
    sql: ${TABLE}.dcvt ;;
  }

  dimension: dd {
    type: number
    sql: ${TABLE}.dd ;;
  }

  dimension: dd1 {
    type: number
    sql: ${TABLE}.dd1 ;;
  }

  dimension: dd2 {
    type: number
    sql: ${TABLE}.dd2 ;;
  }

  dimension: dd3 {
    type: number
    sql: ${TABLE}.dd3 ;;
  }

  dimension: dd4 {
    type: number
    sql: ${TABLE}.dd4 ;;
  }

  dimension: dd5 {
    type: number
    sql: ${TABLE}.dd5 ;;
  }

  dimension: depc {
    type: number
    sql: ${TABLE}.depc ;;
  }

  dimension: dfpac {
    type: number
    sql: ${TABLE}.dfpac ;;
  }

  dimension: dfs {
    type: number
    sql: ${TABLE}.dfs ;;
  }

  dimension: dfxa {
    type: number
    sql: ${TABLE}.dfxa ;;
  }

  dimension: diladj {
    type: number
    sql: ${TABLE}.diladj ;;
  }

  dimension: dilavx {
    type: number
    sql: ${TABLE}.dilavx ;;
  }

  dimension: dlc {
    type: number
    sql: ${TABLE}.dlc ;;
  }

  dimension: dlcch {
    type: number
    sql: ${TABLE}.dlcch ;;
  }

  dimension_group: dldte {
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
    sql: ${TABLE}.dlrsn ;;
  }

  dimension: dltis {
    type: number
    sql: ${TABLE}.dltis ;;
  }

  dimension: dlto {
    type: number
    sql: ${TABLE}.dlto ;;
  }

  dimension: dltp {
    type: number
    sql: ${TABLE}.dltp ;;
  }

  dimension: dltr {
    type: number
    sql: ${TABLE}.dltr ;;
  }

  dimension: dltsub {
    type: number
    sql: ${TABLE}.dltsub ;;
  }

  dimension: dltt {
    type: number
    sql: ${TABLE}.dltt ;;
  }

  dimension: dm {
    type: number
    sql: ${TABLE}.dm ;;
  }

  dimension: dn {
    type: number
    sql: ${TABLE}.dn ;;
  }

  dimension: do {
    type: number
    sql: ${TABLE}.do ;;
  }

  dimension: donr {
    type: number
    sql: ${TABLE}.donr ;;
  }

  dimension: dp {
    type: number
    sql: ${TABLE}.dp ;;
  }

  dimension: dpacb {
    type: number
    sql: ${TABLE}.dpacb ;;
  }

  dimension: dpacc {
    type: number
    sql: ${TABLE}.dpacc ;;
  }

  dimension: dpacli {
    type: number
    sql: ${TABLE}.dpacli ;;
  }

  dimension: dpacls {
    type: number
    sql: ${TABLE}.dpacls ;;
  }

  dimension: dpacme {
    type: number
    sql: ${TABLE}.dpacme ;;
  }

  dimension: dpacnr {
    type: number
    sql: ${TABLE}.dpacnr ;;
  }

  dimension: dpaco {
    type: number
    sql: ${TABLE}.dpaco ;;
  }

  dimension: dpacre {
    type: number
    sql: ${TABLE}.dpacre ;;
  }

  dimension: dpact {
    type: number
    sql: ${TABLE}.dpact ;;
  }

  dimension: dpc {
    type: number
    sql: ${TABLE}.dpc ;;
  }

  dimension: dpdc {
    type: number
    sql: ${TABLE}.dpdc ;;
  }

  dimension: dpltb {
    type: number
    sql: ${TABLE}.dpltb ;;
  }

  dimension: dpret {
    type: number
    sql: ${TABLE}.dpret ;;
  }

  dimension: dpsc {
    type: number
    sql: ${TABLE}.dpsc ;;
  }

  dimension: dpstb {
    type: number
    sql: ${TABLE}.dpstb ;;
  }

  dimension: dptb {
    type: number
    sql: ${TABLE}.dptb ;;
  }

  dimension: dptc {
    type: number
    sql: ${TABLE}.dptc ;;
  }

  dimension: dptic {
    type: number
    sql: ${TABLE}.dptic ;;
  }

  dimension: dpvieb {
    type: number
    sql: ${TABLE}.dpvieb ;;
  }

  dimension: dpvio {
    type: number
    sql: ${TABLE}.dpvio ;;
  }

  dimension: dpvir {
    type: number
    sql: ${TABLE}.dpvir ;;
  }

  dimension: drc {
    type: number
    sql: ${TABLE}.drc ;;
  }

  dimension: drci {
    type: number
    sql: ${TABLE}.drci ;;
  }

  dimension: drlt {
    type: number
    sql: ${TABLE}.drlt ;;
  }

  dimension: ds {
    type: number
    sql: ${TABLE}.ds ;;
  }

  dimension: dtea {
    type: number
    sql: ${TABLE}.dtea ;;
  }

  dimension: dted {
    type: number
    sql: ${TABLE}.dted ;;
  }

  dimension: dteeps {
    type: number
    sql: ${TABLE}.dteeps ;;
  }

  dimension: dtep {
    type: number
    sql: ${TABLE}.dtep ;;
  }

  dimension: dudd {
    type: number
    sql: ${TABLE}.dudd ;;
  }

  dimension: dv {
    type: number
    sql: ${TABLE}.dv ;;
  }

  dimension: dvc {
    type: number
    sql: ${TABLE}.dvc ;;
  }

  dimension: dvdnp {
    type: number
    sql: ${TABLE}.dvdnp ;;
  }

  dimension: dvp {
    type: number
    sql: ${TABLE}.dvp ;;
  }

  dimension: dvpa {
    type: number
    sql: ${TABLE}.dvpa ;;
  }

  dimension: dvpd {
    type: number
    sql: ${TABLE}.dvpd ;;
  }

  dimension: dvpdp {
    type: number
    sql: ${TABLE}.dvpdp ;;
  }

  dimension: dvpibb {
    type: number
    sql: ${TABLE}.dvpibb ;;
  }

  dimension: dvpsp_c {
    type: number
    sql: ${TABLE}.dvpsp_c ;;
  }

  dimension: dvpsp_f {
    type: number
    sql: ${TABLE}.dvpsp_f ;;
  }

  dimension: dvpsx_c {
    type: number
    sql: ${TABLE}.dvpsx_c ;;
  }

  dimension: dvpsx_f {
    type: number
    sql: ${TABLE}.dvpsx_f ;;
  }

  dimension: dvrpiv {
    type: number
    sql: ${TABLE}.dvrpiv ;;
  }

  dimension: dvrre {
    type: number
    sql: ${TABLE}.dvrre ;;
  }

  dimension: dvsco {
    type: number
    sql: ${TABLE}.dvsco ;;
  }

  dimension: dvt {
    type: number
    sql: ${TABLE}.dvt ;;
  }

  dimension: dxd2 {
    type: number
    sql: ${TABLE}.dxd2 ;;
  }

  dimension: dxd3 {
    type: number
    sql: ${TABLE}.dxd3 ;;
  }

  dimension: dxd4 {
    type: number
    sql: ${TABLE}.dxd4 ;;
  }

  dimension: dxd5 {
    type: number
    sql: ${TABLE}.dxd5 ;;
  }

  dimension: ea {
    type: number
    sql: ${TABLE}.ea ;;
  }

  dimension: ebit {
    type: number
    sql: ${TABLE}.ebit ;;
  }

  dimension: ebitda {
    type: number
    sql: ${TABLE}.ebitda ;;
  }

  dimension: eiea {
    type: number
    sql: ${TABLE}.eiea ;;
  }

  dimension: ein {
    type: string
    sql: ${TABLE}.ein ;;
  }

  dimension: emol {
    type: number
    sql: ${TABLE}.emol ;;
  }

  dimension: emp {
    type: number
    sql: ${TABLE}.emp ;;
  }

  dimension: epsfi {
    type: number
    sql: ${TABLE}.epsfi ;;
  }

  dimension: epsfx {
    type: number
    sql: ${TABLE}.epsfx ;;
  }

  dimension: epspi {
    type: number
    sql: ${TABLE}.epspi ;;
  }

  dimension: epspx {
    type: number
    sql: ${TABLE}.epspx ;;
  }

  dimension: esopct {
    type: number
    sql: ${TABLE}.esopct ;;
  }

  dimension: esopdlt {
    type: number
    sql: ${TABLE}.esopdlt ;;
  }

  dimension: esopnr {
    type: number
    sql: ${TABLE}.esopnr ;;
  }

  dimension: esopr {
    type: number
    sql: ${TABLE}.esopr ;;
  }

  dimension: esopt {
    type: number
    sql: ${TABLE}.esopt ;;
  }

  dimension: esub {
    type: number
    sql: ${TABLE}.esub ;;
  }

  dimension: esubc {
    type: number
    sql: ${TABLE}.esubc ;;
  }

  dimension: excadj {
    type: number
    sql: ${TABLE}.excadj ;;
  }

  dimension: exchg {
    type: number
    sql: ${TABLE}.exchg ;;
  }

  dimension: exre {
    type: number
    sql: ${TABLE}.exre ;;
  }

  dimension: fatb {
    type: number
    sql: ${TABLE}.fatb ;;
  }

  dimension: fatc {
    type: number
    sql: ${TABLE}.fatc ;;
  }

  dimension: fatd {
    type: number
    sql: ${TABLE}.fatd ;;
  }

  dimension: fate {
    type: number
    sql: ${TABLE}.fate ;;
  }

  dimension: fatl {
    type: number
    sql: ${TABLE}.fatl ;;
  }

  dimension: fatn {
    type: number
    sql: ${TABLE}.fatn ;;
  }

  dimension: fato {
    type: number
    sql: ${TABLE}.fato ;;
  }

  dimension: fatp {
    type: number
    sql: ${TABLE}.fatp ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fca {
    type: number
    sql: ${TABLE}.fca ;;
  }

  dimension_group: fdate {
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
    sql: ${TABLE}.fdfr ;;
  }

  dimension: fea {
    type: number
    sql: ${TABLE}.fea ;;
  }

  dimension: fel {
    type: number
    sql: ${TABLE}.fel ;;
  }

  dimension: ffo {
    type: number
    sql: ${TABLE}.ffo ;;
  }

  dimension: ffs {
    type: number
    sql: ${TABLE}.ffs ;;
  }

  dimension: fiao {
    type: number
    sql: ${TABLE}.fiao ;;
  }

  dimension: fic {
    type: string
    sql: ${TABLE}.fic ;;
  }

  dimension: final {
    type: yesno
    sql: ${TABLE}.final ;;
  }

  dimension: fincf {
    type: number
    sql: ${TABLE}.fincf ;;
  }

  dimension: fopo {
    type: number
    sql: ${TABLE}.fopo ;;
  }

  dimension: fopox {
    type: number
    sql: ${TABLE}.fopox ;;
  }

  dimension: fopt {
    type: number
    sql: ${TABLE}.fopt ;;
  }

  dimension: fsrco {
    type: number
    sql: ${TABLE}.fsrco ;;
  }

  dimension: fsrct {
    type: number
    sql: ${TABLE}.fsrct ;;
  }

  dimension: fuseo {
    type: number
    sql: ${TABLE}.fuseo ;;
  }

  dimension: fuset {
    type: number
    sql: ${TABLE}.fuset ;;
  }

  dimension: fyear {
    type: number
    sql: ${TABLE}.fyear ;;
  }

  dimension: fyr {
    type: number
    sql: ${TABLE}.fyr ;;
  }

  dimension: fyrc {
    type: number
    sql: ${TABLE}.fyrc ;;
  }

  dimension: gbbl {
    type: number
    sql: ${TABLE}.gbbl ;;
  }

  dimension: gdwl {
    type: number
    sql: ${TABLE}.gdwl ;;
  }

  dimension: gdwlam {
    type: number
    sql: ${TABLE}.gdwlam ;;
  }

  dimension: gdwlia {
    type: number
    sql: ${TABLE}.gdwlia ;;
  }

  dimension: gdwlid {
    type: number
    value_format_name: id
    sql: ${TABLE}.gdwlid ;;
  }

  dimension: gdwlieps {
    type: number
    sql: ${TABLE}.gdwlieps ;;
  }

  dimension: gdwlip {
    type: number
    sql: ${TABLE}.gdwlip ;;
  }

  dimension: geqrv {
    type: number
    sql: ${TABLE}.geqrv ;;
  }

  dimension: ggroup {
    type: number
    sql: ${TABLE}.ggroup ;;
  }

  dimension: gind {
    type: number
    sql: ${TABLE}.gind ;;
  }

  dimension: gla {
    type: number
    sql: ${TABLE}.gla ;;
  }

  dimension: glcea {
    type: number
    sql: ${TABLE}.glcea ;;
  }

  dimension: glced {
    type: number
    sql: ${TABLE}.glced ;;
  }

  dimension: glceeps {
    type: number
    sql: ${TABLE}.glceeps ;;
  }

  dimension: glcep {
    type: number
    sql: ${TABLE}.glcep ;;
  }

  dimension: gld {
    type: number
    sql: ${TABLE}.gld ;;
  }

  dimension: gleps {
    type: number
    sql: ${TABLE}.gleps ;;
  }

  dimension: glp {
    type: number
    sql: ${TABLE}.glp ;;
  }

  dimension: govgr {
    type: number
    sql: ${TABLE}.govgr ;;
  }

  dimension: govtown {
    type: number
    sql: ${TABLE}.govtown ;;
  }

  dimension: gp {
    type: number
    sql: ${TABLE}.gp ;;
  }

  dimension: gphbl {
    type: number
    sql: ${TABLE}.gphbl ;;
  }

  dimension: gplbl {
    type: number
    sql: ${TABLE}.gplbl ;;
  }

  dimension: gpobl {
    type: number
    sql: ${TABLE}.gpobl ;;
  }

  dimension: gprbl {
    type: number
    sql: ${TABLE}.gprbl ;;
  }

  dimension: gptbl {
    type: number
    sql: ${TABLE}.gptbl ;;
  }

  dimension: gsector {
    type: number
    sql: ${TABLE}.gsector ;;
  }

  dimension: gsubind {
    type: number
    sql: ${TABLE}.gsubind ;;
  }

  dimension: gvkey {
    type: number
    sql: ${TABLE}.gvkey ;;
  }

  dimension: gwo {
    type: number
    sql: ${TABLE}.gwo ;;
  }

  dimension: hedgegl {
    type: number
    sql: ${TABLE}.hedgegl ;;
  }

  dimension: iaeq {
    type: number
    sql: ${TABLE}.iaeq ;;
  }

  dimension: iaeqci {
    type: number
    sql: ${TABLE}.iaeqci ;;
  }

  dimension: iaeqmi {
    type: number
    sql: ${TABLE}.iaeqmi ;;
  }

  dimension: iafici {
    type: number
    sql: ${TABLE}.iafici ;;
  }

  dimension: iafxi {
    type: number
    sql: ${TABLE}.iafxi ;;
  }

  dimension: iafxmi {
    type: number
    sql: ${TABLE}.iafxmi ;;
  }

  dimension: iali {
    type: number
    sql: ${TABLE}.iali ;;
  }

  dimension: ialoi {
    type: number
    sql: ${TABLE}.ialoi ;;
  }

  dimension: ialti {
    type: number
    sql: ${TABLE}.ialti ;;
  }

  dimension: iamli {
    type: number
    sql: ${TABLE}.iamli ;;
  }

  dimension: iaoi {
    type: number
    sql: ${TABLE}.iaoi ;;
  }

  dimension: iapli {
    type: number
    sql: ${TABLE}.iapli ;;
  }

  dimension: iarei {
    type: number
    sql: ${TABLE}.iarei ;;
  }

  dimension: iasci {
    type: number
    sql: ${TABLE}.iasci ;;
  }

  dimension: iasmi {
    type: number
    sql: ${TABLE}.iasmi ;;
  }

  dimension: iassi {
    type: number
    sql: ${TABLE}.iassi ;;
  }

  dimension: iasti {
    type: number
    sql: ${TABLE}.iasti ;;
  }

  dimension: iatci {
    type: number
    sql: ${TABLE}.iatci ;;
  }

  dimension: iati {
    type: number
    sql: ${TABLE}.iati ;;
  }

  dimension: iatmi {
    type: number
    sql: ${TABLE}.iatmi ;;
  }

  dimension: iaui {
    type: number
    sql: ${TABLE}.iaui ;;
  }

  dimension: ib {
    type: number
    sql: ${TABLE}.ib ;;
  }

  dimension: ibadj {
    type: number
    sql: ${TABLE}.ibadj ;;
  }

  dimension: ibbl {
    type: number
    sql: ${TABLE}.ibbl ;;
  }

  dimension: ibc {
    type: number
    sql: ${TABLE}.ibc ;;
  }

  dimension: ibcom {
    type: number
    sql: ${TABLE}.ibcom ;;
  }

  dimension: ibki {
    type: number
    sql: ${TABLE}.ibki ;;
  }

  dimension: ibmii {
    type: number
    sql: ${TABLE}.ibmii ;;
  }

  dimension: icapt {
    type: number
    sql: ${TABLE}.icapt ;;
  }

  dimension: idbflag {
    type: string
    sql: ${TABLE}.idbflag ;;
  }

  dimension: idiis {
    type: number
    sql: ${TABLE}.idiis ;;
  }

  dimension: idilb {
    type: number
    sql: ${TABLE}.idilb ;;
  }

  dimension: idilc {
    type: number
    sql: ${TABLE}.idilc ;;
  }

  dimension: idis {
    type: number
    sql: ${TABLE}.idis ;;
  }

  dimension: idist {
    type: number
    sql: ${TABLE}.idist ;;
  }

  dimension: idit {
    type: number
    sql: ${TABLE}.idit ;;
  }

  dimension: idits {
    type: number
    sql: ${TABLE}.idits ;;
  }

  dimension: iire {
    type: number
    sql: ${TABLE}.iire ;;
  }

  dimension: incorp {
    type: string
    sql: ${TABLE}.incorp ;;
  }

  dimension: indfmt {
    type: string
    sql: ${TABLE}.indfmt ;;
  }

  dimension: initb {
    type: number
    sql: ${TABLE}.initb ;;
  }

  dimension: intan {
    type: number
    sql: ${TABLE}.intan ;;
  }

  dimension: intano {
    type: number
    sql: ${TABLE}.intano ;;
  }

  dimension: intc {
    type: number
    sql: ${TABLE}.intc ;;
  }

  dimension: intpn {
    type: number
    sql: ${TABLE}.intpn ;;
  }

  dimension: invch {
    type: number
    sql: ${TABLE}.invch ;;
  }

  dimension: invfg {
    type: number
    sql: ${TABLE}.invfg ;;
  }

  dimension: invo {
    type: number
    sql: ${TABLE}.invo ;;
  }

  dimension: invofs {
    type: number
    sql: ${TABLE}.invofs ;;
  }

  dimension: invreh {
    type: number
    sql: ${TABLE}.invreh ;;
  }

  dimension: invrei {
    type: number
    sql: ${TABLE}.invrei ;;
  }

  dimension: invres {
    type: number
    sql: ${TABLE}.invres ;;
  }

  dimension: invrm {
    type: number
    sql: ${TABLE}.invrm ;;
  }

  dimension: invt {
    type: number
    sql: ${TABLE}.invt ;;
  }

  dimension: invwip {
    type: number
    sql: ${TABLE}.invwip ;;
  }

  dimension: iobd {
    type: number
    sql: ${TABLE}.iobd ;;
  }

  dimension: ioi {
    type: number
    sql: ${TABLE}.ioi ;;
  }

  dimension: iore {
    type: number
    sql: ${TABLE}.iore ;;
  }

  dimension: ip {
    type: number
    sql: ${TABLE}.ip ;;
  }

  dimension: ipabl {
    type: number
    sql: ${TABLE}.ipabl ;;
  }

  dimension: ipc {
    type: number
    sql: ${TABLE}.ipc ;;
  }

  dimension: iphbl {
    type: number
    sql: ${TABLE}.iphbl ;;
  }

  dimension: iplbl {
    type: number
    sql: ${TABLE}.iplbl ;;
  }

  dimension: ipobl {
    type: number
    sql: ${TABLE}.ipobl ;;
  }

  dimension_group: ipodate {
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
    sql: ${TABLE}.iptbl ;;
  }

  dimension: ipti {
    type: number
    sql: ${TABLE}.ipti ;;
  }

  dimension: ipv {
    type: number
    sql: ${TABLE}.ipv ;;
  }

  dimension: irei {
    type: number
    sql: ${TABLE}.irei ;;
  }

  dimension: irent {
    type: number
    sql: ${TABLE}.irent ;;
  }

  dimension: irii {
    type: number
    sql: ${TABLE}.irii ;;
  }

  dimension: irli {
    type: number
    sql: ${TABLE}.irli ;;
  }

  dimension: irnli {
    type: number
    sql: ${TABLE}.irnli ;;
  }

  dimension: irsi {
    type: number
    sql: ${TABLE}.irsi ;;
  }

  dimension: iseq {
    type: number
    sql: ${TABLE}.iseq ;;
  }

  dimension: iseqc {
    type: number
    sql: ${TABLE}.iseqc ;;
  }

  dimension: iseqm {
    type: number
    sql: ${TABLE}.iseqm ;;
  }

  dimension: isfi {
    type: number
    sql: ${TABLE}.isfi ;;
  }

  dimension: isfxc {
    type: number
    sql: ${TABLE}.isfxc ;;
  }

  dimension: isfxm {
    type: number
    sql: ${TABLE}.isfxm ;;
  }

  dimension: isgr {
    type: number
    sql: ${TABLE}.isgr ;;
  }

  dimension: isgt {
    type: number
    sql: ${TABLE}.isgt ;;
  }

  dimension: isgu {
    type: number
    sql: ${TABLE}.isgu ;;
  }

  dimension: islg {
    type: number
    sql: ${TABLE}.islg ;;
  }

  dimension: islgc {
    type: number
    sql: ${TABLE}.islgc ;;
  }

  dimension: islgm {
    type: number
    sql: ${TABLE}.islgm ;;
  }

  dimension: islt {
    type: number
    sql: ${TABLE}.islt ;;
  }

  dimension: ismod {
    type: number
    sql: ${TABLE}.ismod ;;
  }

  dimension: isng {
    type: number
    sql: ${TABLE}.isng ;;
  }

  dimension: isngc {
    type: number
    sql: ${TABLE}.isngc ;;
  }

  dimension: isngm {
    type: number
    sql: ${TABLE}.isngm ;;
  }

  dimension: isotc {
    type: number
    sql: ${TABLE}.isotc ;;
  }

  dimension: isoth {
    type: number
    sql: ${TABLE}.isoth ;;
  }

  dimension: isotm {
    type: number
    sql: ${TABLE}.isotm ;;
  }

  dimension: issc {
    type: number
    sql: ${TABLE}.issc ;;
  }

  dimension: issm {
    type: number
    sql: ${TABLE}.issm ;;
  }

  dimension: issu {
    type: number
    sql: ${TABLE}.issu ;;
  }

  dimension: ist {
    type: number
    sql: ${TABLE}.ist ;;
  }

  dimension: istc {
    type: number
    sql: ${TABLE}.istc ;;
  }

  dimension: istm {
    type: number
    sql: ${TABLE}.istm ;;
  }

  dimension: isut {
    type: number
    sql: ${TABLE}.isut ;;
  }

  dimension: itcb {
    type: number
    sql: ${TABLE}.itcb ;;
  }

  dimension: itcc {
    type: number
    sql: ${TABLE}.itcc ;;
  }

  dimension: itci {
    type: number
    sql: ${TABLE}.itci ;;
  }

  dimension: ivaco {
    type: number
    sql: ${TABLE}.ivaco ;;
  }

  dimension: ivaeq {
    type: number
    sql: ${TABLE}.ivaeq ;;
  }

  dimension: ivao {
    type: number
    sql: ${TABLE}.ivao ;;
  }

  dimension: ivch {
    type: number
    sql: ${TABLE}.ivch ;;
  }

  dimension: ivgod {
    type: number
    sql: ${TABLE}.ivgod ;;
  }

  dimension: ivi {
    type: number
    sql: ${TABLE}.ivi ;;
  }

  dimension: ivncf {
    type: number
    sql: ${TABLE}.ivncf ;;
  }

  dimension: ivpt {
    type: number
    sql: ${TABLE}.ivpt ;;
  }

  dimension: ivst {
    type: number
    sql: ${TABLE}.ivst ;;
  }

  dimension: ivstch {
    type: number
    sql: ${TABLE}.ivstch ;;
  }

  dimension: lcabg {
    type: number
    sql: ${TABLE}.lcabg ;;
  }

  dimension: lcacl {
    type: number
    sql: ${TABLE}.lcacl ;;
  }

  dimension: lcacr {
    type: number
    sql: ${TABLE}.lcacr ;;
  }

  dimension: lcag {
    type: number
    sql: ${TABLE}.lcag ;;
  }

  dimension: lcal {
    type: number
    sql: ${TABLE}.lcal ;;
  }

  dimension: lcalt {
    type: number
    sql: ${TABLE}.lcalt ;;
  }

  dimension: lcam {
    type: number
    sql: ${TABLE}.lcam ;;
  }

  dimension: lcao {
    type: number
    sql: ${TABLE}.lcao ;;
  }

  dimension: lcast {
    type: number
    sql: ${TABLE}.lcast ;;
  }

  dimension: lcat {
    type: number
    sql: ${TABLE}.lcat ;;
  }

  dimension: lco {
    type: number
    sql: ${TABLE}.lco ;;
  }

  dimension: lcox {
    type: number
    sql: ${TABLE}.lcox ;;
  }

  dimension: lcoxar {
    type: number
    sql: ${TABLE}.lcoxar ;;
  }

  dimension: lcoxdr {
    type: number
    sql: ${TABLE}.lcoxdr ;;
  }

  dimension: lct {
    type: number
    sql: ${TABLE}.lct ;;
  }

  dimension: lcuacu {
    type: number
    sql: ${TABLE}.lcuacu ;;
  }

  dimension: li {
    type: number
    sql: ${TABLE}.li ;;
  }

  dimension: lif {
    type: number
    sql: ${TABLE}.lif ;;
  }

  dimension: lifr {
    type: number
    sql: ${TABLE}.lifr ;;
  }

  dimension: lloml {
    type: number
    sql: ${TABLE}.lloml ;;
  }

  dimension: lloo {
    type: number
    sql: ${TABLE}.lloo ;;
  }

  dimension: llot {
    type: number
    sql: ${TABLE}.llot ;;
  }

  dimension: llrci {
    type: number
    sql: ${TABLE}.llrci ;;
  }

  dimension: llrcr {
    type: number
    sql: ${TABLE}.llrcr ;;
  }

  dimension: llwoci {
    type: number
    sql: ${TABLE}.llwoci ;;
  }

  dimension: llwocr {
    type: number
    sql: ${TABLE}.llwocr ;;
  }

  dimension: lno {
    type: number
    sql: ${TABLE}.lno ;;
  }

  dimension: lo {
    type: number
    sql: ${TABLE}.lo ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.loc ;;
  }

  dimension: lol2 {
    type: number
    sql: ${TABLE}.lol2 ;;
  }

  dimension: loxdr {
    type: number
    sql: ${TABLE}.loxdr ;;
  }

  dimension: lqpl1 {
    type: number
    sql: ${TABLE}.lqpl1 ;;
  }

  dimension: lrv {
    type: number
    sql: ${TABLE}.lrv ;;
  }

  dimension: ls {
    type: number
    sql: ${TABLE}.ls ;;
  }

  dimension: lse {
    type: number
    sql: ${TABLE}.lse ;;
  }

  dimension: lst {
    type: number
    sql: ${TABLE}.lst ;;
  }

  dimension: lt {
    type: number
    sql: ${TABLE}.lt ;;
  }

  dimension: ltcm {
    type: number
    sql: ${TABLE}.ltcm ;;
  }

  dimension: lul3 {
    type: number
    sql: ${TABLE}.lul3 ;;
  }

  dimension: mib {
    type: number
    sql: ${TABLE}.mib ;;
  }

  dimension: mibn {
    type: number
    sql: ${TABLE}.mibn ;;
  }

  dimension: mibt {
    type: number
    sql: ${TABLE}.mibt ;;
  }

  dimension: mii {
    type: number
    sql: ${TABLE}.mii ;;
  }

  dimension: mkvalt {
    type: number
    sql: ${TABLE}.mkvalt ;;
  }

  dimension: mrc1 {
    type: number
    sql: ${TABLE}.mrc1 ;;
  }

  dimension: mrc2 {
    type: number
    sql: ${TABLE}.mrc2 ;;
  }

  dimension: mrc3 {
    type: number
    sql: ${TABLE}.mrc3 ;;
  }

  dimension: mrc4 {
    type: number
    sql: ${TABLE}.mrc4 ;;
  }

  dimension: mrc5 {
    type: number
    sql: ${TABLE}.mrc5 ;;
  }

  dimension: mrct {
    type: number
    sql: ${TABLE}.mrct ;;
  }

  dimension: mrcta {
    type: number
    sql: ${TABLE}.mrcta ;;
  }

  dimension: msa {
    type: number
    sql: ${TABLE}.msa ;;
  }

  dimension: msvrv {
    type: number
    sql: ${TABLE}.msvrv ;;
  }

  dimension: mtl {
    type: number
    sql: ${TABLE}.mtl ;;
  }

  dimension: naics {
    type: number
    sql: ${TABLE}.naics ;;
  }

  dimension: naicsh {
    type: number
    sql: ${TABLE}.naicsh ;;
  }

  dimension: nat {
    type: number
    sql: ${TABLE}.nat ;;
  }

  dimension: nco {
    type: number
    sql: ${TABLE}.nco ;;
  }

  dimension: nfsr {
    type: number
    sql: ${TABLE}.nfsr ;;
  }

  dimension: ni {
    type: number
    sql: ${TABLE}.ni ;;
  }

  dimension: niadj {
    type: number
    sql: ${TABLE}.niadj ;;
  }

  dimension: nieci {
    type: number
    sql: ${TABLE}.nieci ;;
  }

  dimension: niint {
    type: number
    sql: ${TABLE}.niint ;;
  }

  dimension: niintpfc {
    type: string
    sql: ${TABLE}.niintpfc ;;
  }

  dimension: niintpfp {
    type: string
    sql: ${TABLE}.niintpfp ;;
  }

  dimension: niit {
    type: number
    sql: ${TABLE}.niit ;;
  }

  dimension: nim {
    type: number
    sql: ${TABLE}.nim ;;
  }

  dimension: nio {
    type: number
    sql: ${TABLE}.nio ;;
  }

  dimension: nipfc {
    type: number
    sql: ${TABLE}.nipfc ;;
  }

  dimension: nipfp {
    type: number
    sql: ${TABLE}.nipfp ;;
  }

  dimension: nit {
    type: number
    sql: ${TABLE}.nit ;;
  }

  dimension: nits {
    type: number
    sql: ${TABLE}.nits ;;
  }

  dimension: nopi {
    type: number
    sql: ${TABLE}.nopi ;;
  }

  dimension: nopio {
    type: number
    sql: ${TABLE}.nopio ;;
  }

  dimension: np {
    type: number
    sql: ${TABLE}.np ;;
  }

  dimension: npanl {
    type: number
    sql: ${TABLE}.npanl ;;
  }

  dimension: npaore {
    type: number
    sql: ${TABLE}.npaore ;;
  }

  dimension: nparl {
    type: number
    sql: ${TABLE}.nparl ;;
  }

  dimension: npat {
    type: number
    sql: ${TABLE}.npat ;;
  }

  dimension: nrtxt {
    type: number
    sql: ${TABLE}.nrtxt ;;
  }

  dimension: nrtxtd {
    type: number
    sql: ${TABLE}.nrtxtd ;;
  }

  dimension: nrtxteps {
    type: number
    sql: ${TABLE}.nrtxteps ;;
  }

  dimension: oancf {
    type: number
    sql: ${TABLE}.oancf ;;
  }

  dimension: ob {
    type: number
    sql: ${TABLE}.ob ;;
  }

  dimension: ogm {
    type: string
    sql: ${TABLE}.ogm ;;
  }

  dimension: oiadp {
    type: number
    sql: ${TABLE}.oiadp ;;
  }

  dimension: oibdp {
    type: number
    sql: ${TABLE}.oibdp ;;
  }

  dimension: opeps {
    type: number
    sql: ${TABLE}.opeps ;;
  }

  dimension: opili {
    type: number
    sql: ${TABLE}.opili ;;
  }

  dimension: opincar {
    type: number
    sql: ${TABLE}.opincar ;;
  }

  dimension: opini {
    type: number
    sql: ${TABLE}.opini ;;
  }

  dimension: opioi {
    type: number
    sql: ${TABLE}.opioi ;;
  }

  dimension: opiri {
    type: number
    sql: ${TABLE}.opiri ;;
  }

  dimension: opiti {
    type: number
    sql: ${TABLE}.opiti ;;
  }

  dimension: oprepsx {
    type: number
    sql: ${TABLE}.oprepsx ;;
  }

  dimension: optca {
    type: number
    sql: ${TABLE}.optca ;;
  }

  dimension: optdr {
    type: number
    sql: ${TABLE}.optdr ;;
  }

  dimension: optex {
    type: number
    sql: ${TABLE}.optex ;;
  }

  dimension: optexd {
    type: number
    sql: ${TABLE}.optexd ;;
  }

  dimension: optfvgr {
    type: number
    sql: ${TABLE}.optfvgr ;;
  }

  dimension: optgr {
    type: number
    sql: ${TABLE}.optgr ;;
  }

  dimension: optlife {
    type: number
    sql: ${TABLE}.optlife ;;
  }

  dimension: optosby {
    type: number
    sql: ${TABLE}.optosby ;;
  }

  dimension: optosey {
    type: number
    sql: ${TABLE}.optosey ;;
  }

  dimension: optprcby {
    type: number
    sql: ${TABLE}.optprcby ;;
  }

  dimension: optprcca {
    type: number
    sql: ${TABLE}.optprcca ;;
  }

  dimension: optprcex {
    type: number
    sql: ${TABLE}.optprcex ;;
  }

  dimension: optprcey {
    type: number
    sql: ${TABLE}.optprcey ;;
  }

  dimension: optprcgr {
    type: number
    sql: ${TABLE}.optprcgr ;;
  }

  dimension: optprcwa {
    type: number
    sql: ${TABLE}.optprcwa ;;
  }

  dimension: optrfr {
    type: number
    sql: ${TABLE}.optrfr ;;
  }

  dimension: optvol {
    type: number
    sql: ${TABLE}.optvol ;;
  }

  dimension: palr {
    type: number
    sql: ${TABLE}.palr ;;
  }

  dimension: panlr {
    type: number
    sql: ${TABLE}.panlr ;;
  }

  dimension: patr {
    type: number
    sql: ${TABLE}.patr ;;
  }

  dimension: pcl {
    type: number
    sql: ${TABLE}.pcl ;;
  }

  dimension: pclr {
    type: number
    sql: ${TABLE}.pclr ;;
  }

  dimension: pcnlr {
    type: number
    sql: ${TABLE}.pcnlr ;;
  }

  dimension: pctr {
    type: number
    sql: ${TABLE}.pctr ;;
  }

  dimension_group: pdate {
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
    sql: ${TABLE}.pddur ;;
  }

  dimension: pdvc {
    type: number
    sql: ${TABLE}.pdvc ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: pi {
    type: number
    sql: ${TABLE}.pi ;;
  }

  dimension: pidom {
    type: number
    sql: ${TABLE}.pidom ;;
  }

  dimension: pifo {
    type: number
    sql: ${TABLE}.pifo ;;
  }

  dimension: pll {
    type: number
    sql: ${TABLE}.pll ;;
  }

  dimension: pltbl {
    type: number
    sql: ${TABLE}.pltbl ;;
  }

  dimension: pnca {
    type: number
    sql: ${TABLE}.pnca ;;
  }

  dimension: pncad {
    type: number
    sql: ${TABLE}.pncad ;;
  }

  dimension: pncaeps {
    type: number
    sql: ${TABLE}.pncaeps ;;
  }

  dimension: pncia {
    type: number
    sql: ${TABLE}.pncia ;;
  }

  dimension: pncid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pncid ;;
  }

  dimension: pncieps {
    type: number
    sql: ${TABLE}.pncieps ;;
  }

  dimension: pncip {
    type: number
    sql: ${TABLE}.pncip ;;
  }

  dimension: pncwia {
    type: number
    sql: ${TABLE}.pncwia ;;
  }

  dimension: pncwid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pncwid ;;
  }

  dimension: pncwieps {
    type: number
    sql: ${TABLE}.pncwieps ;;
  }

  dimension: pncwip {
    type: number
    sql: ${TABLE}.pncwip ;;
  }

  dimension: pnlbl {
    type: number
    sql: ${TABLE}.pnlbl ;;
  }

  dimension: pnli {
    type: number
    sql: ${TABLE}.pnli ;;
  }

  dimension: pnrsho {
    type: number
    sql: ${TABLE}.pnrsho ;;
  }

  dimension: pobl {
    type: number
    sql: ${TABLE}.pobl ;;
  }

  dimension: popsrc {
    type: string
    sql: ${TABLE}.popsrc ;;
  }

  dimension: ppcbl {
    type: number
    sql: ${TABLE}.ppcbl ;;
  }

  dimension: ppegt {
    type: number
    sql: ${TABLE}.ppegt ;;
  }

  dimension: ppenb {
    type: number
    sql: ${TABLE}.ppenb ;;
  }

  dimension: ppenc {
    type: number
    sql: ${TABLE}.ppenc ;;
  }

  dimension: ppenli {
    type: number
    sql: ${TABLE}.ppenli ;;
  }

  dimension: ppenls {
    type: number
    sql: ${TABLE}.ppenls ;;
  }

  dimension: ppenme {
    type: number
    sql: ${TABLE}.ppenme ;;
  }

  dimension: ppennr {
    type: number
    sql: ${TABLE}.ppennr ;;
  }

  dimension: ppeno {
    type: number
    sql: ${TABLE}.ppeno ;;
  }

  dimension: ppent {
    type: number
    sql: ${TABLE}.ppent ;;
  }

  dimension: ppevbb {
    type: number
    sql: ${TABLE}.ppevbb ;;
  }

  dimension: ppeveb {
    type: number
    sql: ${TABLE}.ppeveb ;;
  }

  dimension: ppevo {
    type: number
    sql: ${TABLE}.ppevo ;;
  }

  dimension: ppevr {
    type: number
    sql: ${TABLE}.ppevr ;;
  }

  dimension: pppabl {
    type: number
    sql: ${TABLE}.pppabl ;;
  }

  dimension: ppphbl {
    type: number
    sql: ${TABLE}.ppphbl ;;
  }

  dimension: pppobl {
    type: number
    sql: ${TABLE}.pppobl ;;
  }

  dimension: ppptbl {
    type: number
    sql: ${TABLE}.ppptbl ;;
  }

  dimension: prc {
    type: number
    sql: ${TABLE}.prc ;;
  }

  dimension: prca {
    type: number
    sql: ${TABLE}.prca ;;
  }

  dimension: prcad {
    type: number
    sql: ${TABLE}.prcad ;;
  }

  dimension: prcaeps {
    type: number
    sql: ${TABLE}.prcaeps ;;
  }

  dimension: prcc_c {
    type: number
    sql: ${TABLE}.prcc_c ;;
  }

  dimension: prcc_f {
    type: number
    sql: ${TABLE}.prcc_f ;;
  }

  dimension: prch_c {
    type: number
    sql: ${TABLE}.prch_c ;;
  }

  dimension: prch_f {
    type: number
    sql: ${TABLE}.prch_f ;;
  }

  dimension: prcl_c {
    type: number
    sql: ${TABLE}.prcl_c ;;
  }

  dimension: prcl_f {
    type: number
    sql: ${TABLE}.prcl_f ;;
  }

  dimension: prebl {
    type: number
    sql: ${TABLE}.prebl ;;
  }

  dimension: pri {
    type: number
    sql: ${TABLE}.pri ;;
  }

  dimension: prican {
    type: string
    sql: ${TABLE}.prican ;;
  }

  dimension: prirow {
    type: string
    sql: ${TABLE}.prirow ;;
  }

  dimension: priusa {
    type: number
    sql: ${TABLE}.priusa ;;
  }

  dimension: prodv {
    type: number
    sql: ${TABLE}.prodv ;;
  }

  dimension: prsho {
    type: number
    sql: ${TABLE}.prsho ;;
  }

  dimension: prstkc {
    type: number
    sql: ${TABLE}.prstkc ;;
  }

  dimension: prstkcc {
    type: number
    sql: ${TABLE}.prstkcc ;;
  }

  dimension: prstkpc {
    type: number
    sql: ${TABLE}.prstkpc ;;
  }

  dimension: prvt {
    type: string
    sql: ${TABLE}.prvt ;;
  }

  dimension: pstk {
    type: number
    sql: ${TABLE}.pstk ;;
  }

  dimension: pstkc {
    type: number
    sql: ${TABLE}.pstkc ;;
  }

  dimension: pstkl {
    type: number
    sql: ${TABLE}.pstkl ;;
  }

  dimension: pstkn {
    type: number
    sql: ${TABLE}.pstkn ;;
  }

  dimension: pstkr {
    type: number
    sql: ${TABLE}.pstkr ;;
  }

  dimension: pstkrv {
    type: number
    sql: ${TABLE}.pstkrv ;;
  }

  dimension: ptbl {
    type: number
    sql: ${TABLE}.ptbl ;;
  }

  dimension: ptran {
    type: number
    sql: ${TABLE}.ptran ;;
  }

  dimension: pvcl {
    type: number
    sql: ${TABLE}.pvcl ;;
  }

  dimension: pvo {
    type: number
    sql: ${TABLE}.pvo ;;
  }

  dimension: pvon {
    type: number
    sql: ${TABLE}.pvon ;;
  }

  dimension: pvpl {
    type: number
    sql: ${TABLE}.pvpl ;;
  }

  dimension: pvt {
    type: number
    sql: ${TABLE}.pvt ;;
  }

  dimension: pwoi {
    type: number
    sql: ${TABLE}.pwoi ;;
  }

  dimension: radp {
    type: number
    sql: ${TABLE}.radp ;;
  }

  dimension: ragr {
    type: number
    sql: ${TABLE}.ragr ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: rari {
    type: number
    sql: ${TABLE}.rari ;;
  }

  dimension: rati {
    type: number
    sql: ${TABLE}.rati ;;
  }

  dimension: rca {
    type: number
    sql: ${TABLE}.rca ;;
  }

  dimension: rcd {
    type: number
    sql: ${TABLE}.rcd ;;
  }

  dimension: rceps {
    type: number
    sql: ${TABLE}.rceps ;;
  }

  dimension: rcl {
    type: number
    sql: ${TABLE}.rcl ;;
  }

  dimension: rcp {
    type: number
    sql: ${TABLE}.rcp ;;
  }

  dimension: rdip {
    type: number
    sql: ${TABLE}.rdip ;;
  }

  dimension: rdipa {
    type: number
    sql: ${TABLE}.rdipa ;;
  }

  dimension: rdipd {
    type: number
    sql: ${TABLE}.rdipd ;;
  }

  dimension: rdipeps {
    type: number
    sql: ${TABLE}.rdipeps ;;
  }

  dimension: rdp {
    type: number
    sql: ${TABLE}.rdp ;;
  }

  dimension: re {
    type: number
    sql: ${TABLE}.re ;;
  }

  dimension: rea {
    type: number
    sql: ${TABLE}.rea ;;
  }

  dimension: reajo {
    type: number
    sql: ${TABLE}.reajo ;;
  }

  dimension: recch {
    type: number
    sql: ${TABLE}.recch ;;
  }

  dimension: recco {
    type: number
    sql: ${TABLE}.recco ;;
  }

  dimension: recd {
    type: number
    sql: ${TABLE}.recd ;;
  }

  dimension: rect {
    type: number
    sql: ${TABLE}.rect ;;
  }

  dimension: recta {
    type: number
    sql: ${TABLE}.recta ;;
  }

  dimension: rectr {
    type: number
    sql: ${TABLE}.rectr ;;
  }

  dimension: recub {
    type: number
    sql: ${TABLE}.recub ;;
  }

  dimension: ret {
    type: number
    sql: ${TABLE}.ret ;;
  }

  dimension: reuna {
    type: number
    sql: ${TABLE}.reuna ;;
  }

  dimension: reunr {
    type: number
    sql: ${TABLE}.reunr ;;
  }

  dimension: revt {
    type: number
    sql: ${TABLE}.revt ;;
  }

  dimension: ris {
    type: number
    sql: ${TABLE}.ris ;;
  }

  dimension: rll {
    type: number
    sql: ${TABLE}.rll ;;
  }

  dimension: rlo {
    type: number
    sql: ${TABLE}.rlo ;;
  }

  dimension: rlp {
    type: number
    sql: ${TABLE}.rlp ;;
  }

  dimension: rlri {
    type: number
    sql: ${TABLE}.rlri ;;
  }

  dimension: rlt {
    type: number
    sql: ${TABLE}.rlt ;;
  }

  dimension: rmum {
    type: number
    sql: ${TABLE}.rmum ;;
  }

  dimension: rpag {
    type: number
    sql: ${TABLE}.rpag ;;
  }

  dimension: rra {
    type: number
    sql: ${TABLE}.rra ;;
  }

  dimension: rrd {
    type: number
    sql: ${TABLE}.rrd ;;
  }

  dimension: rreps {
    type: number
    sql: ${TABLE}.rreps ;;
  }

  dimension: rrp {
    type: number
    sql: ${TABLE}.rrp ;;
  }

  dimension: rvbci {
    type: number
    sql: ${TABLE}.rvbci ;;
  }

  dimension: rvbpi {
    type: number
    sql: ${TABLE}.rvbpi ;;
  }

  dimension: rvbti {
    type: number
    sql: ${TABLE}.rvbti ;;
  }

  dimension: rvdo {
    type: number
    sql: ${TABLE}.rvdo ;;
  }

  dimension: rvdt {
    type: number
    sql: ${TABLE}.rvdt ;;
  }

  dimension: rveqt {
    type: number
    sql: ${TABLE}.rveqt ;;
  }

  dimension: rvlrv {
    type: number
    sql: ${TABLE}.rvlrv ;;
  }

  dimension: rvno {
    type: number
    sql: ${TABLE}.rvno ;;
  }

  dimension: rvnt {
    type: number
    sql: ${TABLE}.rvnt ;;
  }

  dimension: rvri {
    type: number
    sql: ${TABLE}.rvri ;;
  }

  dimension: rvsi {
    type: number
    sql: ${TABLE}.rvsi ;;
  }

  dimension: rvti {
    type: number
    sql: ${TABLE}.rvti ;;
  }

  dimension: rvtxr {
    type: number
    sql: ${TABLE}.rvtxr ;;
  }

  dimension: rvupi {
    type: number
    sql: ${TABLE}.rvupi ;;
  }

  dimension: rvutx {
    type: number
    sql: ${TABLE}.rvutx ;;
  }

  dimension: saa {
    type: number
    sql: ${TABLE}.saa ;;
  }

  dimension: sal {
    type: number
    sql: ${TABLE}.sal ;;
  }

  dimension: sale {
    type: number
    sql: ${TABLE}.sale ;;
  }

  dimension: salepfc {
    type: number
    sql: ${TABLE}.salepfc ;;
  }

  dimension: salepfp {
    type: number
    sql: ${TABLE}.salepfp ;;
  }

  dimension: sbdc {
    type: number
    sql: ${TABLE}.sbdc ;;
  }

  dimension: sc {
    type: number
    sql: ${TABLE}.sc ;;
  }

  dimension: scf {
    type: number
    sql: ${TABLE}.scf ;;
  }

  dimension: sco {
    type: number
    sql: ${TABLE}.sco ;;
  }

  dimension: scstkc {
    type: number
    sql: ${TABLE}.scstkc ;;
  }

  dimension: secu {
    type: number
    sql: ${TABLE}.secu ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  dimension: seqo {
    type: number
    sql: ${TABLE}.seqo ;;
  }

  dimension: seta {
    type: number
    sql: ${TABLE}.seta ;;
  }

  dimension: setd {
    type: number
    sql: ${TABLE}.setd ;;
  }

  dimension: seteps {
    type: number
    sql: ${TABLE}.seteps ;;
  }

  dimension: setp {
    type: number
    sql: ${TABLE}.setp ;;
  }

  dimension: sic {
    type: number
    sql: ${TABLE}.sic ;;
  }

  dimension: sich {
    type: number
    sql: ${TABLE}.sich ;;
  }

  dimension: siv {
    type: number
    sql: ${TABLE}.siv ;;
  }

  dimension: spce {
    type: number
    sql: ${TABLE}.spce ;;
  }

  dimension: spced {
    type: number
    sql: ${TABLE}.spced ;;
  }

  dimension: spceeps {
    type: number
    sql: ${TABLE}.spceeps ;;
  }

  dimension: spcindcd {
    type: number
    sql: ${TABLE}.spcindcd ;;
  }

  dimension: spcseccd {
    type: number
    sql: ${TABLE}.spcseccd ;;
  }

  dimension: spcsrc {
    type: string
    sql: ${TABLE}.spcsrc ;;
  }

  dimension: spi {
    type: number
    sql: ${TABLE}.spi ;;
  }

  dimension: spid {
    type: number
    value_format_name: id
    sql: ${TABLE}.spid ;;
  }

  dimension: spieps {
    type: number
    sql: ${TABLE}.spieps ;;
  }

  dimension: spioa {
    type: number
    sql: ${TABLE}.spioa ;;
  }

  dimension: spiop {
    type: number
    sql: ${TABLE}.spiop ;;
  }

  dimension: sppe {
    type: number
    sql: ${TABLE}.sppe ;;
  }

  dimension: sppiv {
    type: number
    sql: ${TABLE}.sppiv ;;
  }

  dimension: spstkc {
    type: number
    sql: ${TABLE}.spstkc ;;
  }

  dimension: src {
    type: number
    sql: ${TABLE}.src ;;
  }

  dimension: sret {
    type: number
    sql: ${TABLE}.sret ;;
  }

  dimension: srt {
    type: number
    sql: ${TABLE}.srt ;;
  }

  dimension: ssnp {
    type: number
    sql: ${TABLE}.ssnp ;;
  }

  dimension: sstk {
    type: number
    sql: ${TABLE}.sstk ;;
  }

  dimension: stalt {
    type: string
    sql: ${TABLE}.stalt ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: stbo {
    type: number
    sql: ${TABLE}.stbo ;;
  }

  dimension: stio {
    type: number
    sql: ${TABLE}.stio ;;
  }

  dimension: stkco {
    type: number
    sql: ${TABLE}.stkco ;;
  }

  dimension: stkcpa {
    type: number
    sql: ${TABLE}.stkcpa ;;
  }

  dimension: stko {
    type: number
    sql: ${TABLE}.stko ;;
  }

  dimension: tdc {
    type: number
    sql: ${TABLE}.tdc ;;
  }

  dimension: tdscd {
    type: number
    sql: ${TABLE}.tdscd ;;
  }

  dimension: tdsce {
    type: number
    sql: ${TABLE}.tdsce ;;
  }

  dimension: tdsg {
    type: number
    sql: ${TABLE}.tdsg ;;
  }

  dimension: tdslg {
    type: number
    sql: ${TABLE}.tdslg ;;
  }

  dimension: tdsmm {
    type: number
    sql: ${TABLE}.tdsmm ;;
  }

  dimension: tdsng {
    type: number
    sql: ${TABLE}.tdsng ;;
  }

  dimension: tdso {
    type: number
    sql: ${TABLE}.tdso ;;
  }

  dimension: tdss {
    type: number
    sql: ${TABLE}.tdss ;;
  }

  dimension: tdst {
    type: number
    sql: ${TABLE}.tdst ;;
  }

  dimension: teq {
    type: number
    sql: ${TABLE}.teq ;;
  }

  dimension: tf {
    type: number
    sql: ${TABLE}.tf ;;
  }

  dimension: tfva {
    type: number
    sql: ${TABLE}.tfva ;;
  }

  dimension: tfvce {
    type: number
    sql: ${TABLE}.tfvce ;;
  }

  dimension: tfvl {
    type: number
    sql: ${TABLE}.tfvl ;;
  }

  dimension: tic {
    type: string
    sql: ${TABLE}.tic ;;
  }

  dimension: tie {
    type: number
    sql: ${TABLE}.tie ;;
  }

  dimension: tii {
    type: number
    sql: ${TABLE}.tii ;;
  }

  dimension: tlcf {
    type: number
    sql: ${TABLE}.tlcf ;;
  }

  dimension: transa {
    type: number
    sql: ${TABLE}.transa ;;
  }

  dimension: tsa {
    type: number
    sql: ${TABLE}.tsa ;;
  }

  dimension: tsafc {
    type: string
    sql: ${TABLE}.tsafc ;;
  }

  dimension: tso {
    type: number
    sql: ${TABLE}.tso ;;
  }

  dimension: tstk {
    type: number
    sql: ${TABLE}.tstk ;;
  }

  dimension: tstkc {
    type: number
    sql: ${TABLE}.tstkc ;;
  }

  dimension: tstkme {
    type: string
    sql: ${TABLE}.tstkme ;;
  }

  dimension: tstkn {
    type: number
    sql: ${TABLE}.tstkn ;;
  }

  dimension: tstkp {
    type: number
    sql: ${TABLE}.tstkp ;;
  }

  dimension: txach {
    type: number
    sql: ${TABLE}.txach ;;
  }

  dimension: txbco {
    type: number
    sql: ${TABLE}.txbco ;;
  }

  dimension: txbcof {
    type: number
    sql: ${TABLE}.txbcof ;;
  }

  dimension: txc {
    type: number
    sql: ${TABLE}.txc ;;
  }

  dimension: txdb {
    type: number
    sql: ${TABLE}.txdb ;;
  }

  dimension: txdba {
    type: number
    sql: ${TABLE}.txdba ;;
  }

  dimension: txdbca {
    type: number
    sql: ${TABLE}.txdbca ;;
  }

  dimension: txdbcl {
    type: number
    sql: ${TABLE}.txdbcl ;;
  }

  dimension: txdc {
    type: number
    sql: ${TABLE}.txdc ;;
  }

  dimension: txdfed {
    type: number
    sql: ${TABLE}.txdfed ;;
  }

  dimension: txdfo {
    type: number
    sql: ${TABLE}.txdfo ;;
  }

  dimension: txdi {
    type: number
    sql: ${TABLE}.txdi ;;
  }

  dimension: txditc {
    type: number
    sql: ${TABLE}.txditc ;;
  }

  dimension: txds {
    type: number
    sql: ${TABLE}.txds ;;
  }

  dimension: txeqa {
    type: number
    sql: ${TABLE}.txeqa ;;
  }

  dimension: txeqii {
    type: number
    sql: ${TABLE}.txeqii ;;
  }

  dimension: txfed {
    type: number
    sql: ${TABLE}.txfed ;;
  }

  dimension: txfo {
    type: number
    sql: ${TABLE}.txfo ;;
  }

  dimension: txndb {
    type: number
    sql: ${TABLE}.txndb ;;
  }

  dimension: txndba {
    type: number
    sql: ${TABLE}.txndba ;;
  }

  dimension: txndbl {
    type: number
    sql: ${TABLE}.txndbl ;;
  }

  dimension: txndbr {
    type: number
    sql: ${TABLE}.txndbr ;;
  }

  dimension: txo {
    type: number
    sql: ${TABLE}.txo ;;
  }

  dimension: txp {
    type: number
    sql: ${TABLE}.txp ;;
  }

  dimension: txpd {
    type: number
    sql: ${TABLE}.txpd ;;
  }

  dimension: txr {
    type: number
    sql: ${TABLE}.txr ;;
  }

  dimension: txs {
    type: number
    sql: ${TABLE}.txs ;;
  }

  dimension: txt {
    type: number
    sql: ${TABLE}.txt ;;
  }

  dimension: txtubadjust {
    type: number
    sql: ${TABLE}.txtubadjust ;;
  }

  dimension: txtubbegin {
    type: number
    sql: ${TABLE}.txtubbegin ;;
  }

  dimension: txtubend {
    type: number
    sql: ${TABLE}.txtubend ;;
  }

  dimension: txtubmax {
    type: number
    sql: ${TABLE}.txtubmax ;;
  }

  dimension: txtubmin {
    type: number
    sql: ${TABLE}.txtubmin ;;
  }

  dimension: txtubposdec {
    type: number
    sql: ${TABLE}.txtubposdec ;;
  }

  dimension: txtubposinc {
    type: number
    sql: ${TABLE}.txtubposinc ;;
  }

  dimension: txtubpospdec {
    type: number
    sql: ${TABLE}.txtubpospdec ;;
  }

  dimension: txtubpospinc {
    type: number
    sql: ${TABLE}.txtubpospinc ;;
  }

  dimension: txtubsettle {
    type: number
    sql: ${TABLE}.txtubsettle ;;
  }

  dimension: txtubsoflimit {
    type: number
    sql: ${TABLE}.txtubsoflimit ;;
  }

  dimension: txtubtxtr {
    type: number
    sql: ${TABLE}.txtubtxtr ;;
  }

  dimension: txtubxintbs {
    type: number
    sql: ${TABLE}.txtubxintbs ;;
  }

  dimension: txtubxintis {
    type: number
    sql: ${TABLE}.txtubxintis ;;
  }

  dimension: txva {
    type: number
    sql: ${TABLE}.txva ;;
  }

  dimension: txw {
    type: number
    sql: ${TABLE}.txw ;;
  }

  dimension: uaoloch {
    type: number
    sql: ${TABLE}.uaoloch ;;
  }

  dimension: uaox {
    type: number
    sql: ${TABLE}.uaox ;;
  }

  dimension: uapt {
    type: number
    sql: ${TABLE}.uapt ;;
  }

  dimension: ucaps {
    type: number
    sql: ${TABLE}.ucaps ;;
  }

  dimension: uccons {
    type: number
    sql: ${TABLE}.uccons ;;
  }

  dimension: uceq {
    type: number
    sql: ${TABLE}.uceq ;;
  }

  dimension: ucustad {
    type: number
    sql: ${TABLE}.ucustad ;;
  }

  dimension: udcopres {
    type: number
    sql: ${TABLE}.udcopres ;;
  }

  dimension: udd {
    type: number
    sql: ${TABLE}.udd ;;
  }

  dimension: udfcc {
    type: number
    sql: ${TABLE}.udfcc ;;
  }

  dimension: udmb {
    type: number
    sql: ${TABLE}.udmb ;;
  }

  dimension: udolt {
    type: number
    sql: ${TABLE}.udolt ;;
  }

  dimension: udpco {
    type: number
    sql: ${TABLE}.udpco ;;
  }

  dimension: udpfa {
    type: number
    sql: ${TABLE}.udpfa ;;
  }

  dimension: udpl {
    type: number
    sql: ${TABLE}.udpl ;;
  }

  dimension: udvp {
    type: number
    sql: ${TABLE}.udvp ;;
  }

  dimension: ufretsd {
    type: string
    sql: ${TABLE}.ufretsd ;;
  }

  dimension: ugi {
    type: number
    sql: ${TABLE}.ugi ;;
  }

  dimension: ui {
    type: number
    sql: ${TABLE}.ui ;;
  }

  dimension: uinvt {
    type: number
    sql: ${TABLE}.uinvt ;;
  }

  dimension: ulcm {
    type: number
    sql: ${TABLE}.ulcm ;;
  }

  dimension: ulco {
    type: number
    sql: ${TABLE}.ulco ;;
  }

  dimension: uniami {
    type: number
    sql: ${TABLE}.uniami ;;
  }

  dimension: unl {
    type: number
    sql: ${TABLE}.unl ;;
  }

  dimension: unnp {
    type: number
    sql: ${TABLE}.unnp ;;
  }

  dimension: unnpl {
    type: number
    sql: ${TABLE}.unnpl ;;
  }

  dimension: unopinc {
    type: number
    sql: ${TABLE}.unopinc ;;
  }

  dimension: unwcc {
    type: string
    sql: ${TABLE}.unwcc ;;
  }

  dimension: uois {
    type: number
    sql: ${TABLE}.uois ;;
  }

  dimension: uopi {
    type: number
    sql: ${TABLE}.uopi ;;
  }

  dimension: uopres {
    type: number
    sql: ${TABLE}.uopres ;;
  }

  dimension: upd {
    type: number
    sql: ${TABLE}.upd ;;
  }

  dimension: updvp {
    type: number
    sql: ${TABLE}.updvp ;;
  }

  dimension: upmcstk {
    type: number
    sql: ${TABLE}.upmcstk ;;
  }

  dimension: upmpf {
    type: number
    sql: ${TABLE}.upmpf ;;
  }

  dimension: upmpfs {
    type: number
    sql: ${TABLE}.upmpfs ;;
  }

  dimension: upmsubp {
    type: number
    sql: ${TABLE}.upmsubp ;;
  }

  dimension: upstk {
    type: number
    sql: ${TABLE}.upstk ;;
  }

  dimension: upstkc {
    type: number
    sql: ${TABLE}.upstkc ;;
  }

  dimension: upstksf {
    type: number
    sql: ${TABLE}.upstksf ;;
  }

  dimension: urect {
    type: number
    sql: ${TABLE}.urect ;;
  }

  dimension: urectr {
    type: number
    sql: ${TABLE}.urectr ;;
  }

  dimension: urevub {
    type: number
    sql: ${TABLE}.urevub ;;
  }

  dimension: uspi {
    type: number
    sql: ${TABLE}.uspi ;;
  }

  dimension: ustdnc {
    type: string
    sql: ${TABLE}.ustdnc ;;
  }

  dimension: usubdvp {
    type: number
    sql: ${TABLE}.usubdvp ;;
  }

  dimension: usubpstk {
    type: number
    sql: ${TABLE}.usubpstk ;;
  }

  dimension: utfdoc {
    type: string
    sql: ${TABLE}.utfdoc ;;
  }

  dimension: utfosc {
    type: string
    sql: ${TABLE}.utfosc ;;
  }

  dimension: utme {
    type: number
    sql: ${TABLE}.utme ;;
  }

  dimension: utxfed {
    type: number
    sql: ${TABLE}.utxfed ;;
  }

  dimension: uwkcapc {
    type: string
    sql: ${TABLE}.uwkcapc ;;
  }

  dimension: uxinst {
    type: number
    sql: ${TABLE}.uxinst ;;
  }

  dimension: uxintd {
    type: number
    sql: ${TABLE}.uxintd ;;
  }

  dimension: vpac {
    type: number
    sql: ${TABLE}.vpac ;;
  }

  dimension: vpo {
    type: number
    sql: ${TABLE}.vpo ;;
  }

  dimension: wcap {
    type: number
    sql: ${TABLE}.wcap ;;
  }

  dimension: wcapc {
    type: number
    sql: ${TABLE}.wcapc ;;
  }

  dimension: wcapch {
    type: number
    sql: ${TABLE}.wcapch ;;
  }

  dimension: wda {
    type: number
    sql: ${TABLE}.wda ;;
  }

  dimension: wdd {
    type: number
    sql: ${TABLE}.wdd ;;
  }

  dimension: wdeps {
    type: number
    sql: ${TABLE}.wdeps ;;
  }

  dimension: wdp {
    type: number
    sql: ${TABLE}.wdp ;;
  }

  dimension: weburl {
    type: string
    sql: ${TABLE}.weburl ;;
  }

  dimension: xacc {
    type: number
    sql: ${TABLE}.xacc ;;
  }

  dimension: xad {
    type: number
    sql: ${TABLE}.xad ;;
  }

  dimension: xago {
    type: number
    sql: ${TABLE}.xago ;;
  }

  dimension: xagt {
    type: number
    sql: ${TABLE}.xagt ;;
  }

  dimension: xcom {
    type: number
    sql: ${TABLE}.xcom ;;
  }

  dimension: xcomi {
    type: number
    sql: ${TABLE}.xcomi ;;
  }

  dimension: xdepl {
    type: number
    sql: ${TABLE}.xdepl ;;
  }

  dimension: xdp {
    type: number
    sql: ${TABLE}.xdp ;;
  }

  dimension: xdvre {
    type: number
    sql: ${TABLE}.xdvre ;;
  }

  dimension: xeqo {
    type: number
    sql: ${TABLE}.xeqo ;;
  }

  dimension: xi {
    type: number
    sql: ${TABLE}.xi ;;
  }

  dimension: xido {
    type: number
    sql: ${TABLE}.xido ;;
  }

  dimension: xidoc {
    type: number
    sql: ${TABLE}.xidoc ;;
  }

  dimension: xindb {
    type: number
    sql: ${TABLE}.xindb ;;
  }

  dimension: xindc {
    type: number
    sql: ${TABLE}.xindc ;;
  }

  dimension: xins {
    type: number
    sql: ${TABLE}.xins ;;
  }

  dimension: xinst {
    type: number
    sql: ${TABLE}.xinst ;;
  }

  dimension: xint {
    type: number
    sql: ${TABLE}.xint ;;
  }

  dimension: xintd {
    type: number
    sql: ${TABLE}.xintd ;;
  }

  dimension: xintopt {
    type: number
    sql: ${TABLE}.xintopt ;;
  }

  dimension: xivi {
    type: number
    sql: ${TABLE}.xivi ;;
  }

  dimension: xivre {
    type: number
    sql: ${TABLE}.xivre ;;
  }

  dimension: xlr {
    type: number
    sql: ${TABLE}.xlr ;;
  }

  dimension: xnbi {
    type: number
    sql: ${TABLE}.xnbi ;;
  }

  dimension: xnf {
    type: number
    sql: ${TABLE}.xnf ;;
  }

  dimension: xnins {
    type: number
    sql: ${TABLE}.xnins ;;
  }

  dimension: xnitb {
    type: number
    sql: ${TABLE}.xnitb ;;
  }

  dimension: xobd {
    type: number
    sql: ${TABLE}.xobd ;;
  }

  dimension: xoi {
    type: number
    sql: ${TABLE}.xoi ;;
  }

  dimension: xopr {
    type: number
    sql: ${TABLE}.xopr ;;
  }

  dimension: xoprar {
    type: number
    sql: ${TABLE}.xoprar ;;
  }

  dimension: xoptd {
    type: number
    sql: ${TABLE}.xoptd ;;
  }

  dimension: xopteps {
    type: number
    sql: ${TABLE}.xopteps ;;
  }

  dimension: xore {
    type: number
    sql: ${TABLE}.xore ;;
  }

  dimension: xpp {
    type: number
    sql: ${TABLE}.xpp ;;
  }

  dimension: xpr {
    type: number
    sql: ${TABLE}.xpr ;;
  }

  dimension: xrd {
    type: number
    sql: ${TABLE}.xrd ;;
  }

  dimension: xrent {
    type: number
    sql: ${TABLE}.xrent ;;
  }

  dimension: xs {
    type: number
    sql: ${TABLE}.xs ;;
  }

  dimension: xsga {
    type: number
    sql: ${TABLE}.xsga ;;
  }

  dimension: xstf {
    type: number
    sql: ${TABLE}.xstf ;;
  }

  dimension: xstfo {
    type: number
    sql: ${TABLE}.xstfo ;;
  }

  dimension: xstfws {
    type: number
    sql: ${TABLE}.xstfws ;;
  }

  dimension: xt {
    type: number
    sql: ${TABLE}.xt ;;
  }

  dimension: xuw {
    type: number
    sql: ${TABLE}.xuw ;;
  }

  dimension: xuwli {
    type: number
    sql: ${TABLE}.xuwli ;;
  }

  dimension: xuwnli {
    type: number
    sql: ${TABLE}.xuwnli ;;
  }

  dimension: xuwoi {
    type: number
    sql: ${TABLE}.xuwoi ;;
  }

  dimension: xuwrei {
    type: number
    sql: ${TABLE}.xuwrei ;;
  }

  dimension: xuwti {
    type: number
    sql: ${TABLE}.xuwti ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
