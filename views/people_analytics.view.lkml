# The name of this view in Looker is "People Analytics"
view: people_analytics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `people_analytics.people_analytics`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Status" in Explore.

  dimension: active_status {
    type: number
    sql: ${TABLE}.active_status ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

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
}
