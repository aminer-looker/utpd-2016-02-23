- connection: music

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: work
  joins:
    # Composer Details
      
    - join: artist_type
      relationship: many_to_one
      sql_on: ${composer.type_id} = ${artist_type.id}
      fields: []
      
    - join: gender
      relationship: many_to_one
      sql_on: ${composer.gender_id} = ${gender.id}
      fields: []
      
    - join: location 
      from: area
      relationship: many_to_one
      sql_on: ${composer.area_id} = ${location.id}
      fields: [name]
    
    # Event Details
    
    - join: event_type
      relationship: many_to_one
      sql_on: ${event_type.id} = ${event.type_id}
      fields: []
    
    # Place Details
    
    - join: place_type
      relationship: many_to_one
      sql_on: ${place_type.id} = ${place.type_id}
      fields: []
      
    # Work Details
      
    - join: language
      relationship: many_to_one
      sql_on: ${language.id} = ${work.language_id}
      fields: [name]
      
    - join: work_meta
      relationship: one_to_one
      sql_on: ${work_meta.id} = ${work.id}
      fields: []
    
    - join: work_type
      relationship: many_to_one
      sql_on: ${work.type_id} = ${work_type.id}
      fields: []
    
    # Join to Composer
      
    - join: l_artist_work
      relationship: many_to_one
      sql_on: ${l_artist_work.entity1} = ${work.id}
      fields: []
      
    - join: composing
      from: link
      relationship: one_to_one
      sql_on: ${composing.id} = ${l_artist_work.link}
      fields: [begin_year, end_year]
      
    - join: composer_link_type
      from: link_type
      relationship: many_to_one
      sql_on: ${composer_link_type.id} = ${composing.link_type}
      fields: []
      
    - join: composer
      from: artist
      relationship: many_to_one
      sql_on: ${composer.id} = ${l_artist_work.entity0}
      sql_where: ${composer_link_type.name} = 'composer'
      fields: [area_id, comment, gender, gender_id, name, type]
    
    # Join to Event
    
    - join: l_event_work
      relationship: many_to_one
      sql_on: ${l_event_work.entity1} = ${work.id}
      fields: []
    
    - join: event
      relationship: many_to_one
      sql_on: ${event.id} = ${l_event_work.entity0}
      fields: [cancelled, comment, name, time, type]
    
    # Join to Place
    
    - join: l_place_work
      relationship: many_to_one
      sql_on: ${l_place_work.entity1} = ${work.id}
      fields: []
    
    - join: place
      relationship: many_to_one
      sql_on: ${place.id} = ${l_place_work.entity0}
      fields: [name, address, comment, type]
