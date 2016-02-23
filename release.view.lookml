- view: release
  sql_table_name: musicbrainz.release
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: artist_credit
    type: number
    sql: ${TABLE}.artist_credit

  - dimension: barcode
    type: string
    sql: ${TABLE}.barcode

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension: language
    type: number
    sql: ${TABLE}.language

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: packaging
    type: number
    sql: ${TABLE}.packaging

  - dimension: quality
    type: number
    sql: ${TABLE}.quality

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - dimension: script
    type: number
    sql: ${TABLE}.script

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - measure: count
    type: count
    drill_fields: [id, name]

