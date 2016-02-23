- view: autoeditor_election
  sql_table_name: musicbrainz.autoeditor_election
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: candidate
    type: number
    sql: ${TABLE}.candidate

  - dimension_group: close
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.close_time

  - dimension: no_votes
    type: number
    sql: ${TABLE}.no_votes

  - dimension_group: open
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.open_time

  - dimension_group: propose
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.propose_time

  - dimension: proposer
    type: number
    sql: ${TABLE}.proposer

  - dimension: seconder_1
    type: number
    sql: ${TABLE}.seconder_1

  - dimension: seconder_2
    type: number
    sql: ${TABLE}.seconder_2

  - dimension: status
    type: number
    sql: ${TABLE}.status

  - dimension: yes_votes
    type: number
    sql: ${TABLE}.yes_votes

  - measure: count
    type: count
    drill_fields: [id]

