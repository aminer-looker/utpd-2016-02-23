- view: recording_series
  sql_table_name: musicbrainz.recording_series
  fields:

  - dimension: link
    type: number
    sql: ${TABLE}.link

  - dimension: link_order
    type: number
    sql: ${TABLE}.link_order

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

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

