view: raven_pack_sentiment {
  sql_table_name: `bi-model-development.looker_FINAL.RavenPack_Sentiment`
    ;;

  dimension: aes {
    type: number
    label: "Aggregate Event Sentiment"
    sql: ${TABLE}.AES ;;
  }

  dimension: aev {
    type: number
    label: "Aggregate Event Volume"
    sql: ${TABLE}.AEV ;;
  }

  dimension: category {
    type: string
    label: "Event Category"
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: country_code {
    type: string
    label: "ISO-3166 Country Code"
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: ens {
    type: number
    label: "Event Novelty Score"
    sql: ${TABLE}.ENS ;;
    group_label: "Event Novelty"
  }

  dimension: ens_elapsed {
    type: number
    label: "Event Novelty Elapsed Time"
    sql: ${TABLE}.ENS_ELAPSED ;;
    group_label: "Event Novelty"
  }

  dimension: ens_key {
    type: string
    sql: ${TABLE}.ENS_KEY ;;
    label: "Event Novelty Key"
    group_label: "Event Novelty"
  }

  dimension: ens_similarity_gap {
    type: number
    sql: ${TABLE}.ENS_SIMILARITY_GAP ;;
    label: "Event Novelty Similarity Gap"
    group_label: "Event Novelty"
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}.ENTITY_NAME ;;
    label: "Entity Name"
    primary_key: yes
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.ENTITY_TYPE ;;
    case:{
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "ORGA" ;;
        label: "Organization"
      }
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "COMP" ;;
        label: "Company"
      }
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "CURR" ;;
        label: "Currency"
      }
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "CMDT" ;;
        label: "Commodity"
      }
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "PLCE" ;;
        label: "Place"
      }
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "ORGT" ;;
        label: "Organization"
      }
      when: {
        sql: ${TABLE}.ENTITY_TYPE = "POSI" ;;
        label: "Position"
      }
    }
    label: "Entity Type"
  }

  dimension: ess {
    type: number
    sql: ${TABLE}.ESS ;;
    label: "Event Sentiment Score"
  }

  dimension: evaluation_method {
    type: string
    sql: ${TABLE}.EVALUATION_METHOD ;;
    label: "Evaluation Method"
    case: {
      when: {
        sql: ${TABLE}.EVALUATION_METHOD = "YOY" ;;
        label: "Year-over-Year Change"
      }
      when: {
        sql: ${TABLE}.EVALUATION_METHOD = "QOQ" ;;
        label: "Quarter-over-Quarter Change"
      }
      when: {
        sql: ${TABLE}.EVALUATION_METHOD = "MOM" ;;
        label: "Month-over-Month Change"
      }
    }
  }

  dimension: event_similarity_key {
    type: string
    sql: ${TABLE}.EVENT_SIMILARITY_KEY ;;
    label: "Event Similarity Key"
  }

  dimension: g_ens {
    type: number
    sql: ${TABLE}.G_ENS ;;
    label: "Global Event Novelty Score"
    group_label: "Global Event Novelty"
  }

  dimension: g_ens_elapsed {
    type: number
    sql: ${TABLE}.G_ENS_ELAPSED ;;
    label: "Global Event Novelty Time Elapsed"
    group_label: "Global Event Novelty"
  }

  dimension: g_ens_key {
    type: string
    sql: ${TABLE}.G_ENS_KEY ;;
    label: "Global Event Novelty Key"
    group_label: "Global Event Novelty"
  }

  dimension: g_ens_similarity_gap {
    type: number
    sql: ${TABLE}.G_ENS_SIMILARITY_GAP ;;
    label: "Global Event Novelty Similarity Gap"
    group_label: "Global Event Novelty"
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`GROUP` ;;
    label: "Event Group"
  }

  dimension: news_type {
    type: string
    sql: ${TABLE}.NEWS_TYPE ;;
    label: "News Story Type"
  }

  dimension: position_name {
    type: string
    sql: ${TABLE}.POSITION_NAME ;;
    label: "Relevant Position Title"
  }

  dimension: product_key {
    type: string
    sql: ${TABLE}.PRODUCT_KEY ;;
    case: {
      when: {
        sql: ${TABLE}.PRODUCT_KEY = "DJ-EQ" ;;
        label: "Dow Jones Edition - Equities"
      }
      when: {
        sql: ${TABLE}.PRODUCT_KEY = "DJ-GM" ;;
        label: "Dow Jones Edition - Global Macro"
      }
      when: {
        sql: ${TABLE}.PRODUCT_KEY = "WE-EQ" ;;
        label: "Web Edition - Equities"
      }
      when: {
        sql: ${TABLE}.PRODUCT_KEY = "WE-GM" ;;
        label: "Web Edition - Global Macro"
      }
      when: {
        sql: ${TABLE}.PRODUCT_KEY = "PR-EQ" ;;
        label: "Press Release Edition - Equities"
      }
      when: {
        sql: ${TABLE}.PRODUCT_KEY = "PR-GM" ;;
        label: "Press Release Edition - Global Macro  "
      }
    }
    label: "Subscription Package Key"
  }

  dimension: property {
    type: string
    sql: ${TABLE}.PROPERTY ;;
    label: "Relavant Event Property"
  }

  dimension: relevance {
    type: number
    sql: ${TABLE}.RELEVANCE ;;
    label: "Entity Relevance"
  }

  dimension: rp_entity_id {
    type: string
    sql: ${TABLE}.RP_ENTITY_ID ;;
    label: "RavenPack Entity ID"
    group_label: "RavenPack IDs"
  }

  dimension: rp_position_id {
    type: string
    sql: ${TABLE}.RP_POSITION_ID ;;
    label: "RavenPack Position ID"
    group_label: "RavenPack IDs"
  }

  dimension: rp_story_event_count {
    type: number
    sql: ${TABLE}.RP_STORY_EVENT_COUNT ;;
    label: "RavenPack Entity Count Per Story"
  }

  dimension: rp_story_event_index {
    type: number
    sql: ${TABLE}.RP_STORY_EVENT_INDEX ;;
    label: "RavenPack Entity Order Per Story"
  }

  dimension: rp_story_id {
    type: string
    sql: ${TABLE}.RP_STORY_ID ;;
    label: "News Story ID"
    group_label: "RavenPack IDs"
  }

  dimension: rpna_date_utc {
    type: string
    sql: ${TABLE}.RPNA_DATE_UTC ;;
    label: "RavenPack News Story"

  }


  dimension: rpna_time_utc {
    type: string
    sql: ${TABLE}.RPNA_TIME_UTC ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
    label: "News Source Identifier"
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}.SUB_TYPE ;;
    label: "News Story Subtype"
    group_label: "News Story Classification"
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.TOPIC ;;
    label: "News Story Topic"
    group_label: "News Story Classification"
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
    label: "News Story Type"
    group_label: "News Story Classification"
  }

  measure: count {
    type: count
    drill_fields: [entity_name, position_name]
  }
  ##############################

  measure: sum_AES {
    type: sum
    sql: CAST(${aes} AS INT64);;
  }

  measure: sum_distinct_AES {
    type: sum_distinct
    sql: CAST(${aes} AS INT64);;
  }

}
