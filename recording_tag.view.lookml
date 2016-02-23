- view: recording_tag
  sql_table_name: musicbrainz.recording_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: recording
    type: number
    sql: ${TABLE}.recording

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

