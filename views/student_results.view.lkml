view: student_results {
  sql_table_name: `dataset_lia.student_results`
    ;;

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
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
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
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
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

  dimension: response_amount_hits {
    type: number
    sql: ${TABLE}.response_amount_hits ;;
  }

  dimension_group: response_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
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

  dimension: school_name {
    type: string
    sql: ${TABLE}.school_name ;;
  }

  dimension: school_region {
    type: string
    sql: ${TABLE}.school_region ;;
  }

  dimension: school_uuid {
    type: string
    sql: ${TABLE}.school_uuid ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
  }

  dimension: student_uuid {
    type: string
    sql: ${TABLE}.student_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [school_name, student_name, exam_name, class_name]
  }

  measure: sum_response_amount_hits{
    type: sum
    sql: ${response_amount_hits};;
  }

  measure: sum_question_amount_hits{
    type: sum
    sql: ${question_amount_words};;
  }

  measure: avg_hit_percentage{
    type: average
    sql: (${response_amount_hits}/${question_amount_words});;
    value_format: "0%"
  }

}

view: student_results__response_words {
  dimension: student_results__response_words {
    type: string
    sql: student_results__response_words ;;
  }
}

view: student_results__question_words {
  dimension: student_results__question_words {
    type: string
    sql: student_results__question_words ;;
  }
}