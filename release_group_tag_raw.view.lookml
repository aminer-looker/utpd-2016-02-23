- view: release_group_tag_raw
  sql_table_name: musicbrainz.release_group_tag_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: is_upvote
    type: yesno
    sql: ${TABLE}.is_upvote

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

