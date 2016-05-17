- view: event
  sql_table_name: musicbrainz.event
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    hidden: true

  - dimension: cancelled
    type: yesno
    sql: ${TABLE}.cancelled

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended
    hidden: true

  - dimension: gid
    type: string
    sql: ${TABLE}.gid
    hidden: true

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: setlist
    type: string
    sql: ${TABLE}.setlist

  - dimension: time
    type: string
    sql: ${TABLE}.time

  - dimension: type_id
    sql: ${TABLE}.type
  
  - dimension: type
    sql: ${event_type.name}

  - measure: count
    type: count
    drill_fields: [id, name]

