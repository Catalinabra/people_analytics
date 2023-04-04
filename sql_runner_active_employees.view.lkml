view: DT_active_employees  {
    derived_table: {
      sql: SELECT job_level, gender, AVG(salary) as AVG_salary
              FROM people_analytics
              WHERE active_status = 1
              GROUP BY job_level, gender
              ORDER BY AVG_salary DESC
               ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: job_level {
      type: string
      sql: ${TABLE}.job_level ;;
    }

    dimension: gender {
      type: string
      sql: ${TABLE}.gender ;;
    }

    dimension: avg_salary {
      type: number
      sql: ${TABLE}.AVG_salary ;;
    }

    set: detail {
      fields: [job_level, gender, avg_salary]
    }
  }

