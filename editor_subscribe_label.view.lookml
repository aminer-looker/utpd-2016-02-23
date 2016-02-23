- view: editor_subscribe_label
  sql_table_name: musicbrainz.editor_subscribe_label
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - dimension: last_edit_sent
    type: number
    sql: ${TABLE}.last_edit_sent

  - measure: count
    type: count
    drill_fields: [id]

