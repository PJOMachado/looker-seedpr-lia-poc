# Define the database connection to be used for this model.
connection: "lia_bq_poc_table"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: lia_relation_db_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lia_relation_db_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Lia Relation Db"

explore: questions {
  join: exams {
    type: left_outer 
    sql_on: ${questions.exam_id} = ${exams.id} ;;
    relationship: many_to_one
  }
}

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: vw_resultados {}

explore: exams {}

explore: groups {
  join: organizations {
    type: left_outer 
    sql_on: ${groups.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }
}

explore: organizations {}

explore: exams_users {
  join: users {
    type: left_outer 
    sql_on: ${exams_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: exams {
    type: left_outer 
    sql_on: ${exams_users.exam_id} = ${exams.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer 
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: alembic_version {}

explore: exams_users_questions {
  join: questions {
    type: left_outer 
    sql_on: ${exams_users_questions.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${exams_users_questions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer 
    sql_on: ${exams_users_questions.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer 
    sql_on: ${exams_users_questions.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: exams {
    type: left_outer 
    sql_on: ${exams_users_questions.exam_id} = ${exams.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer 
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  join: roles {
    type: left_outer 
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: roles {}

explore: sessions {
  join: users {
    type: left_outer 
    sql_on: ${sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer 
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: users_organizations {
  join: users {
    type: left_outer 
    sql_on: ${users_organizations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer 
    sql_on: ${users_organizations.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer 
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: users_groups {
  join: users {
    type: left_outer 
    sql_on: ${users_groups.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer 
    sql_on: ${users_groups.group_id} = ${groups.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer 
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer 
    sql_on: ${groups.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }
}

