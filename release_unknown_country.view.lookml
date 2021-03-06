- view: release_unknown_country
  sql_table_name: musicbrainz.release_unknown_country
  fields:

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

