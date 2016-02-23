- view: link_attribute
  sql_table_name: musicbrainz.link_attribute
  fields:

  - dimension: attribute_type
    type: number
    sql: ${TABLE}.attribute_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: link
    type: number
    sql: ${TABLE}.link

  - measure: count
    type: count
    drill_fields: []

