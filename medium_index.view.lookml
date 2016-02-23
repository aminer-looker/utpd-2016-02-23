- view: medium_index
  sql_table_name: musicbrainz.medium_index
  fields:

  - dimension: medium
    type: number
    sql: ${TABLE}.medium

  - dimension: toc
    type: string
    sql: ${TABLE}.toc

  - measure: count
    type: count
    drill_fields: []

