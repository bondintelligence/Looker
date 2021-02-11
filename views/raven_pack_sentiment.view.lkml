view: raven_pack_sentiment {
  sql_table_name: `bi-model-development.looker_FINAL.RavenPack_Sentiment`
    ;;

  dimension: aes {
    type: string
    sql: ${TABLE}.AES ;;
  }

  dimension: aev {
    type: string
    sql: ${TABLE}.AEV ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: ens {
    type: string
    sql: ${TABLE}.ENS ;;
  }

  dimension: ens_elapsed {
    type: string
    sql: ${TABLE}.ENS_ELAPSED ;;
  }

  dimension: ens_key {
    type: string
    sql: ${TABLE}.ENS_KEY ;;
  }

  dimension: ens_similarity_gap {
    type: string
    sql: ${TABLE}.ENS_SIMILARITY_GAP ;;
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}.ENTITY_NAME ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.ENTITY_TYPE ;;
  }

  dimension: ess {
    type: string
    sql: ${TABLE}.ESS ;;
  }

  dimension: evaluation_method {
    type: string
    sql: ${TABLE}.EVALUATION_METHOD ;;
  }

  dimension: event_similarity_key {
    type: string
    sql: ${TABLE}.EVENT_SIMILARITY_KEY ;;
  }

  dimension: g_ens {
    type: string
    sql: ${TABLE}.G_ENS ;;
  }

  dimension: g_ens_elapsed {
    type: string
    sql: ${TABLE}.G_ENS_ELAPSED ;;
  }

  dimension: g_ens_key {
    type: string
    sql: ${TABLE}.G_ENS_KEY ;;
  }

  dimension: g_ens_similarity_gap {
    type: string
    sql: ${TABLE}.G_ENS_SIMILARITY_GAP ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`GROUP` ;;
  }

  dimension: maturity {
    type: string
    sql: ${TABLE}.MATURITY ;;
  }

  dimension: news_type {
    type: string
    sql: ${TABLE}.NEWS_TYPE ;;
  }

  dimension: position_name {
    type: string
    sql: ${TABLE}.POSITION_NAME ;;
  }

  dimension: product_key {
    type: string
    sql: ${TABLE}.PRODUCT_KEY ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.PROPERTY ;;
  }

  dimension: relevance {
    type: string
    sql: ${TABLE}.RELEVANCE ;;
  }

  dimension: rp_entity_id {
    type: string
    sql: ${TABLE}.RP_ENTITY_ID ;;
  }

  dimension: rp_position_id {
    type: string
    sql: ${TABLE}.RP_POSITION_ID ;;
  }

  dimension: rp_story_event_count {
    type: string
    sql: ${TABLE}.RP_STORY_EVENT_COUNT ;;
  }

  dimension: rp_story_event_index {
    type: string
    sql: ${TABLE}.RP_STORY_EVENT_INDEX ;;
  }

  dimension: rp_story_id {
    type: string
    sql: ${TABLE}.RP_STORY_ID ;;
  }

  dimension: rpna_date_utc {
    type: string
    sql: ${TABLE}.RPNA_DATE_UTC ;;
  }

  dimension: rpna_time_utc {
    type: string
    sql: ${TABLE}.RPNA_TIME_UTC ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}.SUB_TYPE ;;
  }

  dimension: timestamp_utc {
    type: string
    sql: ${TABLE}.TIMESTAMP_UTC ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.TOPIC ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [entity_name, position_name]
  }
}
