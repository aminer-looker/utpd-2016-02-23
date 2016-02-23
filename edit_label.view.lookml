- view: edit_label
  sql_table_name: musicbrainz.edit_label
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - measure: count
    type: count
    drill_fields: []

