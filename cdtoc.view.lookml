- view: cdtoc
  sql_table_name: musicbrainz.cdtoc
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: degraded
    type: yesno
    sql: ${TABLE}.degraded

  - dimension: discid
    type: string
    sql: ${TABLE}.discid

  - dimension: freedb_id
    type: string
    sql: ${TABLE}.freedb_id

  - dimension: leadout_offset
    type: number
    sql: ${TABLE}.leadout_offset

  - dimension: track_count
    type: number
    sql: ${TABLE}.track_count

  - dimension: track_offset
    type: string
    sql: ${TABLE}.track_offset

  - measure: count
    type: count
    drill_fields: [id]

