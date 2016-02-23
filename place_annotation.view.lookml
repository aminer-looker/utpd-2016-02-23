- view: place_annotation
  sql_table_name: musicbrainz.place_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: place
    type: number
    sql: ${TABLE}.place

  - measure: count
    type: count
    drill_fields: []

