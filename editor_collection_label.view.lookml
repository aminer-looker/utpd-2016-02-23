- view: editor_collection_label
  sql_table_name: musicbrainz.editor_collection_label
  fields:

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - measure: count
    type: count
    drill_fields: []

