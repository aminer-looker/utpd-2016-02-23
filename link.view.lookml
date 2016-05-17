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
  
  - dimension_group: begin_date
    type: time
    timeframes: [year, month, date]
    sql: make_date(${TABLE}.begin_date_year, ${TABLE}.begin_date_month, ${TABLE}.begin_date_day)

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created
  
  - dimension_group: end_date
    type: time
    timeframes: [year, month, date]
    sql: make_date(${TABLE}.end_date_year, ${TABLE}.end_date_month, ${TABLE}.end_date_day)

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended

  - dimension: link_type
    type: number
    sql: ${TABLE}.link_type

  - measure: count
    type: count
    drill_fields: [id]

