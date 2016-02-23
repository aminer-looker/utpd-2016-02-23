- view: url
  sql_table_name: musicbrainz.url
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

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

  - dimension: url
    type: string
    sql: ${TABLE}.url

  - measure: count
    type: count
    drill_fields: [id]

