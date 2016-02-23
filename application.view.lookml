- view: application
  sql_table_name: musicbrainz.application
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: oauth_id
    type: string
    sql: ${TABLE}.oauth_id

  - dimension: oauth_redirect_uri
    type: string
    sql: ${TABLE}.oauth_redirect_uri

  - dimension: oauth_secret
    type: string
    sql: ${TABLE}.oauth_secret

  - dimension: owner
    type: number
    sql: ${TABLE}.owner

  - measure: count
    type: count
    drill_fields: [id, name]

