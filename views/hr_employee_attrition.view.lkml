
view: hr_employee_attrition {
  derived_table: {
    sql: WITH hr_employee_attrition AS (

      SELECT 1001 AS employee_id, 'Rahul' AS first_name, 'Sharma' AS last_name, 'Male' AS gender, 32 AS age, 'Sales' AS department, 'Sales Executive' AS job_role, 'Married' AS marital_status, 'Bachelors' AS education_level, 5 AS years_at_company, 45000 AS monthly_income, 3 AS job_satisfaction, 2 AS work_life_balance, 'No' AS attrition, DATE '2019-04-10' AS hire_date, NULL AS exit_date

      UNION ALL

      SELECT 1002, 'Priya', 'Kapoor', 'Female', 28, 'HR', 'HR Manager', 'Single', 'Masters', 3, 60000, 4, 3, 'No', DATE '2020-06-15', NULL

      UNION ALL

      SELECT 1003, 'Amit', 'Verma', 'Male', 40, 'IT', 'Software Engineer', 'Married', 'Bachelors', 10, 85000, 2, 2, 'Yes', DATE '2014-02-20', DATE '2023-08-12'

      UNION ALL

      SELECT 1004, 'Sneha', 'Patil', 'Female', 35, 'Finance', 'Accountant', 'Married', 'Masters', 7, 70000, 3, 3, 'No', DATE '2017-11-01', NULL

      UNION ALL

      SELECT 1005, 'Karan', 'Malhotra', 'Male', 29, 'Sales', 'Sales Executive', 'Single', 'Bachelors', 2, 40000, 1, 2, 'Yes', DATE '2022-01-10', DATE '2024-03-05'

      UNION ALL

      SELECT 1006, 'Neha', 'Singh', 'Female', 31, 'IT', 'Data Analyst', 'Married', 'Masters', 4, 75000, 4, 4, 'No', DATE '2021-05-19', NULL

      UNION ALL

      SELECT 1007, 'Rohit', 'Gupta', 'Male', 45, 'Operations', 'Manager', 'Married', 'Masters', 15, 95000, 2, 2, 'Yes', DATE '2009-07-23', DATE '2022-12-30'

      UNION ALL

      SELECT 1008, 'Pooja', 'Nair', 'Female', 27, 'Marketing', 'Marketing Executive', 'Single', 'Bachelors', 3, 50000, 3, 3, 'No', DATE '2021-03-15', NULL

      UNION ALL

      SELECT 1009, 'Arjun', 'Reddy', 'Male', 38, 'IT', 'DevOps Engineer', 'Married', 'Masters', 8, 90000, 2, 3, 'Yes', DATE '2016-09-05', DATE '2024-01-18'

      UNION ALL

      SELECT 1010, 'Meera', 'Joshi', 'Female', 30, 'HR', 'Recruiter', 'Single', 'Bachelors', 4, 55000, 4, 4, 'No', DATE '2020-12-11', NULL

      UNION ALL

      SELECT 1011, 'Vikram', 'Desai', 'Male', 34, 'Finance', 'Financial Analyst', 'Married', 'Masters', 6, 72000, 3, 3, 'No', DATE '2018-10-08', NULL

      UNION ALL

      SELECT 1012, 'Anjali', 'Mehta', 'Female', 26, 'Marketing', 'Content Strategist', 'Single', 'Bachelors', 2, 48000, 2, 2, 'Yes', DATE '2022-05-01', DATE '2024-02-14'

      UNION ALL

      SELECT 1013, 'Suresh', 'Iyer', 'Male', 41, 'Operations', 'Supervisor', 'Married', 'Diploma', 12, 80000, 3, 3, 'No', DATE '2012-07-07', NULL

      UNION ALL

      SELECT 1014, 'Kavita', 'Chopra', 'Female', 37, 'Sales', 'Sales Manager', 'Married', 'Masters', 9, 88000, 2, 2, 'Yes', DATE '2015-11-19', DATE '2023-11-01'

      UNION ALL

      SELECT 1015, 'Manoj', 'Pillai', 'Male', 33, 'IT', 'QA Engineer', 'Single', 'Bachelors', 5, 65000, 3, 3, 'No', DATE '2019-06-12', NULL

      )

      SELECT * FROM hr_employee_attrition ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
    drill_fields: [employee_id,first_name,attrition]
  }

  dimension: job_role {
    type: string
    sql: ${TABLE}.job_role ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }

  dimension: years_at_company {
    type: number
    sql: ${TABLE}.years_at_company ;;
  }

  dimension: monthly_income {
    type: number
    sql: ${TABLE}.monthly_income ;;
  }

  dimension: job_satisfaction {
    type: number
    sql: ${TABLE}.job_satisfaction ;;
  }

  dimension: work_life_balance {
    type: number
    sql: ${TABLE}.work_life_balance ;;
  }

  dimension: attrition {
    type: string
    sql: ${TABLE}.attrition ;;
    html: {% if value == 'No' %}
    <span style="color: green; font-weight: bold;">
    NO </span>
    {% elsif value == 'Yes' %}
    <span style="color: red; font-weight: bold;">
    YES </span>
    {% endif %} ;;
  }

  dimension: hire_date {
    type: date
    datatype: date
    sql: ${TABLE}.hire_date ;;
  }

  dimension: exit_date {
    type: date
    datatype: date
    sql: ${TABLE}.exit_date ;;
  }

  dimension: employee_status {
    type: string
    sql: ${TABLE}.attrition ;;

  }

  set: detail {
    fields: [
        employee_id,
  first_name,
  last_name,
  gender,
  age,
  department,
  job_role,
  marital_status,
  education_level,
  years_at_company,
  monthly_income,
  job_satisfaction,
  work_life_balance,
  attrition,
  hire_date,
  exit_date
    ]
  }
}
