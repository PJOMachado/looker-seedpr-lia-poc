# The name of this view in Looker is "Vw Resultados"
view: vw_resultados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.VW_RESULTADOS` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cidade Escola" in Explore.

  dimension: school_region {
    type: string
    sql: ${TABLE}.CIDADE_ESCOLA ;;
  }

  dimension: school_city {
    type: string
    sql: ${TABLE}.REGIAO_ESCOLA ;;
  }

  dimension: student_uuid {
    type: string
    sql: ${TABLE}.ID_ALUNO ;;
  }

  dimension: prova_status {
    type: string
    sql: ${TABLE}.PROVA_STATUS ;;
  }

  dimension: user_rating {
    type: string
    sql: ${TABLE}.CLASSIFICACAO ;;
  }

  dimension: school_state {
    type: string
    sql: ${TABLE}.ESTADO_ESCOLA ;;
  }

  dimension: exam_uuid {
    type: string
    sql: ${TABLE}.ID_EXAME ;;
  }

  dimension: school_uuid {
    type: string
    sql: ${TABLE}.ID_ORGANIZACAO ;;
  }

  dimension: class_uuid {
    type: string
    sql: ${TABLE}.ID_TURMA ;;
  }

  dimension: school_county {
    type: string
    sql: ${TABLE}.MUNICIPIO_ESCOLA ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}.NOME_ALUNO ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.NOME_ESCOLA ;;
  }

  dimension: exam_name {
    type: string
    sql: ${TABLE}.NOME_EXAME ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.NOME_TURMA ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: response_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.UPDATED ;;
  }

  measure: count {
    type: count
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
