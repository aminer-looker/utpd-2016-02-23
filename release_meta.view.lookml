- view: release_meta
  sql_table_name: musicbrainz.release_meta
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: amazon_asin
    type: string
    sql: ${TABLE}.amazon_asin

  - dimension: amazon_store
    type: string
    sql: ${TABLE}.amazon_store

  - dimension: cover_art_presence
    type: string
    sql: ${TABLE}.cover_art_presence

  - dimension_group: date_added
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date_added

  - dimension: info_url
    type: string
    sql: ${TABLE}.info_url

  - measure: count
    type: count
    drill_fields: [id]

