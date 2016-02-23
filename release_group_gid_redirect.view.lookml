- view: release_group_gid_redirect
  sql_table_name: musicbrainz.release_group_gid_redirect
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension: new_id
    type: number
    sql: ${TABLE}.new_id

  - measure: count
    type: count
    drill_fields: []

