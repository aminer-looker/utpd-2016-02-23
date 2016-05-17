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

  - dimension: link_type
    type: number
    sql: ${TABLE}.link_type
  
  - dimension_group: begin
    type: time
    timeframes: [year]
    sql: to_date(${TABLE}.begin_date_year || '', 'YYYY')

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended
  
  - dimension_group: end
    type: time
    timeframes: [year]
    sql: to_date(${TABLE}.end_date_year || '', 'YYYY')

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - measure: count
    type: count
    drill_fields: [id]

