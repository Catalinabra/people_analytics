connection: "people_analytics"
include: "/views/**/*.view"
include: "/views_extras/**/*.view"

datagroup: people_analytics_datagroup {
  sql_trigger: SELECT MAX(age) FROM people_analytics ;;
  max_cache_age: "24 hours"
}

explore: people_analytics {
  persist_with: people_analytics_datagroup
}
