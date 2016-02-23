- view: release_group_rating_raw
  sql_table_name: musicbrainz.release_group_rating_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - measure: count
    type: count
    drill_fields: []

