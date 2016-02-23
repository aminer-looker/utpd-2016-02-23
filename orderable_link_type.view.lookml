- view: orderable_link_type
  sql_table_name: musicbrainz.orderable_link_type
  fields:

  - dimension: direction
    type: number
    sql: ${TABLE}.direction

  - dimension: link_type
    type: number
    sql: ${TABLE}.link_type

  - measure: count
    type: count
    drill_fields: []

