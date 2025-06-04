# The name of this view in Looker is "Exams Users Questions"
view: exams_users_questions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.exams_users_questions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Audio URL" in Explore.

  dimension: audio_url {
    type: string
    sql: ${TABLE}.audio_url ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }

  dimension: exam_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.exam_id ;;
  }

  dimension: group_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: organization_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: question_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.question_id ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  dimension: right_count {
    type: number
    sql: ${TABLE}.right_count ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_accuracy {
    type: number
    sql: ${TABLE}.total_accuracy ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_accuracy {
    type: number
    sql: ${TABLE}.user_accuracy ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	questions.name,
	questions.id,
	users.name,
	users.id,
	groups.name,
	groups.id,
	organizations.name,
	organizations.id,
	exams.name,
	exams.id
	]
  }

}
