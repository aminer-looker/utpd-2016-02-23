- view: editor_collection_recording
  sql_table_name: musicbrainz.editor_collection_recording
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - measure: count
    type: count
    drill_fields: []

