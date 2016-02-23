- view: editor_collection_work
  sql_table_name: musicbrainz.editor_collection_work
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

