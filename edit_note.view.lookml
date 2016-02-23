- view: edit_note
  sql_table_name: musicbrainz.edit_note
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: edit
    type: number
    sql: ${TABLE}.edit

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension_group: post
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.post_time

  - dimension: text
    type: string
    sql: ${TABLE}.text

  - measure: count
    type: count
    drill_fields: [id]

