- view: autoeditor_election_vote
  sql_table_name: musicbrainz.autoeditor_election_vote
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: autoeditor_election
    type: number
    sql: ${TABLE}.autoeditor_election

  - dimension: vote
    type: number
    sql: ${TABLE}.vote

  - dimension_group: vote
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.vote_time

  - dimension: voter
    type: number
    sql: ${TABLE}.voter

  - measure: count
    type: count
    drill_fields: [id]

