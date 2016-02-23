- view: series
  sql_table_name: musicbrainz.series
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: ordering_attribute
    type: number
    sql: ${TABLE}.ordering_attribute

  - dimension: ordering_type
    type: number
    sql: ${TABLE}.ordering_type

  - dimension: type
    type: number
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, name]

