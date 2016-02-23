- view: link
  sql_table_name: musicbrainz.link
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: attribute_count
    type: number
    sql: ${TABLE}.attribute_count

  - dimension: begin_date_day
    type: number
    sql: ${TABLE}.begin_date_day

  - dimension: begin_date_month
    type: number
    sql: ${TABLE}.begin_date_month

  - dimension: begin_date_year
    type: number
    sql: ${TABLE}.begin_date_year

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

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

  - dimension: link_type
    type: number
    sql: ${TABLE}.link_type

  - measure: count
    type: count
    drill_fields: [id]

