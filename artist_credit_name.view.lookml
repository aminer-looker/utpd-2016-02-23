- view: artist_credit_name
  sql_table_name: musicbrainz.artist_credit_name
  fields:

  - dimension: artist
    type: number
    sql: ${TABLE}.artist

  - dimension: artist_credit
    type: number
    sql: ${TABLE}.artist_credit

  - dimension: join_phrase
    type: string
    sql: ${TABLE}.join_phrase

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: position
    type: number
    sql: ${TABLE}.position

  - measure: count
    type: count
    drill_fields: [name]

