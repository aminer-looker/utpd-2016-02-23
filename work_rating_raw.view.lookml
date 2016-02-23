- view: work_rating_raw
  sql_table_name: musicbrainz.work_rating_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

