- view: instrument_annotation
  sql_table_name: musicbrainz.instrument_annotation
  fields:

  - dimension: annotation
    type: number
    sql: ${TABLE}.annotation

  - dimension: instrument
    type: number
    sql: ${TABLE}.instrument

  - measure: count
    type: count
    drill_fields: []

