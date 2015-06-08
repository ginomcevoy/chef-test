name "db_master"
description "Master database server"

all_env = [
  "role[base]", 
  "recipe[mysql::server@5.5.4]"
] 

run_list(all_env)

env_run_lists(
  "_default" => all_env,
  "prod" => all_env,
  "dev" => all_env,
)
