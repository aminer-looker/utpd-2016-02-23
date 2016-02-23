- view: release_raw
  sql_table_name: musicbrainz.release_raw
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: added
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.added

  - dimension: artist
    type: string
    sql: ${TABLE}.artist

  - dimension: barcode
    type: string
    sql: ${TABLE}.barcode

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified

  - dimension: lookup_count
    type: number
    sql: ${TABLE}.lookup_count

  - dimension: modify_count
    type: number
    sql: ${TABLE}.modify_count

  - dimension: source
    type: number
    sql: ${TABLE}.source

  - dimension: title
    type: string
    sql: ${TABLE}.title

  - measure: count
    type: count
    drill_fields: [id]

