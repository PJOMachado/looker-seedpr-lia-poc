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

  dimension: cidade_escola {
    type: string
    sql: ${TABLE}.CIDADE_ESCOLA ;;
  }

  dimension: prova_status {
    type: string
    sql: ${TABLE}.PROVA_STATUS ;;
  }


  dimension: classificacao {
    type: string
    sql: ${TABLE}.CLASSIFICACAO ;;
  }

  dimension: estado_escola {
    type: string
    sql: ${TABLE}.ESTADO_ESCOLA ;;
  }

  dimension: id_exame {
    type: string
    sql: ${TABLE}.ID_EXAME ;;
  }

  dimension: id_organizacao {
    type: string
    sql: ${TABLE}.ID_ORGANIZACAO ;;
  }

  dimension: id_turma {
    type: string
    sql: ${TABLE}.ID_TURMA ;;
  }

  dimension: municipio_escola {
    type: string
    sql: ${TABLE}.MUNICIPIO_ESCOLA ;;
  }

  dimension: nome_aluno {
    type: string
    sql: ${TABLE}.NOME_ALUNO ;;
  }

  dimension: nome_escola {
    type: string
    sql: ${TABLE}.NOME_ESCOLA ;;
  }

  dimension: nome_exame {
    type: string
    sql: ${TABLE}.NOME_EXAME ;;
  }

  dimension: nome_turma {
    type: string
    sql: ${TABLE}.NOME_TURMA ;;
  }

  dimension: regiao_escola {
    type: string
    sql: ${TABLE}.REGIAO_ESCOLA ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.UPDATED ;;
  }
  measure: count {
    type: count
  }
}
