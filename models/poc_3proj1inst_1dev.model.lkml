connection: "@{connection_name}"

include: "/views/**/*.view.lkml"

datagroup: poc_3proj1inst_1dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_3proj1inst_1dev_default_datagroup

explore: sales_data {}
