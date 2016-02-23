- view: country_area
  sql_table_name: musicbrainz.country_area
  fields:

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - measure: count
    type: count
    drill_fields: []

