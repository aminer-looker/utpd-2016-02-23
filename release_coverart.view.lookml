- view: release_coverart
  sql_table_name: musicbrainz.release_coverart
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: cover_art_url
    type: string
    sql: ${TABLE}.cover_art_url

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - measure: count
    type: count
    drill_fields: [id]

