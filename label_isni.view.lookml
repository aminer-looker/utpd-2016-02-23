- view: label_isni
  sql_table_name: musicbrainz.label_isni
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: isni
    type: string
    sql: ${TABLE}.isni

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - measure: count
    type: count
    drill_fields: []

