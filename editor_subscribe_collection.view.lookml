- view: editor_subscribe_collection
  sql_table_name: musicbrainz.editor_subscribe_collection
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: available
    type: yesno
    sql: ${TABLE}.available

  - dimension: collection
    type: number
    sql: ${TABLE}.collection

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: last_edit_sent
    type: number
    sql: ${TABLE}.last_edit_sent

  - dimension: last_seen_name
    type: string
    sql: ${TABLE}.last_seen_name

  - measure: count
    type: count
    drill_fields: [id, last_seen_name]

