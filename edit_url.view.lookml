- view: edit_url
  sql_table_name: musicbrainz.edit_url
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: url
    type: number
    sql: ${TABLE}.url

  - measure: count
    type: count
    drill_fields: []

