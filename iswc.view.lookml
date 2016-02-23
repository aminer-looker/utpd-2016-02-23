- view: iswc
  sql_table_name: musicbrainz.iswc
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: iswc
    type: string
    sql: ${TABLE}.iswc

  - dimension: source
    type: number
    sql: ${TABLE}.source

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - measure: count
    type: count
    drill_fields: [id]

