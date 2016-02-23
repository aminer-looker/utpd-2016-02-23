- view: edit_recording
  sql_table_name: musicbrainz.edit_recording
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - measure: count
    type: count
    drill_fields: []

