- view: area_annotation
  sql_table_name: musicbrainz.area_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - measure: count
    type: count
    drill_fields: []

