- view: area_containment
  sql_table_name: musicbrainz.area_containment
  fields:

  - dimension: descendant
    type: number
    sql: ${TABLE}.descendant

  - dimension: descendant_hierarchy
    type: string
    sql: ${TABLE}.descendant_hierarchy

  - dimension: parent
    type: number
    sql: ${TABLE}.parent

  - dimension: type
    type: number
    sql: ${TABLE}.type

  - dimension: type_name
    type: string
    sql: ${TABLE}.type_name

  - measure: count
    type: count
    drill_fields: [type_name]

