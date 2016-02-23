- view: series_annotation
  sql_table_name: musicbrainz.series_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: series
    type: number
    sql: ${TABLE}.series

  - measure: count
    type: count
    drill_fields: []

