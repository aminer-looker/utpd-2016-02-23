- view: iso_3166_1
  sql_table_name: musicbrainz.iso_3166_1
  fields:

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - dimension: code
    type: string
    sql: ${TABLE}.code

  - measure: count
    type: count
    drill_fields: []

