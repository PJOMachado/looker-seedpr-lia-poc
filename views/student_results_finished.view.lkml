view: student_results_finished {
  sql_table_name: `steel-ridge-386314.dataset_lia.student_results_finished` ;;

  dimension: class_grade {
    type: string
    sql: ${TABLE}.class_grade ;;
  }
  dimension: class_name {
    type: string
    sql: ${TABLE}.class_name ;;
  }
  dimension: class_uuid {
    type: string
    sql: ${TABLE}.class_uuid ;;
  }
  dimension_group: exam_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.exam_end_date ;;
  }
  dimension: exam_grade {
    type: string
    sql: ${TABLE}.exam_grade ;;
  }
  dimension: exam_name {
    type: string
    sql: ${TABLE}.exam_name ;;
  }
  dimension_group: exam_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.exam_start_date ;;
  }
  dimension: exam_uuid {
    type: string
    sql: ${TABLE}.exam_uuid ;;
  }
  dimension: question_amount_words {
    type: number
    sql: ${TABLE}.question_amount_words ;;
  }
  dimension: question_uuid {
    type: string
    sql: ${TABLE}.question_uuid ;;
  }
  dimension: question_words {
    hidden: yes
    sql: ${TABLE}.question_words ;;
  }
  dimension: record_count {
    type: number
    sql: ${TABLE}.record_count ;;
  }
  dimension: response_amount_hits {
    type: number
    sql: ${TABLE}.response_amount_hits ;;
  }
  dimension_group: response_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.response_timestamp ;;
  }
  dimension: response_words {
    hidden: yes
    sql: ${TABLE}.response_words ;;
  }
  dimension: school_city {
    type: string
    sql: ${TABLE}.school_city ;;
  }
  dimension: school_county {
    type: string
    sql: ${TABLE}.school_county ;;
  }
  dimension: school_name {
    type: string
    sql: ${TABLE}.school_name ;;
  }
  dimension: school_region {
    type: string
    sql: ${TABLE}.school_region ;;
  }
  dimension: school_state {
    type: string
    sql: ${TABLE}.school_state ;;
  }
  dimension: school_uuid {
    type: string
    sql: ${TABLE}.school_uuid ;;
  }
  dimension: student_customer_id {
    type: string
    sql: ${TABLE}.student_customer_id ;;
  }
  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
  }
  dimension: student_uuid {
    type: string
    sql: ${TABLE}.student_uuid ;;
  }
  dimension: user_rating {
    type: string
    sql: ${TABLE}.user_rating ;;
  }
  measure: count {
    type: count
    drill_fields: [student_name, exam_name, class_name, school_name]
  }

  measure: total_provas_feitas {
    type: count_distinct
    sql: CONCAT(${student_uuid}, ${exam_uuid}) ;;
  }

  measure: total_escolas {
    type: count_distinct
    sql: ${school_uuid} ;;
  }

  measure: total_turmas {
    type: count_distinct
    sql: CONCAT(${school_uuid}, ${class_uuid}) ;;
  }
}

view: student_results_finished__response_words {

  dimension: student_results_finished__response_words {
    type: string
    sql: student_results_finished__response_words ;;
  }
}

view: student_results_finished__question_words {

  dimension: student_results_finished__question_words {
    type: string
    sql: student_results_finished__question_words ;;
  }
}
