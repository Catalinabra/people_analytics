view: sql_runner_query {
  derived_table: {
    datagroup_trigger: people_analytics_datagroup_2
    sql: select age, department
      from people_analytics
      where age between 20 and 30
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  set: detail {
    fields: [age, department]
  }
}
