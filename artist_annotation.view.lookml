- view: artist_annotation
  sql_table_name: musicbrainz.artist_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - measure: count
    type: count
    drill_fields: []

