- view: editor
  sql_table_name: musicbrainz.editor
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: area
    type: number
    sql: ${TABLE}.area

  - dimension: auto_edits_accepted
    type: number
    sql: ${TABLE}.auto_edits_accepted

  - dimension: bio
    type: string
    sql: ${TABLE}.bio

  - dimension_group: birth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.birth_date

  - dimension: deleted
    type: yesno
    sql: ${TABLE}.deleted

  - dimension: edits_accepted
    type: number
    sql: ${TABLE}.edits_accepted

  - dimension: edits_failed
    type: number
    sql: ${TABLE}.edits_failed

  - dimension: edits_rejected
    type: number
    sql: ${TABLE}.edits_rejected

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension_group: email_confirm
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.email_confirm_date

  - dimension: gender
    type: number
    sql: ${TABLE}.gender

  - dimension: ha1
    type: string
    sql: ${TABLE}.ha1

  - dimension_group: last_login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_login_date

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated

  - dimension_group: member_since
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.member_since

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: password
    type: string
    sql: ${TABLE}.password

  - dimension: privs
    type: number
    sql: ${TABLE}.privs

  - dimension: website
    type: string
    sql: ${TABLE}.website

  - measure: count
    type: count
    drill_fields: [id, name]

