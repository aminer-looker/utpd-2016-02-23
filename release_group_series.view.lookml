- view: release_group_series
  sql_table_name: musicbrainz.release_group_series
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

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - dimension: series
    type: number
    sql: ${TABLE}.series

  - dimension: text_value
    type: string
    sql: ${TABLE}.text_value

  - measure: count
    type: count
    drill_fields: []

