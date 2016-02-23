- view: l_release_group_url
  sql_table_name: musicbrainz.l_release_group_url
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: entity0
    type: number
    sql: ${TABLE}.entity0

  - dimension: entity0_credit
    type: string
    sql: ${TABLE}.entity0_credit

  - dimension: entity1
    type: number
    sql: ${TABLE}.entity1

  - dimension: entity1_credit
    type: string
    sql: ${TABLE}.entity1_credit

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: link
    type: number
    sql: ${TABLE}.link

  - dimension: link_order
    type: number
    sql: ${TABLE}.link_order

  - measure: count
    type: count
    drill_fields: [id]

