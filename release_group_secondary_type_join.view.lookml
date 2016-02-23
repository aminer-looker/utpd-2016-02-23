- view: release_group_secondary_type_join
  sql_table_name: musicbrainz.release_group_secondary_type_join
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: release_group
    type: number
    sql: ${TABLE}.release_group

  - dimension: secondary_type
    type: number
    sql: ${TABLE}.secondary_type

  - measure: count
    type: count
    drill_fields: []

