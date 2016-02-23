- view: editor_preference
  sql_table_name: musicbrainz.editor_preference
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: value
    type: string
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [id, name]

