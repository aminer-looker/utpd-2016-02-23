- view: annotation
  sql_table_name: musicbrainz.annotation
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: changelog
    type: string
    sql: ${TABLE}.changelog

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: text
    type: string
    sql: ${TABLE}.text

  - measure: count
    type: count
    drill_fields: [id]

