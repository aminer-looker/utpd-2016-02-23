- view: release_group_annotation
  sql_table_name: musicbrainz.release_group_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - measure: count
    type: count
    drill_fields: []

