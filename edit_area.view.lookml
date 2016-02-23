- view: edit_area
  sql_table_name: musicbrainz.edit_area
  fields:

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - measure: count
    type: count
    drill_fields: []

