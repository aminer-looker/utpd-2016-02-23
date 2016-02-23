- view: editor_subscribe_artist_deleted
  sql_table_name: musicbrainz.editor_subscribe_artist_deleted
  fields:

  - dimension: deleted_by
    type: number
    sql: ${TABLE}.deleted_by

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - measure: count
    type: count
    drill_fields: []

