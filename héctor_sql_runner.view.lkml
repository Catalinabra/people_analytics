view: héctor_sql_runner {
  derived_table: {
    sql: select AVG(salary)  as Promedio_Salario, age as Edad
      from people_analytics
      group by age
      order by Edad
       ;;
    persist_for: "8 hours"
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: promedio_salario {
    type: number
    sql: ${TABLE}.Promedio_Salario ;;
  }

  dimension: edad {
    type: number
    sql: ${TABLE}.Edad ;;
  }

  set: detail {
    fields: [promedio_salario, edad]
  }
}
