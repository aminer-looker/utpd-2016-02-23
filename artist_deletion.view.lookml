- view: artist_deletion
  sql_table_name: musicbrainz.artist_deletion
  fields:

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension: last_known_comment
    type: string
    sql: ${TABLE}.last_known_comment

  - dimension: last_known_name
    type: string
    sql: ${TABLE}.last_known_name

  - measure: count
    type: count
    drill_fields: [last_known_name]

