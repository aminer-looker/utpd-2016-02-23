- view: editor_collection_place
  sql_table_name: musicbrainz.editor_collection_place
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: place
    type: number
    sql: ${TABLE}.place

  - measure: count
    type: count
    drill_fields: []

