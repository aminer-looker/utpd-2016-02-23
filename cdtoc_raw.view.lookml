- view: cdtoc_raw
  sql_table_name: musicbrainz.cdtoc_raw
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: discid
    type: string
    sql: ${TABLE}.discid

  - dimension: leadout_offset
    type: number
    sql: ${TABLE}.leadout_offset

  - dimension: release
    type: number
    sql: ${TABLE}.release

  - dimension: track_count
    type: number
    sql: ${TABLE}.track_count

  - dimension: track_offset
    type: string
    sql: ${TABLE}.track_offset

  - measure: count
    type: count
    drill_fields: [id]

