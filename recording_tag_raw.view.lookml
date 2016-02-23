- view: recording_tag_raw
  sql_table_name: musicbrainz.recording_tag_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: is_upvote
    type: yesno
    sql: ${TABLE}.is_upvote

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

