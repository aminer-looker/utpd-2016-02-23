- view: editor_collection
  sql_table_name: musicbrainz.editor_collection
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: gid
    type: string
    sql: ${TABLE}.gid

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: public
    type: yesno
    sql: ${TABLE}.public

  - dimension: type
    type: number
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, name]

