- view: event_tag
  sql_table_name: musicbrainz.event_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension: event
    type: number
    sql: ${TABLE}.event

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

