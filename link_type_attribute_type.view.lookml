- view: link_type_attribute_type
  sql_table_name: musicbrainz.link_type_attribute_type
  fields:

  - dimension: attribute_type
    type: number
    sql: ${TABLE}.attribute_type

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: link_type
    type: number
    sql: ${TABLE}.link_type

  - dimension: max
    type: number
    sql: ${TABLE}.max

  - dimension: min
    type: number
    sql: ${TABLE}.min

  - measure: count
    type: count
    drill_fields: []

