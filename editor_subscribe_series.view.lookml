- view: editor_subscribe_series
  sql_table_name: musicbrainz.editor_subscribe_series
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: last_edit_sent
    type: number
    sql: ${TABLE}.last_edit_sent

  - dimension: series
    type: number
    sql: ${TABLE}.series

  - measure: count
    type: count
    drill_fields: [id]

