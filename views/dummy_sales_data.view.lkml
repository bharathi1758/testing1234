
view: dummy_sales_data {
  derived_table: {
    sql:  WITH employee_sales AS (
        SELECT 101 AS employee_id, 'John' AS employee_name, 'john@demo.com' AS email,
               'Sales' AS department, 'North' AS region, 'USA' AS country, 12000 AS sales_amount
        UNION ALL
        SELECT 102, 'Mike', 'mike@demo.com', 'Sales', 'South', 'USA', 15000
        UNION ALL
        SELECT 103, 'Sarah', 'sarah@demo.com', 'Sales', 'East', 'USA', 18000
        UNION ALL
        SELECT 104, 'David', 'david@demo.com', 'Sales', 'West', 'USA', 11000
        UNION ALL
        SELECT 105, 'Ram', 'ram@demo.com', 'Sales', 'India', 'India', 25000
        UNION ALL
        SELECT 106, 'Priya', 'priya@demo.com', 'Sales', 'India', 'India', 22000
        UNION ALL
        SELECT 107, 'Akhil', 'akhil@demo.com', 'Marketing', 'India', 'India', 9000
        UNION ALL
        SELECT 108, 'Emma', 'emma@demo.com', 'Marketing', 'North', 'USA', 8000
        UNION ALL
        SELECT 109, 'Lucas', 'lucas@demo.com', 'Finance', 'South', 'USA', 7000
        UNION ALL
        SELECT 110, 'Sophia', 'sophia@demo.com', 'Finance', 'West', 'USA', 6000
      )

      SELECT *
      FROM employee_sales ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.employee_id ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.employee_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}.sales_amount ;;
  }

  set: detail {
    fields: [
        employee_id,
  employee_name,
  email,
  department,
  region,
  country,
  sales_amount
    ]
  }
}
