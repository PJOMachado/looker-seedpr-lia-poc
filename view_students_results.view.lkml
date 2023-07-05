#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: view_results_students {
  derived_table: {
    sql: SELECT
          student_results_student_uuid,
          student_results_student_name,
          student_results_class_name,
          student_results_school_name,
          student_results_sum_response_amount_hits,
          student_results_student_reader_profile_updated,
          student_results_count
      FROM
          (SELECT
                  student_results.class_name  AS student_results_class_name,
                  student_results.school_name  AS student_results_school_name,
                  student_results.student_name  AS student_results_student_name,
                  student_results.student_uuid  AS student_results_student_uuid,
                  COALESCE(SUM(student_results.response_amount_hits ), 0) AS student_results_sum_response_amount_hits,
                  if(( COALESCE(SUM(student_results.response_amount_hits), 0) )=0,"PRÉ-LEITOR - Nivel 1",if(( COALESCE(SUM(student_results.response_amount_hits), 0) )>0 AND ( COALESCE(SUM(student_results.response_amount_hits), 0) )<=10,"PRÉ-LEITOR - Nivel 2",if(( COALESCE(SUM(student_results.response_amount_hits), 0) )>=11 AND ( COALESCE(SUM(student_results.response_amount_hits), 0) )<59,"Iniciante",if(( COALESCE(SUM(student_results.response_amount_hits), 0) )>=59,"Fluente","0"))))  AS student_results_student_reader_profile_updated,
                  COUNT(*) AS student_results_count,
                  COUNT(*) AS student_results_count_0
              FROM `dataset_lia.student_results`
           AS student_results
              WHERE ((array_length(([])) = 0 or student_results.class_uuid in unnest(([])))
        and (array_length(([])) = 0 or student_results.school_uuid in unnest(([]))))
              GROUP BY
                  1,
                  2,
                  3,
                  4
              HAVING student_results_count_0 = 2) AS t3
      ORDER BY
          5 DESC ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: student_results_student_uuid {
    type: string
    sql: ${TABLE}.student_results_student_uuid ;;
  }

  dimension: student_results_student_name {
    type: string
    sql: ${TABLE}.student_results_student_name ;;
  }

  dimension: student_results_class_name {
    type: string
    sql: ${TABLE}.student_results_class_name ;;
  }

  dimension: student_results_school_name {
    type: string
    sql: ${TABLE}.student_results_school_name ;;
  }

  dimension: student_results_sum_response_amount_hits {
    type: number
    sql: ${TABLE}.student_results_sum_response_amount_hits ;;
  }

  dimension: student_results_student_reader_profile_updated {
    type: string
    sql: ${TABLE}.student_results_student_reader_profile_updated ;;
  }

  dimension: student_results_count {
    type: number
    sql: ${TABLE}.student_results_count ;;
  }

  set: detail {
    fields: [
        student_results_student_uuid,
	student_results_student_name,
	student_results_class_name,
	student_results_school_name,
	student_results_sum_response_amount_hits,
	student_results_student_reader_profile_updated,
	student_results_count
    ]
  }
}
