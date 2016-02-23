- view: editor_subscribe_editor
  sql_table_name: musicbrainz.editor_subscribe_editor
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

  - dimension: subscribed_editor
    type: number
    sql: ${TABLE}.subscribed_editor

  - measure: count
    type: count
    drill_fields: [id]

