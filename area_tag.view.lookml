- view: area_tag
  sql_table_name: musicbrainz.area_tag
  fields:

  - dimension: area
    type: number
    sql: ${TABLE}.area

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

  - measure: count
    type: count
    drill_fields: []

