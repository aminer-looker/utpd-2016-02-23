- view: release_group_meta
  sql_table_name: musicbrainz.release_group_meta
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: first_release_date_day
    type: number
    sql: ${TABLE}.first_release_date_day

  - dimension: first_release_date_month
    type: number
    sql: ${TABLE}.first_release_date_month

  - dimension: first_release_date_year
    type: number
    sql: ${TABLE}.first_release_date_year

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: rating_count
    type: number
    sql: ${TABLE}.rating_count

  - dimension: release_count
    type: number
    sql: ${TABLE}.release_count

  - measure: count
    type: count
    drill_fields: [id]

