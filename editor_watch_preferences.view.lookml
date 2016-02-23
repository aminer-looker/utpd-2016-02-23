- view: editor_watch_preferences
  sql_table_name: musicbrainz.editor_watch_preferences
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension_group: last_checked
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_checked

  - dimension: notification_timeframe
    type: string
    sql: ${TABLE}.notification_timeframe

  - dimension: notify_via_email
    type: yesno
    sql: ${TABLE}.notify_via_email

  - measure: count
    type: count
    drill_fields: []

