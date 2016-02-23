- view: tag_relation
  sql_table_name: musicbrainz.tag_relation
  fields:

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: tag1
    type: number
    sql: ${TABLE}.tag1

  - dimension: tag2
    type: number
    sql: ${TABLE}.tag2

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - measure: count
    type: count
    drill_fields: []

