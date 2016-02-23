- view: link_attribute_text_value
  sql_table_name: musicbrainz.link_attribute_text_value
  fields:

  - dimension: attribute_type
    type: number
    sql: ${TABLE}.attribute_type

  - dimension: link
    type: number
    sql: ${TABLE}.link

  - dimension: text_value
    type: string
    sql: ${TABLE}.text_value

  - measure: count
    type: count
    drill_fields: []

