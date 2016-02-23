- view: label_annotation
  sql_table_name: musicbrainz.label_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - measure: count
    type: count
    drill_fields: []

