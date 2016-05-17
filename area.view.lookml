- view: area
  sql_table_name: musicbrainz.area
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    hidden: true

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: edits_pending
    type: number
    sql: ${TABLE}.edits_pending
    hidden: true

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended
    hidden: true

  - dimension: gid
    type: string
    sql: ${TABLE}.gid
    hidden: true

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: type_id
    type: number
    sql: ${TABLE}.type
    hidden: true
  
  - dimension: type
    sql: ${area_type.name}

  - measure: count
    type: count
    drill_fields: [id, name]

