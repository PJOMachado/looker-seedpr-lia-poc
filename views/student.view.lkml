view: student {
  derived_table: {
    sql:
      SELECT
          student_results.student_uuid  AS student_results_student_uuid,
          student_results.student_name  AS student_results_student_name,
          student_results.class_name  AS student_results_class_name,
          student_results.school_name  AS student_results_school_name,
          student_results.school_region  AS student_results_school_region,
          student_results.school_city  AS student_results_school_city,
          student_results.exam_uuid  AS student_results_exam_uuid,
          student_results.exam_name  AS student_results_exam_name,
          student_results.exam_grade  AS student_results_exam_grade,
          COUNT(*) AS student_results_count,
          COALESCE(SUM(student_results.response_amount_hits ), 0) AS student_results_sum_response_amount_hits,
          if(( COALESCE(SUM(student_results.response_amount_hits), 0) )=0,"PRÉ-LEITOR - NÍVEL 1",if(( COALESCE(SUM(student_results.response_amount_hits), 0) )>0 AND ( COALESCE(SUM(student_results.response_amount_hits), 0) )<=10,"PRÉ-LEITOR - NÍVEL 2",if(( COALESCE(SUM(student_results.response_amount_hits), 0) )>=11 AND ( COALESCE(SUM(student_results.response_amount_hits), 0) )<59,"INICIANTE",if(( COALESCE(SUM(student_results.response_amount_hits), 0) )>=59,"FLUENTE","0"))))  AS student_results_student_reader_profile_updated
      FROM `steel-ridge-386314.dataset_lia.student_results`
           AS student_results
      WHERE ((array_length(([])) = 0 or student_results.class_uuid in unnest(([])))
        and (array_length(([])) = 0 or student_results.school_uuid in unnest(([]))))
      GROUP BY 1,2,3,4,5,6,7,8,9
      ;;
  }
  drill_fields: [uuid]

  dimension: uuid {
    type: string
    primary_key: yes
    sql: ${TABLE}.student_results_student_uuid ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.student_results_student_name ;;
  }
  dimension: class_name {
    type: string
    sql: ${TABLE}.student_results_class_name ;;
  }
  dimension: school_name {
    type: string
    sql: ${TABLE}.student_results_school_name ;;
  }
  dimension: school_region {
    type: string
    sql: ${TABLE}.student_results_school_region ;;
  }
  dimension: school_city {
    type: string
    sql: ${TABLE}.student_results_school_city ;;
  }
  dimension: exam_uuid {
    type: string
    sql: ${TABLE}.student_results_exam_uuid ;;
  }
  dimension: exam_name {
    type: string
    sql: ${TABLE}.student_results_exam_name ;;
  }
  dimension: exam_grade {
    type: string
    sql: ${TABLE}.student_results_exam_grade ;;
  }
  dimension: student_results_count {
    type: number
    sql: ${TABLE}.student_results_count ;;
  }

  dimension: prova_completa {
    type: yesno
    sql: CASE ${student_results_count} WHEN 2 THEN true else false end ;;

  }

  dimension: student_reader_profile {
    type: string
    sql: ${TABLE}.student_results_student_reader_profile_updated ;;
  }

  measure: count {
    type: count
  }

}
