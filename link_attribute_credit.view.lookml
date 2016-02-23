- view: link_attribute_credit
  sql_table_name: musicbrainz.link_attribute_credit
  fields:

  - dimension: attribute_type
    type: number
    sql: ${TABLE}.attribute_type

  - dimension: credited_as
    type: string
    sql: ${TABLE}.credited_as

  - dimension: link
    type: number
    sql: ${TABLE}.link

  - measure: count
    type: count
    drill_fields: []

