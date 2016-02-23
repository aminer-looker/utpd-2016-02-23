- view: editor_collection_area
  sql_table_name: musicbrainz.editor_collection_area
  fields:

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - measure: count
    type: count
    drill_fields: []

