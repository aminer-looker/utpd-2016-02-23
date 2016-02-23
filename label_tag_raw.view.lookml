- view: label_tag_raw
  sql_table_name: musicbrainz.label_tag_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: is_upvote
    type: yesno
    sql: ${TABLE}.is_upvote

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

