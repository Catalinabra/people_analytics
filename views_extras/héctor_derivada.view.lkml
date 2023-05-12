view: héctor_derivada {
  derived_table: {
    explore_source: people_analytics {
      column: employee_id {}
      column: age {}
      column: salary {}
      column: education {}
    }
  }
  dimension: employee_id {
    description: ""
    type: number
  }
  dimension: age {
    description: ""
    type: number
  }
  dimension: salary {
    description: ""
    type: number
  }
  dimension: education {
    description: ""
  }
}
