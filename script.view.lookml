- view: script
  sql_table_name: musicbrainz.script
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: frequency
    type: number
    sql: ${TABLE}.frequency

  - dimension: iso_code
    type: string
    sql: ${TABLE}.iso_code

  - dimension: iso_number
    type: string
    sql: ${TABLE}.iso_number

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [id, name]

