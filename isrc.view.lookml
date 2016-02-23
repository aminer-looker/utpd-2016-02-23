- view: isrc
  sql_table_name: musicbrainz.isrc
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: isrc
    type: string
    sql: ${TABLE}.isrc

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - dimension: source
    type: number
    sql: ${TABLE}.source

  - measure: count
    type: count
    drill_fields: [id]

