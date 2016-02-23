- view: release_group_tag
  sql_table_name: musicbrainz.release_group_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

