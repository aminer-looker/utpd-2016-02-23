- view: label_rating_raw
  sql_table_name: musicbrainz.label_rating_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - measure: count
    type: count
    drill_fields: []

