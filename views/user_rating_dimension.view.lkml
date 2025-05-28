view: user_rating_dimension {
  derived_table: {
    sql:
      SELECT
              student_results.school_name AS student_results_school_name,
              student_results.class_name AS student_results_class_name,
              ANY_VALUE(student_results.school_city) AS student_results_school_city,
              ANY_VALUE(student_results.school_county) AS student_results_school_county,
              ANY_VALUE(student_results.school_region) AS student_results_school_region,
              student_results.exam_uuid AS student_results_exam_uuid,
              ANY_VALUE(student_results.exam_name) AS student_results_exam_name,
              student_results.student_uuid AS student_results_student_uuid,
              ANY_VALUE(student_results.student_name) AS student_results_student_name,
              max(student_results.response_timestamp) AS student_results_response_timestamp,
              ANY_VALUE(student_results.school_uuid) AS student_results_school_uuid,
              ANY_VALUE(student_results.class_uuid) AS student_results_class_uuid,
              CASE
                WHEN COUNT(CASE WHEN student_results.user_rating = 'Leitor Fluente' THEN 1 END) > 0 THEN 'Leitor Fluente'
                WHEN COUNT(CASE WHEN student_results.user_rating = 'Leitor Iniciante' THEN 1 END) > 1 THEN 'Leitor Iniciante'
                WHEN COUNT(CASE WHEN student_results.user_rating = 'Pré-leitor 4' THEN 1 END) > 0 THEN 'Pré-leitor 4'
                WHEN COUNT(CASE WHEN student_results.user_rating = 'Pré-leitor 3' THEN 1 END) > 0 THEN 'Pré-leitor 3'
                WHEN COUNT(CASE WHEN student_results.user_rating = 'Pré-leitor 2' THEN 1 END) > 0 THEN 'Pré-leitor 2'
                WHEN COUNT(CASE WHEN student_results.user_rating = 'Pré-leitor 1' THEN 1 END) > 0 THEN 'Pré-leitor 1'
                ELSE 'Sem Classificação'
              END AS student_results_user_rating
            FROM dataset_lia.student_results AS student_results
            GROUP BY 6,8,1,2
            ;;
  }



  dimension: student_results_school_name {
    type: string
    sql: ${TABLE}.student_results_school_name ;;
  }

  dimension: class_uuid {
    type: string
    sql: ${TABLE}.student_results_class_uuid ;;
  }

  dimension: student_results_user_rating {
    type: string
    sql: ${TABLE}.student_results_user_rating ;;
  }

  dimension: student_results_class_name {
    type: string
    sql: ${TABLE}.student_results_class_name ;;
  }

  dimension: student_results_school_city {
    type: string
    sql: ${TABLE}.student_results_school_city ;;
  }

  dimension: student_results_school_county {
    type: string
    sql: ${TABLE}.student_results_school_county ;;
  }

  dimension: student_results_school_region {
    type: string
    sql: ${TABLE}.student_results_school_region ;;
  }

  dimension: student_results_exam_uuid {
    type: string
    sql: ${TABLE}.student_results_exam_uuid ;;
  }

  dimension: student_results_exam_name {
    type: string
    sql: ${TABLE}.student_results_exam_name ;;
  }

  dimension: student_results_student_uuid {
    type: string
    sql: ${TABLE}.student_results_student_uuid ;;
  }

  dimension: student_results_student_name {
    type: string
    sql: ${TABLE}.student_results_student_name ;;
  }

  dimension: school_region {
    type: string
    sql: ${TABLE}.student_results_school_region ;;
  }

  dimension: school_county {
    type: string
    sql: ${TABLE}.student_results_school_county ;;
  }

  dimension: school_uuid {
    type: string
    sql: ${TABLE}.student_results_school_uuid ;;
  }


  dimension_group: student_results_response_timestamp {
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
    sql: ${TABLE}.student_results_response_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_provas_feitas {
    type: count_distinct
    sql: CONCAT(${user_rating_dimension.student_results_student_uuid}, ${user_rating_dimension.student_results_exam_uuid}) ;;
  }

  measure: total_escolas {
    type: count_distinct
    sql: ${student_results_school_name} ;;
  }

  measure: total_turmas {
    type: count_distinct
    sql: CONCAT(${student_results_school_name}, ${student_results_class_name}) ;;
  }

  set: detail {
    fields: [
      student_results_school_name,
      student_results_class_name,
      student_results_school_city,
      student_results_school_county,
      student_results_school_region,
      student_results_exam_uuid,
      student_results_exam_name,
      student_results_student_uuid,
      student_results_student_name,
      student_results_user_rating
    ]
  }
}
