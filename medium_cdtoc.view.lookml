- view: medium_cdtoc
  sql_table_name: musicbrainz.medium_cdtoc
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: cdtoc
    type: number
    sql: ${TABLE}.cdtoc

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: medium
    type: number
    sql: ${TABLE}.medium

  - measure: count
    type: count
    drill_fields: [id]

