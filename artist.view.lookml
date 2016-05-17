- view: artist
  sql_table_name: musicbrainz.artist
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    hidden: true

  - dimension: area_id
    hidden: true
    sql: ${TABLE}.area

  - dimension: comment
    type: string
    sql: ${TABLE}.comment

  - dimension: ended
    type: yesno
    sql: ${TABLE}.ended
    hidden: true

  - dimension: gender_id
    sql: ${TABLE}.gender
    hidden: true
    
  - dimension: gender
    sql: ${gender.name}

  - dimension: gid
    type: string
    sql: ${TABLE}.gid
    hidden: true

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: sort_name
    type: string
    sql: ${TABLE}.sort_name

  - dimension: type_id
    sql: ${TABLE}.type
    hidden: true
  
  - dimension: type
    sql: ${artist_type.name}

  - measure: count
    type: count
    drill_fields: [name, type, gender]

