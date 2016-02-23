- view: editor_watch_release_status
  sql_table_name: musicbrainz.editor_watch_release_status
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: release_status
    type: number
    sql: ${TABLE}.release_status

  - measure: count
    type: count
    drill_fields: []

