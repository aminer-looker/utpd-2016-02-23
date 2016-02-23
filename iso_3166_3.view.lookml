- view: iso_3166_3
  sql_table_name: musicbrainz.iso_3166_3
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

