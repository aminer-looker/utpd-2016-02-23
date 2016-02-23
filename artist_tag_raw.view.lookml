- view: artist_tag_raw
  sql_table_name: musicbrainz.artist_tag_raw
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: is_upvote
    type: yesno
    sql: ${TABLE}.is_upvote

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

