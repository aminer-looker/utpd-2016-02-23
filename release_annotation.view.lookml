- view: release_annotation
  sql_table_name: musicbrainz.release_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - measure: count
    type: count
    drill_fields: []

