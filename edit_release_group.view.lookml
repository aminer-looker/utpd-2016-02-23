- view: edit_release_group
  sql_table_name: musicbrainz.edit_release_group
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - measure: count
    type: count
    drill_fields: []

