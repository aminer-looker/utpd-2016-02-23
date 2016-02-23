- view: vote
  sql_table_name: musicbrainz.vote
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

  - dimension: superseded
    type: yesno
    sql: ${TABLE}.superseded

  - dimension: vote
    type: number
    sql: ${TABLE}.vote

  - dimension_group: vote
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.vote_time

  - measure: count
    type: count
    drill_fields: [id]

