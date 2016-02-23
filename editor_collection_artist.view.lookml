- view: editor_collection_artist
  sql_table_name: musicbrainz.editor_collection_artist
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - measure: count
    type: count
    drill_fields: []

