- view: work_attribute_type
  sql_table_name: musicbrainz.work_attribute_type
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: child_order
    type: number
    sql: ${TABLE}.child_order

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: free_text
    type: yesno
    sql: ${TABLE}.free_text

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: parent
    type: number
    sql: ${TABLE}.parent

  - measure: count
    type: count
    drill_fields: [id, name]

