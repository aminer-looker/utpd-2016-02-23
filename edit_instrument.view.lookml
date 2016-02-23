- view: edit_instrument
  sql_table_name: musicbrainz.edit_instrument
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: instrument
    type: number
    sql: ${TABLE}.instrument

  - measure: count
    type: count
    drill_fields: []

