- view: language
  sql_table_name: musicbrainz.language
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: frequency
    type: number
    sql: ${TABLE}.frequency

  - dimension: iso_code_1
    type: string
    sql: ${TABLE}.iso_code_1

  - dimension: iso_code_2b
    type: string
    sql: ${TABLE}.iso_code_2b

  - dimension: iso_code_2t
    type: string
    sql: ${TABLE}.iso_code_2t

  - dimension: iso_code_3
    type: string
    sql: ${TABLE}.iso_code_3

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [id, name]

