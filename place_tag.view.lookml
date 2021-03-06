- view: place_tag
  sql_table_name: musicbrainz.place_tag
  fields:

  - dimension: stored_count
    type: number
    sql: ${TABLE}.count

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: place
    type: number
    sql: ${TABLE}.place

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

