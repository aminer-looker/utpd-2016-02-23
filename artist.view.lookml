- view: artist
  sql_table_name: musicbrainz.artist
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - dimension: begin_area
    type: number
    sql: ${TABLE}.begin_area

  - dimension: begin_date_day
    type: number
    sql: ${TABLE}.begin_date_day

  - dimension: begin_date_month
    type: number
    sql: ${TABLE}.begin_date_month

  - dimension: begin_date_year
    type: number
    sql: ${TABLE}.begin_date_year

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending

  - dimension: end_area
    type: number
    sql: ${TABLE}.end_area

  - dimension: end_date_day
    type: number
    sql: ${TABLE}.end_date_day

  - dimension: end_date_month
    type: number
    sql: ${TABLE}.end_date_month

  - dimension: end_date_year
    type: number
    sql: ${TABLE}.end_date_year

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended

  - dimension: gender
    type: number
    sql: ${TABLE}.gender

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: sort_name
    type: string
    sql: ${TABLE}.sort_name

  - dimension: type
    type: number
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, name, sort_name]

