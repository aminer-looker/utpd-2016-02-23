- view: work_annotation
  sql_table_name: musicbrainz.work_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

