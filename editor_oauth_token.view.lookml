- view: editor_oauth_token
  sql_table_name: musicbrainz.editor_oauth_token
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: access_token
    type: string
    sql: ${TABLE}.access_token

  - dimension: application
    type: number
    sql: ${TABLE}.application

  - dimension: authorization_code
    type: string
    sql: ${TABLE}.authorization_code

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension_group: expire
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expire_time

  - dimension_group: granted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.granted

  - dimension: refresh_token
    type: string
    sql: ${TABLE}.refresh_token

  - dimension: scope
    type: number
    sql: ${TABLE}.scope

  - measure: count
    type: count
    drill_fields: [id]

