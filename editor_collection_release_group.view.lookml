- view: editor_collection_release_group
  sql_table_name: musicbrainz.editor_collection_release_group
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - measure: count
    type: count
    drill_fields: []

