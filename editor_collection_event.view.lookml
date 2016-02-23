- view: editor_collection_event
  sql_table_name: musicbrainz.editor_collection_event
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: event
    type: number
    sql: ${TABLE}.event

  - measure: count
    type: count
    drill_fields: []

