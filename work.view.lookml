- view: work
  derived_table:
    sql: |
      select
        w.*
      from musicbrainz.work w
      where not exists (
        select 1
        from musicbrainz.l_work_work lww
        where lww.entity1 = w.id
      )

  fields:
    - dimension: id
      primary_key: true
      type: number
      sql: ${TABLE}.id
      hidden: true
  
    - dimension: comment
      type: string
      sql: ${TABLE}.comment
  
    - dimension: language_id
      sql: ${TABLE}.language
      hidden: true
    
    - dimension: language
      sql: ${language.name}
  
    - dimension: name
      type: string
      sql: ${TABLE}.name
    
    - dimension: rating
      sql: ${work_meta.rating}
  
    - dimension: type_id
      sql: ${TABLE}.type
      hidden: true
      
    - dimension: type
      sql: ${work_type.name}
  
    - measure: count
      type: count
      drill_fields: [name, type, comment]
