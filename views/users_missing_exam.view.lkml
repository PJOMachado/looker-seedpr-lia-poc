view: users_missing_exam {
  # Esta é uma Native Derived Table (NDT), que executa o SQL no banco de dados.
  derived_table: {
    # ------------------------------------------------------------------------------------------------
    # ATENÇÃO: SUBSTITUA O VALOR 'EXAM_ID_PARA_FILTRAR' pelo ID do exame desejado ou por um parâmetro
    # ------------------------------------------------------------------------------------------------
    sql: |
      -- 1. Seleciona todos os usuários com a role 'user'
      SELECT
        u.id AS user_uuid,
        u.name AS user_name,
        u.email_address
      FROM
        ${users.SQL_TABLE_NAME} AS u
      INNER JOIN
        ${roles.SQL_TABLE_NAME} AS r ON u.role_id = r.id
      WHERE
        r.name = 'user'

      EXCEPT

      -- 2. Exclui os usuários que já fizeram o exame específico
      SELECT
      eu.user_id AS user_uuid,
      u_done.name AS user_name,
      u_done.email_address
      FROM
      ${exams_users.SQL_TABLE_NAME} AS eu
      INNER JOIN
      ${users.SQL_TABLE_NAME} AS u_done ON eu.user_id = u_done.id
      WHERE
      eu.exam_id = 'EXAM_ID_PARA_FILTRAR' -- <--- MUDAR AQUI!
      ;;

    # Adicione uma estratégia de persistência (opcional)
    # persist_for: "1 hour"
  }

  dimension: user_uuid {
    primary_key: yes
    type: string
    sql: ${TABLE}.user_uuid ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension: missing_exam_status {
    label: "Status do Exame"
    type: string
    sql: 'Ausente (Role User)' ;;
  }

  measure: count_missing_students {
    label: "Total de Usuários 'User' Ausentes"
    type: count
    drill_fields: [user_name, user_email]
  }
}
