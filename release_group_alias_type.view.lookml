- view: release_group_alias_type
  sql_table_name: musicbrainz.release_group_alias_type
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

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: parent
    type: number
    sql: ${TABLE}.parent

  - measure: count
    type: count
    drill_fields: [id, name]

