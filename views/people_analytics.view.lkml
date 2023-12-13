view: people_analytics {
  sql_table_name: `people_analytics.people_analytics`
    ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.active_status ;;
  }

  measure: total_active_status {
    type: sum
    sql: ${active_status} ;;
  }

  measure: average_active_status {
    type: average
    sql: ${active_status} ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_group {
    type: tier
    tiers: [18,25,35,45,55,65]
    sql: ${age} ;;
    style: integer


  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}.education ;;
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.employee_id ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}.employment_status ;;
  }

  dimension: first_level_manager {
    type: number
    sql: ${TABLE}.first_level_manager ;;
  }

  dimension: fourth_level_manager {
    type: string
    sql: ${TABLE}.fourth_level_manager ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: hire {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hire_date ;;
  }

  dimension: job_level {
    type: string
    sql: ${TABLE}.job_level ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: race {
    hidden: yes
    type: string
    sql: ${TABLE}.race ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }

  dimension: second_level_manager {
    type: number
    sql: ${TABLE}.second_level_manager ;;
  }

  dimension: sexual_orientation {
    hidden: yes
    type: string
    sql: ${TABLE}.sexual_orientation ;;
  }

  dimension: sub_department {
    type: string
    sql: ${TABLE}.sub_department ;;
  }

  dimension: tenure {
    type: number
    sql: ${TABLE}.tenure ;;
  }

  dimension_group: term {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.term_date ;;
  }

  dimension: term_reason {
    type: string
    sql: ${TABLE}.term_reason ;;
  }

  dimension: term_type {
    type: string
    sql: ${TABLE}.term_type ;;
  }

  dimension: third_level_manager {
    type: number
    sql: ${TABLE}.third_level_manager ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: gender_selector {
    type: string
    sql: ${TABLE}.gender ;;
    link: {
      label: "Femenino"
      url: "https://nttdatacorporation.cloud.looker.com/dashboards/25?Gender={{_filters['people_analytics.gender']}}&Active+Status={{_filters['people_analytics.active_status']}}"
    }
  }
}
