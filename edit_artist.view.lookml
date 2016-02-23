- view: edit_artist
  sql_table_name: musicbrainz.edit_artist
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - measure: count
    type: count
    drill_fields: []

