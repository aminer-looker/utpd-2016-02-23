- view: replication_control
  sql_table_name: musicbrainz.replication_control
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: current_replication_sequence
    type: number
    sql: ${TABLE}.current_replication_sequence

  - dimension: current_schema_sequence
    type: number
    sql: ${TABLE}.current_schema_sequence

  - dimension_group: last_replication
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_replication_date

  - measure: count
    type: count
    drill_fields: [id]

