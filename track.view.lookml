- view: track
  sql_table_name: musicbrainz.track
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: artist_credit
    type: number
    sql: ${TABLE}.artist_credit

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension: is_data_track
    type: yesno
    sql: ${TABLE}.is_data_track

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: length
    type: number
    sql: ${TABLE}.length

  - dimension: medium
    type: number
    sql: ${TABLE}.medium

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: number
    type: string
    sql: ${TABLE}.number

  - dimension: position
    type: number
    sql: ${TABLE}.position

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - measure: count
    type: count
    drill_fields: [id, name]

