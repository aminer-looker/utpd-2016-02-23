- view: editor_collection_instrument
  sql_table_name: musicbrainz.editor_collection_instrument
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: instrument
    type: number
    sql: ${TABLE}.instrument

  - measure: count
    type: count
    drill_fields: []

