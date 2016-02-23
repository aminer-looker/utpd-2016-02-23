- view: medium
  sql_table_name: musicbrainz.medium
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: format
    type: number
    sql: ${TABLE}.format

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: position
    type: number
    sql: ${TABLE}.position

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - dimension: track_count
    type: number
    sql: ${TABLE}.track_count

  - measure: count
    type: count
    drill_fields: [id, name]

