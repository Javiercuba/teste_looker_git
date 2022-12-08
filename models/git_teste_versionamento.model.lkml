connection: "poc-gofind"

# include all the views
include: "/views/**/*.view"

datagroup: git_teste_versionamento_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: git_teste_versionamento_default_datagroup

explore: vendas {}
