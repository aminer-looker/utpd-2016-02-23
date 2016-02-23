- view: work_series
  sql_table_name: musicbrainz.work_series
  fields:

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

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

