- view: edit_release
  sql_table_name: musicbrainz.edit_release
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - measure: count
    type: count
    drill_fields: []

