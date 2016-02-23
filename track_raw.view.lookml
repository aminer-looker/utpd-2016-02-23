- view: track_raw
  sql_table_name: musicbrainz.track_raw
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: artist
    type: string
    sql: ${TABLE}.artist

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - dimension: sequence
    type: number
    sql: ${TABLE}.sequence

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - measure: count
    type: count
    drill_fields: [id]

