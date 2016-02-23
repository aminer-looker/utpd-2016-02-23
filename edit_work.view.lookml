- view: edit_work
  sql_table_name: musicbrainz.edit_work
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

