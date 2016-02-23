- view: work_tag
  sql_table_name: musicbrainz.work_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: []

