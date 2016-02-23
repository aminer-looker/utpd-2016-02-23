- view: iso_3166_2
  sql_table_name: musicbrainz.iso_3166_2
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

