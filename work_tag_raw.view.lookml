- view: work_tag_raw
  sql_table_name: musicbrainz.work_tag_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: is_upvote
    type: yesno
    sql: ${TABLE}.is_upvote

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

