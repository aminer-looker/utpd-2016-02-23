- view: work_attribute
  sql_table_name: musicbrainz.work_attribute
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: work
    type: number
    sql: ${TABLE}.work

  - dimension: work_attribute_text
    type: string
    sql: ${TABLE}.work_attribute_text

  - dimension: work_attribute_type
    type: number
    sql: ${TABLE}.work_attribute_type

  - dimension: work_attribute_type_allowed_value
    type: number
    sql: ${TABLE}.work_attribute_type_allowed_value

  - measure: count
    type: count
    drill_fields: [id]

