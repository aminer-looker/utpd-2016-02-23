- view: editor_language
  sql_table_name: musicbrainz.editor_language
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: fluency
    type: string
    sql: ${TABLE}.fluency

  - dimension: language
    type: number
    sql: ${TABLE}.language

  - measure: count
    type: count
    drill_fields: []

