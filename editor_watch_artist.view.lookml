- view: editor_watch_artist
  sql_table_name: musicbrainz.editor_watch_artist
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - measure: count
    type: count
    drill_fields: []

