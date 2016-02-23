- view: label_ipi
  sql_table_name: musicbrainz.label_ipi
  fields:

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

  - dimension: label
    type: number
    sql: ${TABLE}.label

  - measure: count
    type: count
    drill_fields: []

