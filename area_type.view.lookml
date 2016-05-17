- view: area_type
  sql_table_name: musicbrainz.area_type
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: child_order
    type: number
    hidden: true
    sql: ${TABLE}.child_order

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: parent
    type: number
    hidden: true
    sql: ${TABLE}.parent

  - measure: count
    type: count
    drill_fields: [id, name]

