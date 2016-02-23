- view: release_event
  sql_table_name: musicbrainz.release_event
  fields:

  - dimension: country
    type: number
    sql: ${TABLE}.country

  - dimension: date_day
    type: number
    sql: ${TABLE}.date_day

  - dimension: date_month
    type: number
    sql: ${TABLE}.date_month

  - dimension: date_year
    type: number
    sql: ${TABLE}.date_year

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - measure: count
    type: count
    drill_fields: []

