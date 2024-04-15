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

  dimension: school_county {
    type: string
    sql: ${TABLE}.school_county ;;
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


  measure: user_rating {
    type: string
    sql: case WHEN COUNT(CASE WHEN ${TABLE}.user_rating = 'Leitor Fluente' THEN 1 END) > 0 THEN 'Leitor Fluente'
          WHEN COUNT(CASE WHEN ${TABLE}.user_rating = 'Leitor Iniciante' THEN 1 END) > 0 THEN 'Leitor Iniciante'
          WHEN COUNT(CASE WHEN ${TABLE}.user_rating = 'Pré-leitor 4' THEN 1 END) > 0 THEN 'Pré-leitor 4'
          WHEN COUNT(CASE WHEN ${TABLE}.user_rating = 'Pré-leitor 1' THEN 1 END) > 0 THEN 'Pré-leitor 1'
          ELSE 'Sem Classificação' end  ;;
  }

  measure: total_provas_feitas {
    type: count_distinct
    sql: CONCAT(${student_results.student_uuid}, ${student_results.exam_uuid}) ;;
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

  measure: student_reader_profile {
    type: string
    sql: if(${avg_hit_percentage}<0.6,"PRÉ-LEITOR",if(${avg_hit_percentage}>=0.6 AND ${avg_hit_percentage}<0.9,"LEITOR INICIANTE",if(${avg_hit_percentage}>=0.9,"LEITOR FLUENTE","0"))) ;;
    value_format: ""
  }


measure: student_reader_profile_updated {
  type: string
  sql: if(${sum_response_amount_hits}=0,"PRÉ-LEITOR - NÍVEL 1",if(${sum_response_amount_hits}>0 AND ${sum_response_amount_hits}<=10,"PRÉ-LEITOR - NÍVEL 2",if(${sum_response_amount_hits}>=11 AND ${sum_response_amount_hits}<59,"INICIANTE",if(${sum_response_amount_hits}>=59,"FLUENTE","0")))) ;;
  value_format: ""
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
