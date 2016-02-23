- view: release_label
  sql_table_name: musicbrainz.release_label
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: catalog_number
    type: string
    sql: ${TABLE}.catalog_number

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - measure: count
    type: count
    drill_fields: [id]

