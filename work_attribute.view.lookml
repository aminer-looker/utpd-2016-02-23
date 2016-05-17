- view: work_attribute
  sql_table_name: musicbrainz.work_attribute
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    hidden: true

  - dimension: work_id
    type: number
    sql: ${TABLE}.work
    hidden: true

  - dimension: text
    type: string
    sql: ${TABLE}.work_attribute_text

  - dimension: type_id
    sql: ${TABLE}.work_attribute_type
    hidden: true
  
  - dimension: type
    sql: ${work_attribute_type.name}

  - dimension: work_attribute_type_allowed_value
    type: number
    sql: ${TABLE}.work_attribute_type_allowed_value
    hidden: true

  - measure: count
    type: count
    drill_fields: [id]

