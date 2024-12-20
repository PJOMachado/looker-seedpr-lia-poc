connection: "lia_bq_poc_table"

# include all the views
include: "/views/**/*.view"
include: "/dashboard/*.dashboard"

datagroup: lia_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lia_poc_default_datagroup

explore: student_results {
  sql_always_where: (array_length(({{ _user_attributes['group_ids']}})) = 0 or ${class_uuid} in unnest(({{ _user_attributes['group_ids']}})))
      and (array_length(({{ _user_attributes['organization_ids']}})) = 0 or ${school_uuid} in unnest(({{ _user_attributes['organization_ids']}})))
      and ("{{ _user_attributes['county']}}" = "null" or ${school_county} = "{{ _user_attributes['county']}}")
      and ("{{ _user_attributes['region']}}" = "null" or ${school_region} = "{{ _user_attributes['region']}}");;

  join: student_results__response_words {
    view_label: "Student Results: Response Words"
    sql: LEFT JOIN UNNEST(${student_results.response_words}) as student_results__response_words ;;
    relationship: one_to_many
  }

  join: student_results__question_words {
    view_label: "Student Results: Question Words"
    sql: LEFT JOIN UNNEST(${student_results.question_words}) as student_results__question_words ;;
    relationship: one_to_many
  }
}

explore: student {}

explore: user_rating_dimension {
  sql_always_where: (array_length(({{ _user_attributes['group_ids']}})) = 0 or ${class_uuid} in unnest(({{ _user_attributes['group_ids']}})))
      and (array_length(({{ _user_attributes['organization_ids']}})) = 0 or ${school_uuid} in unnest(({{ _user_attributes['organization_ids']}})))
      and ("{{ _user_attributes['county']}}" = "null" or ${school_county} = "{{ _user_attributes['county']}}")
      and ("{{ _user_attributes['region']}}" = "null" or ${school_region} = "{{ _user_attributes['region']}}");;
}
