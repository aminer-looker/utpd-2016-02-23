- view: artist_rating_raw
  sql_table_name: musicbrainz.artist_rating_raw
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - measure: count
    type: count
    drill_fields: []

