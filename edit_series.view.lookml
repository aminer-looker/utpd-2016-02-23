- view: edit_series
  sql_table_name: musicbrainz.edit_series
  fields:

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: series
    type: number
    sql: ${TABLE}.series

  - measure: count
    type: count
    drill_fields: []

