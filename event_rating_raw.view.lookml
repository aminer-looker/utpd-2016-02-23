- view: event_rating_raw
  sql_table_name: musicbrainz.event_rating_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: event
    type: number
    sql: ${TABLE}.event

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - measure: count
    type: count
    drill_fields: []

