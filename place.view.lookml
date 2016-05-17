- view: place
  sql_table_name: musicbrainz.place
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    hidden: false

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: coordinates
    type: string
    sql: ${TABLE}.coordinates

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended
    hidden: false

  - dimension: gid
    type: string
    sql: ${TABLE}.gid
    hidden: false

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: type_id
    sql: ${TABLE}.type
    hidden: true
  
  - dimension: type
    sql: ${place_type.name}

  - measure: count
    type: count
    drill_fields: [id, name]
