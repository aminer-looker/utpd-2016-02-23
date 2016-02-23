- view: recording_rating_raw
  sql_table_name: musicbrainz.recording_rating_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - measure: count
    type: count
    drill_fields: []

