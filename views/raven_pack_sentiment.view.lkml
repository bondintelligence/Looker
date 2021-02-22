view: raven_pack_sentiment {
  #sql_table_name: `bi-model-development.looker_FINAL.RavenPack_Sentiment`;;

  derived_table: {
    sql:
      SELECT * FROM`bi-model-development.looker_FINAL.RavenPack_Sentiment` WHERE g_ens IS NOT NULL ;;
  }

  dimension: aes {
    type: number
    label: "Aggregate Event Sentiment"
    description: "A granular score between 0 and 100 that represents the ratio of positive events reported on an
    entity compared to the total count of events measured over a rolling 91-
    day window in a particular package (Dow Jones, Web or PR Editions)."
    sql: CAST(${TABLE}.AES AS INT64) ;;
  }
  measure: aes_measure {
    type: number
    label: "Aggregate Event Sentiment Measure"
    sql: ${TABLE}.AES ;;
  }

  dimension: aev {
    type: number
    label: "Aggregate Event Volume"
    description: "A value that represents the count of events for an entity (excluding neutral ones) measured over a
    rolling 91-day window in a particular package (Dow Jones, Web, or PR Editions)."
    sql: ${TABLE}.AEV ;;
  }

  dimension: country_code {
    type: string
    label: "ISO-3166 Country Code"
    description: "The two character ISO-3166 country code associated with an entity. Companies and organizations
    are associated with the country of incorporation, currencies are associated with the country where
    the central bank resides, and commodities are global and not associated with specific countries, so
    their COUNTRY_CODE label is 'XX'."
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: ens {
    type: number
    label: "Event Novelty Score"
    description: "A score between 0 and 100 that represents how 'new' or novel a news story is within a 24-hour
    time window across all news stories in a particular package (Dow Jones, Web or PR Editions)."
    sql: CAST(${TABLE}.ENS AS INT64) ;;
    group_label: "Event Novelty"
  }

  dimension: ens_elapsed {
    type: number
    label: "Event Novelty Elapsed Time"
    description: "The number of milliseconds between the first story and the current story in an event novelty chain.
    The first story in a chain will always be given a value of zero milliseconds."
    sql: ${TABLE}.ENS_ELAPSED ;;
    group_label: "Event Novelty"
  }

  # dimension: ens_key {
  #   type: string
  #   sql: ${TABLE}.ENS_KEY ;;
  #   description: "An alphanumeric identifier that provides a way to chain or relate stories about the same categorized
  #   event for the same entities."
  #   label: "Event Novelty Key"
  #   group_label: "Event Novelty"
  # }

  dimension: ens_similarity_gap {
    type: number
    sql: ${TABLE}.ENS_SIMILARITY_GAP ;;
    description: "The number of days since a similar story was detected in this RPNA edition (Dow Jones Edition,
    Web Edition, or PR Edition). Values range between 0.00000 and 100.00000 inclusive. The value
    100.00000 means that the most recent similar story occurred 100 or more days in the past. The
    value 0.00000 means a similar story exists with the exact same timestamp."
    label: "Event Novelty Similarity Gap"
    group_label: "Event Novelty"
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}.ENTITY_NAME;;
    description: "An alphanumeric identifier that provides a way to chain or relate stories about the same categorized
    event for the same entities."
    label: "Entity Name"
  }

  measure: entity_name_filtered {
    type: string
    sql: ${TABLE}.ENTITY_NAME WHERE ${TABLE}.G_ENS IS NOT NULL;;
    description: "An alphanumeric identifier that provides a way to chain or relate stories about the same categorized
    event for the same entities."
    label: "Entity Name Filtered"
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.ENTITY_TYPE ;;
    description: "The official canonical name for the entity as listed in the data files."
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
    sql: CAST(${TABLE}.ESS AS INT64) ;;
    description: "A granular score between 0 and 100 that represents the news sentiment for a given entity by
    measuring various proxies sampled from the news. The score is determined by systematically
    matching stories typically categorized by financial experts as having short-term positive or negative
    financial or economic impact. The strength of the score is derived from a collection of surveys where
    financial experts rated entity-specific events as conveying positive or negative sentiment and to
    what degree."
    label: "Event Sentiment Score"
  }

  # dimension: event_similarity_key {
  #   type: string
  #   description: "A unique 32 character key that identifies similar stories in the RPNA data. All similar stories across
  #   the entire archive and those arriving on the real-time feed share the same
  #   EVENT_SIMILARITY_KEY. Stories are similar when they are categorized with the same event and
  #   entities."
  #   sql: ${TABLE}.EVENT_SIMILARITY_KEY ;;
  #   label: "Event Similarity Key"
  # }

  dimension: g_ens {
    type: number
    sql: CAST(${TABLE}.G_ENS AS INT64) ;;
    label: "Global Event Novelty Score"
    description: "A score between 0 and 100 that represents how 'new' or novel a news story is within a 24-hour
    time window across all news providers covered by RavenPack. Any two stories that match the same
    event for the same entities will be considered similar according to the Global Event Novelty Score. The first story reporting
    a categorized event about one or more entities is considered to be the most novel and receives a
    score of 100. Subsequent stories from any news provider covered by RavenPack about the same
    event for the same entities receive scores following a decay function whose values are (100 75 56
    42 32 24 18 13 10 8 6 4 3 2 2 1 1 1 1 0 ...) based on the number of stories in the past 24-hour
    window. If a news story is published more than 24 hours after any other similar story, it will again
    be considered novel and start a separate chain with a score of 100."
    group_label: "Global Event Novelty"
  }

  dimension: g_ens_elapsed {
    type: number
    sql: ${TABLE}.G_ENS_ELAPSED ;;
    label: "Global Event Novelty Time Elapsed"
    description: "The number of milliseconds between the first story and the current story in an event novelty chain
    across all news providers covered by RavenPack. The first story in a chain will always be given a
    value of zero milliseconds."
    group_label: "Global Event Novelty"
  }

  # dimension: g_ens_key {
  #   type: string
  #   sql: ${TABLE}.G_ENS_KEY ;;
  #   label: "Global Event Novelty Key"
  #   description: "An alphanumeric identifier that provides a way to chain or relate stories about the same categorized
  #   event for the same entities."
  #   group_label: "Global Event Novelty"
  # }

  dimension: g_ens_similarity_gap {
    type: number
    sql: ${TABLE}.G_ENS_SIMILARITY_GAP ;;
    description: "The number of days since a similar story was detected across all product editions (Dow Jones
    Edition, Web Edition, and PR Edition). Values range between 0.00000 and 100.00000 inclusive.
    The value 100.00000 means that the most recent similar story occurred 100 or more days in the
    past. The value 0.00000 means a similar story exists with the exact same timestamp."
    label: "Global Event Novelty Similarity Gap"
    group_label: "Global Event Novelty"
  }

  dimension: news_type {
    type: string
    description: "Classifies the type of news story into one of five categories:
    1. HOT-NEWS-FLASH: A news article composed of a headline and no body text marked as
    breaking news during the editorial process.
    RavenPack News Analytics – User Guide v.4.0 Page 16
    CONFIDENTIAL
    2. NEWS-FLASH: A news article composed of a headline and no body text.
    3. FULL-ARTICLE: A news article composed of both a headline and one or more paragraphs
    of mostly textual material.
    4. PRESS-RELEASE: A corporate announcement originated by an entity and distributed via a
    news provider.
    5. TABULAR-MATERIAL: A news article composed of both a headline and one or more
    segments of mostly tabular data."
    sql: ${TABLE}.NEWS_TYPE ;;
    label: "News Story Format"
  }

  dimension: product_key {
    type: string
    sql: ${TABLE}.PRODUCT_KEY ;;
    description: "Identifies which subscription package contains the record."
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

  dimension: relevance {
    type: number
    description: "A score between 0-100 that indicates how strongly related the entity is to the underlying news story,
    with higher values indicating greater relevance. For any news story that mentions an entity,
    RavenPack provides a relevance score. A score of 0 means the entity was passively mentioned
    while a score of 100 means the entity was prominent in the news story. Values above 75 are
    considered significantly relevant."
    sql: CAST(${TABLE}.RELEVANCE AS INT64) ;;
    label: "Entity Relevance"
  }

  dimension: rp_entity_id {
    type: string
    sql: ${TABLE}.RP_ENTITY_ID ;;
    description: "A unique and permanent entity identifier assigned by RavenPack. Every entity tracked is assigned
    a unique identifier comprised of 6 alphanumeric characters."
    label: "RavenPack Entity ID"
    group_label: "RavenPack IDs"
  }



  dimension: rp_position_id {
    type: string
    sql: ${TABLE}.RP_POSITION_ID ;;
    description: "A unique and permanent identifier for positions assigned by RavenPack. Every position tracked is
    assigned a unique entity identifier comprised of 6 alphanumeric characters."
    label: "RavenPack Position ID"
    group_label: "RavenPack IDs"
  }


  dimension: rp_story_event_count {
    type: number
    sql: ${TABLE}.RP_STORY_EVENT_COUNT ;;
    description: "Represents the total entity records published by RavenPack per news story."
    label: "RavenPack Entity Count Per Story"
  }

  dimension: rp_story_event_index {
    type: number
    description: "Represents the order in which entity records are published by RavenPack per news story. This
    integer can be equal to or less than the RavenPack Entity Count Per Story. "
    sql: ${TABLE}.RP_STORY_EVENT_INDEX ;;
    label: "RavenPack Entity Order Per Story"
  }

  dimension: rp_story_id {
    type: string
    description: "An alphanumeric character identifier to uniquely identify each news story analyzed. This value is
    unique across all records. Example: 1FB2B3F5E99C4D3BCF59FDB3E8C8C9BD."
    sql: ${TABLE}.RP_STORY_ID ;;
    label: "News Story ID"
    group_label: "RavenPack IDs"
    primary_key: yes
  }

  dimension_group: rpna {
    type: time
    description: "RavenPack News Story Date and Time."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_month,
      month_name,
      year
    ]
    sql: ${TABLE}.RPNA_DATE_UTC ;;
    datatype: date
    convert_tz: no
    label: "RavenPack News Story"
  }


  dimension: source {
    type: string
    description: "A unique and permanent news source identifier assigned by RavenPack. Every news provider
    tracked is assigned a unique identifier comprised of 6 alphanumeric characters."
    sql: ${TABLE}.SOURCE ;;
    label: "News Source Identifier"
  }

  dimension: topic {
    type: string
    description: "A subject or theme of events detected by RavenPack. The highest level of the RavenPack Event
    Taxonomy."
    sql: ${TABLE}.TOPIC ;;
    label: "News Story Topic"
    group_label: "News Story Classification"
  }

  dimension: group {
    type: string
    description: "A collection of related events. The second highest level of the RavenPack Event Taxonomy."
    sql: ${TABLE}.`GROUP` ;;
    label: "News Story Group"
    group_label: "News Story Classification"
  }

  dimension: type {
    type: string
    description: "A class of events, the constituents of which share similar characteristics."
    sql: ${TABLE}.TYPE ;;
    label: "News Story Type"
    group_label: "News Story Classification"
  }

  dimension: sub_type {
    type: string
    description: "A subdivision of a particular class of events."
    sql: ${TABLE}.SUB_TYPE ;;
    label: "News Story Subtype"
    group_label: "News Story Classification"
  }

  dimension: property {
    type: string
    description: "A named attribute of an event such as an entity, role, or string extracted from a matched event type.
    When applicable, the role played by the entity in the story is detected and tagged."
    sql: ${TABLE}.PROPERTY ;;
    label: "News Story Property"
    group_label: "News Story Classification"
  }

  dimension: category {
    type: string
    label: "News Story Category"
    description: "A unique tag to label, identify, and recognize a particular type and property of an entity-specific
    news event."
    sql: ${TABLE}.CATEGORY ;;
    group_label: "News Story Classification"
  }

  dimension: AES_RANKING {
    type: string
    sql: ${TABLE}.AES ;;
    description: "Ranking of Event based off of average Aggregate Event Sentiment Scores."
    case: {
      when: {
        sql: CAST(${aes} AS INT64) >= 80 ;;
        label: "Excellent"
      }
      when: {
        sql: CAST(${aes} AS INT64) >= 60 and CAST(${aes} AS INT64) < 80;;
        label: "Good"
      }
      when: {
        sql: CAST(${aes} AS INT64) >= 40 and CAST(${aes} AS INT64) < 60;;
        label: "Fair"
      }
      when: {
        sql: CAST(${aes} AS INT64) >= 20 and CAST(${aes} AS INT64) < 40;;
        label: "Okay"
      }
      when: {
        sql: CAST(${aes} AS INT64) >= 0 and CAST(${aes} AS INT64) < 20;;
        label: "Poor"
      }
    }
    label: "Aggregate Event Sentiment Ranking"
  }

  measure: count {
    type: count
    drill_fields: [entity_name, rp_story_id, aes, ess, g_ens, ens, relevance]
  }
  ##############################

  measure: mean_AES {
    type:  average
    label: "Average Aggregate Event Sentiment"
    value_format: "0.00"
    sql: CAST(${aes} AS INT64);;
  }

  measure: mean_g_ens {
    type:  average
    value_format: "0.00"
    label: "Average Global Event Novelty Score"
    sql: CAST(${g_ens} AS INT64);;
  }
}
