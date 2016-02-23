- view: work_attribute_type_allowed_value
  sql_table_name: musicbrainz.work_attribute_type_allowed_value
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: child_order
    type: number
    sql: ${TABLE}.child_order

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: parent
    type: number
    sql: ${TABLE}.parent

  - dimension: value
    type: string
    sql: ${TABLE}.value

  - dimension: work_attribute_type
    type: number
    sql: ${TABLE}.work_attribute_type

  - measure: count
    type: count
    drill_fields: [id]

