- view: work_meta
  sql_table_name: musicbrainz.work_meta
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    hidden: true

  - dimension: rating
    type: number
    sql: ${TABLE}.rating

  - dimension: rating_count
    type: number
    sql: ${TABLE}.rating_count

  - measure: count
    type: count
    drill_fields: [id]

