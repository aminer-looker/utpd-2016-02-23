- view: artist_isni
  sql_table_name: musicbrainz.artist_isni
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: isni
    type: string
    sql: ${TABLE}.isni

  - measure: count
    type: count
    drill_fields: []

