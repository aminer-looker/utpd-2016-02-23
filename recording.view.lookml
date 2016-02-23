- view: recording
  sql_table_name: musicbrainz.recording
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: artist_credit
    type: number
    sql: ${TABLE}.artist_credit

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: length
    type: number
    sql: ${TABLE}.length

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: video
    type: yesno
    sql: ${TABLE}.video

  - measure: count
    type: count
    drill_fields: [id, name]

