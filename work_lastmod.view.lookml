- view: work_lastmod
  sql_table_name: musicbrainz.work_lastmod
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified

  - measure: count
    type: count
    drill_fields: [id]

