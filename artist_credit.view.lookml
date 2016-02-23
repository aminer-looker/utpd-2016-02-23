- view: artist_credit
  sql_table_name: musicbrainz.artist_credit
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: artist_count
    type: number
    sql: ${TABLE}.artist_count

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: ref_count
    type: number
    sql: ${TABLE}.ref_count

  - measure: count
    type: count
    drill_fields: [id, name]

