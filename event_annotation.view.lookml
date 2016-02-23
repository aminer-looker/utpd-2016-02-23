- view: event_annotation
  sql_table_name: musicbrainz.event_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: event
    type: number
    sql: ${TABLE}.event

  - measure: count
    type: count
    drill_fields: []

