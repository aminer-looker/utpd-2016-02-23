- view: instrument_tag_raw
  sql_table_name: musicbrainz.instrument_tag_raw
  fields:

  - dimension: editor
    type: number
    sql: ${TABLE}.editor

  - dimension: instrument
    type: number
    sql: ${TABLE}.instrument

  - dimension: is_upvote
    type: yesno
    sql: ${TABLE}.is_upvote

  - dimension: tag
    type: number
    sql: ${TABLE}.tag

  - measure: count
    type: count
    drill_fields: []

