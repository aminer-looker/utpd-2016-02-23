- view: medium_format
  sql_table_name: musicbrainz.medium_format
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

  - dimension: has_discids
    type: yesno
    sql: ${TABLE}.has_discids

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: parent
    type: number
    sql: ${TABLE}.parent

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [id, name]

