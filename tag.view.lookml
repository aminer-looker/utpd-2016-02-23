- view: tag
  sql_table_name: musicbrainz.tag
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: ref_count
    type: number
    sql: ${TABLE}.ref_count

  - measure: count
    type: count
    drill_fields: [id, name]

