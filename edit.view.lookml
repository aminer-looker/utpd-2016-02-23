- view: edit
  sql_table_name: musicbrainz.edit
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: autoedit
    type: number
    sql: ${TABLE}.autoedit

  - dimension_group: close
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.close_time

  - dimension: data
    type: string
    sql: ${TABLE}.data

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension_group: expire
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expire_time

  - dimension: language
    type: number
    sql: ${TABLE}.language

  - dimension: no_votes
    type: number
    sql: ${TABLE}.no_votes

  - dimension_group: open
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.open_time

  - dimension: quality
    type: number
    sql: ${TABLE}.quality

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: type
    type: number
    sql: ${TABLE}.type

  - dimension: yes_votes
    type: number
    sql: ${TABLE}.yes_votes

  - measure: count
    type: count
    drill_fields: [id]

