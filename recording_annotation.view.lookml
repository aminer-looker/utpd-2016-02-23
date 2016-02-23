- view: recording_annotation
  sql_table_name: musicbrainz.recording_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - measure: count
    type: count
    drill_fields: []

