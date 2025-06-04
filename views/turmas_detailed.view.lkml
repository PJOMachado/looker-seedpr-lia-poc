# Nome do arquivo: turmas_detailed.view.lkml

view: turmas_detailed {
  derived_table: {
    sql: SELECT
        -- Campos da tabela groups (turmas)
        g.id AS group_id,
        g.name AS group_name,
        g.grade AS group_grade,
        g.shift AS group_shift,
        g.created_at AS group_created_at,
        g.updated_at AS group_updated_at,
        g.customer_id AS group_customer_id,
        g.organization_id AS group_organization_id_fk, -- Chave estrangeira para organizations
        g.datastream_metadata.source_timestamp AS group_ds_source_timestamp,
        g.datastream_metadata.uuid AS group_ds_uuid,

      -- Campos da tabela organizations
      o.id AS organization_id_pk, -- Chave primária da tabela organizations
      o.name AS organization_name,
      o.city AS organization_city,
      o.county AS organization_county,
      o.region AS organization_region,
      o.state AS organization_state,
      o.created_at AS organization_created_at,
      o.updated_at AS organization_updated_at,
      o.customer_id AS organization_customer_id,
      o.datastream_metadata.source_timestamp AS org_ds_source_timestamp,
      o.datastream_metadata.uuid AS org_ds_uuid

      FROM `public.groups` AS g
      LEFT JOIN `public.organizations` AS o ON g.organization_id = o.id
      ;;
  }

  # Chave primária para esta tabela derivada (ID da turma/grupo)
  dimension: group_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.group_id ;;
    description: "ID único da turma/grupo."
  }

  # --- Dimensões da Turma (Groups) ---
  dimension: name {
    label: "Nome da Turma"
    type: string
    sql: ${TABLE}.group_name ;;
    description: "Nome da turma/grupo."
  }

  dimension: grade {
    label: "Série/Ano da Turma"
    type: string
    sql: ${TABLE}.group_grade ;;
    description: "Série ou ano da turma."
  }

  dimension: shift {
    label: "Turno da Turma"
    type: string
    sql: ${TABLE}.group_shift ;;
    description: "Turno da turma (ex: Manhã, Tarde, Noite)."
  }

  dimension_group: group_created {
    label: "Criação da Turma"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.group_created_at ;;
    description: "Data e hora de criação da turma."
  }

  dimension_group: group_updated {
    label: "Atualização da Turma"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.group_updated_at ;;
    description: "Data e hora da última atualização da turma."
  }

  dimension: group_customer_id {
    type: string
    sql: ${TABLE}.group_customer_id ;;
    description: "ID do cliente associado à turma."
    hidden: yes # Considere ocultar se for redundante ou muito técnico
  }

  dimension: group_organization_id_fk {
    type: string
    sql: ${TABLE}.group_organization_id_fk ;;
    hidden: yes # Chaves estrangeiras geralmente são ocultadas
    description: "Chave estrangeira para a tabela organizations (ID da organização da turma)."
  }

  dimension: group_ds_source_timestamp {
    type: number
    sql: ${TABLE}.group_ds_source_timestamp ;;
    group_label: "Metadados Datastream da Turma"
    group_item_label: "Timestamp da Fonte"
    hidden: yes
  }

  dimension: group_ds_uuid {
    type: string
    sql: ${TABLE}.group_ds_uuid ;;
    group_label: "Metadados Datastream da Turma"
    group_item_label: "UUID"
    hidden: yes
  }

  # --- Dimensões da Organização ---
  dimension: organization_id { # Renomeado de organization_id_pk para clareza no Explore
    type: string
    sql: ${TABLE}.organization_id_pk ;;
    description: "ID único da organização à qual a turma pertence."
    # Exemplo de link para explorar a organização diretamente:
    # link: {
    #   label: "Ver Detalhes da Organização"
    #   url: "/explore/seu_modelo/organizations?fields=organizations.id,organizations.name&f[organizations.id]={{ value }}"
    # }
  }

  dimension: organization_name {
    label: "Nome da Organização"
    type: string
    sql: ${TABLE}.organization_name ;;
    description: "Nome da organização à qual a turma pertence."
  }

  dimension: organization_city {
    label: "Cidade da Organização"
    type: string
    sql: ${TABLE}.organization_city ;;
  }

  dimension: organization_county {
    label: "Município da Organização" # County pode ser traduzido como município ou comarca
    type: string
    sql: ${TABLE}.organization_county ;;
  }

  dimension: organization_region {
    label: "Região da Organização"
    type: string
    sql: ${TABLE}.organization_region ;;
  }

  dimension: organization_state {
    label: "Estado da Organização"
    type: string
    sql: ${TABLE}.organization_state ;;
  }

  dimension_group: organization_created {
    label: "Criação da Organização"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.organization_created_at ;;
    description: "Data e hora de criação da organização."
  }

  dimension_group: organization_updated {
    label: "Atualização da Organização"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.organization_updated_at ;;
    description: "Data e hora da última atualização da organização."
  }

  dimension: organization_customer_id {
    type: string
    sql: ${TABLE}.organization_customer_id ;;
    description: "ID do cliente associado à organização."
    hidden: yes # Considere ocultar se for redundante ou muito técnico
  }

  dimension: org_ds_source_timestamp {
    type: number
    sql: ${TABLE}.org_ds_source_timestamp ;;
    group_label: "Metadados Datastream da Organização"
    group_item_label: "Timestamp da Fonte"
    hidden: yes
  }

  dimension: org_ds_uuid {
    type: string
    sql: ${TABLE}.org_ds_uuid ;;
    group_label: "Metadados Datastream da Organização"
    group_item_label: "UUID"
    hidden: yes
  }

  # --- Medidas ---
  measure: count {
    label: "Número de Turmas"
    type: count
    drill_fields: [group_id, name, organization_name] # Ajuste os campos de drill down conforme necessário
  }

  measure: distinct_groups_count {
    label: "Número de Turmas Únicas"
    type: count_distinct
    sql: ${group_id} ;;
  }

  measure: distinct_organizations_count {
    label: "Número de Organizações Únicas"
    type: count_distinct
    sql: ${organization_id} ;; # Usa a dimensão organization_id definida acima
  }
}
