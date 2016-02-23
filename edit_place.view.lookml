- view: edit_place
  sql_table_name: musicbrainz.edit_place
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: place
    type: number
    sql: ${TABLE}.place

  - measure: count
    type: count
    drill_fields: []

