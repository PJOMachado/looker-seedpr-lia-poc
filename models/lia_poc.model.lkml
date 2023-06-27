connection: "lia_bq_poc_table"

# include all the views
include: "/views/**/*.view"

datagroup: lia_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lia_poc_default_datagroup

explore: student_results {
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
