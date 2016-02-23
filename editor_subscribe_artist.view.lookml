- view: editor_subscribe_artist
  sql_table_name: musicbrainz.editor_subscribe_artist
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: last_edit_sent
    type: number
    sql: ${TABLE}.last_edit_sent

  - measure: count
    type: count
    drill_fields: [id]

