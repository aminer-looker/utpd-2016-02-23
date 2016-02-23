- view: instrument_tag
  sql_table_name: musicbrainz.instrument_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension: instrument
    type: number
    sql: ${TABLE}.instrument

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

