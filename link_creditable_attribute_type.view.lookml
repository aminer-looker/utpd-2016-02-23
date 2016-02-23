- view: link_creditable_attribute_type
  sql_table_name: musicbrainz.link_creditable_attribute_type
  fields:

  - dimension: attribute_type
    type: number
    sql: ${TABLE}.attribute_type

  - measure: count
    type: count
    drill_fields: []

