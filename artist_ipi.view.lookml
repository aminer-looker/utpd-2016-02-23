- view: artist_ipi
  sql_table_name: musicbrainz.artist_ipi
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: ipi
    type: string
    sql: ${TABLE}.ipi

  - measure: count
    type: count
    drill_fields: []

