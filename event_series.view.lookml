- view: event_series
  sql_table_name: musicbrainz.event_series
  fields:

  - dimension: event
    type: number
    sql: ${TABLE}.event

  - dimension: link
    type: number
    sql: ${TABLE}.link

  - dimension: link_order
    type: number
    sql: ${TABLE}.link_order

  - dimension: relationship
    type: number
    sql: ${TABLE}.relationship

  - dimension: series
    type: number
    sql: ${TABLE}.series

  - dimension: text_value
    type: string
    sql: ${TABLE}.text_value

  - measure: count
    type: count
    drill_fields: []

