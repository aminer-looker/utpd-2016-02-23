- view: editor_collection_release
  sql_table_name: musicbrainz.editor_collection_release
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - measure: count
    type: count
    drill_fields: []

