- view: link_type
  sql_table_name: musicbrainz.link_type
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: child_order
    type: number
    sql: ${TABLE}.child_order

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: entity0_cardinality
    type: number
    sql: ${TABLE}.entity0_cardinality

  - dimension: entity1_cardinality
    type: number
    sql: ${TABLE}.entity1_cardinality

  - dimension: entity_type0
    type: string
    sql: ${TABLE}.entity_type0

  - dimension: entity_type1
    type: string
    sql: ${TABLE}.entity_type1

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension: has_dates
    type: yesno
    sql: ${TABLE}.has_dates

  - dimension: is_deprecated
    type: yesno
    sql: ${TABLE}.is_deprecated

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: link_phrase
    type: string
    sql: ${TABLE}.link_phrase

  - dimension: long_link_phrase
    type: string
    sql: ${TABLE}.long_link_phrase

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: parent
    type: number
    sql: ${TABLE}.parent

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - dimension: reverse_link_phrase
    type: string
    sql: ${TABLE}.reverse_link_phrase

  - measure: count
    type: count
    drill_fields: [id, name]

