- view: label_tag
  sql_table_name: musicbrainz.label_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension: label
    type: number
    sql: ${TABLE}.label

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

