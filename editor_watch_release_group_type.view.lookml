- view: editor_watch_release_group_type
  sql_table_name: musicbrainz.editor_watch_release_group_type
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: release_group_type
    type: number
    sql: ${TABLE}.release_group_type

  - measure: count
    type: count
    drill_fields: []

