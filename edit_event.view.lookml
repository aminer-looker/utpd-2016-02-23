- view: edit_event
  sql_table_name: musicbrainz.edit_event
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: event
    type: number
    sql: ${TABLE}.event

  - measure: count
    type: count
    drill_fields: []

