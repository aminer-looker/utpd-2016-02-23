- view: editor_collection_series
  sql_table_name: musicbrainz.editor_collection_series
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: series
    type: number
    sql: ${TABLE}.series

  - measure: count
    type: count
    drill_fields: []

