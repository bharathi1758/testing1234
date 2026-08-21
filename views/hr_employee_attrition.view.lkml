
view: hr_employee_attrition {
  derived_table: {

    sql: WITH hr_employee_attrition AS (

                      SELECT 1001 AS employee_id, 'Rahul' AS first_name, 'Sharma' AS last_name, 'Male' AS gender, 32 AS age,
                             'Sales' AS department, 'Sales Executive' AS job_role, 'Married' AS marital_status,
                             'Bachelors' AS education_level, 5 AS years_at_company, 45000 AS monthly_income,
                             3 AS job_satisfaction, 2 AS work_life_balance, 'No' AS attrition,
                             'Pune' AS city,
                             DATE '2019-04-10' AS hire_date, NULL AS exit_date

      UNION ALL

      SELECT 1002, 'Priya', 'Kapoor', 'Female', 28, 'HR', 'HR Manager', 'Single', 'Masters',
      3, 60000, 4, 3, 'No', 'Mumbai', DATE '2020-06-15', NULL

      UNION ALL

      SELECT 1003, 'Amit', 'Verma', 'Male', 40, 'IT', 'Software Engineer', 'Married', 'Bachelors',
      10, 85000, 2, 2, 'Yes', 'Bangalore', DATE '2014-02-20', DATE '2023-08-12'

      UNION ALL

      SELECT 1004, 'Sneha', 'Patil', 'Female', 35, 'Finance', 'Accountant', 'Married', 'Masters',
      7, 70000, 3, 3, 'No', 'Hyderabad', DATE '2017-11-01', NULL

      UNION ALL

      SELECT 1005, 'Karan', 'Malhotra', 'Male', 29, 'Sales', 'Sales Executive', 'Single', 'Bachelors',
      2, 40000, 1, 2, 'Yes', 'Pune', DATE '2022-01-10', DATE '2024-03-05'

      UNION ALL

      SELECT 1006, 'Neha', 'Singh', 'Female', 31, 'IT', 'Data Analyst', 'Married', 'Masters',
      4, 75000, 4, 4, 'No', 'Mumbai', DATE '2021-05-19', NULL

      UNION ALL

      SELECT 1007, 'Rohit', 'Gupta', 'Male', 45, 'Operations', 'Manager', 'Married', 'Masters',
      15, 95000, 2, 2, 'Yes', 'Bangalore', DATE '2009-07-23', DATE '2022-12-30'

      UNION ALL

      SELECT 1008, 'Pooja', 'Nair', 'Female', 27, 'Marketing', 'Marketing Executive', 'Single', 'Bachelors',
      3, 50000, 3, 3, 'No', 'Hyderabad', DATE '2021-03-15', NULL

      UNION ALL

      SELECT 1009, 'Arjun', 'Reddy', 'Male', 38, 'IT', 'DevOps Engineer', 'Married', 'Masters',
      8, 90000, 2, 3, 'Yes', 'Pune', DATE '2016-09-05', DATE '2024-01-18'

      UNION ALL

      SELECT 1010, 'Meera', 'Joshi', 'Female', 30, 'HR', 'Recruiter', 'Single', 'Bachelors',
      4, 55000, 4, 4, 'No', 'Mumbai', DATE '2020-12-11', NULL

      UNION ALL

      SELECT 1011, 'Vikram', 'Desai', 'Male', 34, 'Finance', 'Financial Analyst', 'Married', 'Masters',
      6, 72000, 3, 3, 'Yes', 'Bangalore', DATE '2018-10-08', NULL

      UNION ALL

      SELECT 1012, 'Anjali', 'Mehta', 'Female', 26, 'Marketing', 'Content Strategist', 'Single', 'Bachelors',
      2, 48000, 2, 2, 'Yes', 'Hyderabad', DATE '2022-05-01', DATE '2024-02-14'

      UNION ALL

      SELECT 1013, 'Suresh', 'Iyer', 'Male', 41, 'Operations', 'Supervisor', 'Married', 'Diploma',
      12, 80000, 3, 3, 'No', 'Pune', DATE '2012-07-07', NULL

      UNION ALL

      SELECT 1014, 'Kavita', 'Chopra', 'Female', 37, 'Sales', 'Sales Manager', 'Married', 'Masters',
      9, 88000, 2, 2, 'Yes', 'Mumbai', DATE '2015-11-19', DATE '2023-11-01'

      UNION ALL

      SELECT 1015, 'Manoj', 'Pillai', 'Male', 33, 'IT', 'QA Engineer', 'Single', 'Bachelors',
      5, 65000, 3, 3, 'No', 'Bangalore', DATE '2019-06-12', NULL


      UNION ALL
SELECT 1101,'Arjun','Patil','Male',29,'IT','Software Engineer','Single','Bachelors',3,72000,4,4,'No','Pune',DATE '2023-02-15',NULL
UNION ALL
SELECT 1102,'Snehal','Joshi','Female',27,'HR','HR Executive','Single','Masters',2,54000,4,5,'Yes','Mumbai',DATE '2024-01-18',NULL
UNION ALL
SELECT 1103,'Rakesh','Sharma','Male',34,'Sales','Sales Manager','Married','MBA',5,98000,5,3,'No','Delhi',DATE '2021-08-20',NULL
UNION ALL
SELECT 1104,'Pooja','Kulkarni','Female',31,'Finance','Financial Analyst','Married','Masters',4,76000,4,4,'No','Pune',DATE '2022-05-12',NULL
UNION ALL
SELECT 1105,'Kunal','Verma','Male',26,'Marketing','Marketing Executive','Single','Bachelors',1,52000,3,4,'No','Bangalore',DATE '2025-03-25',NULL
UNION ALL
SELECT 1106,'Neha','Patel','Female',28,'IT','QA Engineer','Single','Bachelors',2,65000,4,5,'No','Hyderabad',DATE '2024-07-10',NULL
UNION ALL
SELECT 1107,'Amit','Yadav','Male',36,'Operations','Operations Manager','Married','Masters',5,115000,5,4,'No','Chennai',DATE '2021-11-05',NULL
UNION ALL
SELECT 1108,'Rutuja','Deshmukh','Female',30,'Sales','Sales Executive','Married','Bachelors',3,51000,3,3,'No','Pune',DATE '2023-04-10',NULL
UNION ALL
SELECT 1109,'Vikas','More','Male',25,'IT','Developer','Single','Bachelors',1,67000,4,4,'No','Mumbai',DATE '2025-01-08',NULL
UNION ALL
SELECT 1110,'Anjali','Nair','Female',29,'HR','Recruiter','Single','MBA',3,58000,4,4,'Yes','Kochi',DATE '2023-06-14',NULL
UNION ALL
SELECT 1111,'Prashant','Kale','Male',32,'Finance','Accountant','Married','Bachelors',4,69000,3,3,'No','Nagpur',DATE '2022-03-11',NULL
UNION ALL
SELECT 1112,'Shweta','Pawar','Female',27,'Marketing','Digital Marketing Specialist','Single','Masters',2,62000,4,5,'No','Pune',DATE '2024-05-12',NULL
UNION ALL
SELECT 1113,'Nitin','Jadhav','Male',35,'IT','Tech Lead','Married','Masters',5,125000,5,4,'No','Bangalore',DATE '2021-09-07',NULL
UNION ALL
SELECT 1114,'Komal','Shinde','Female',26,'Sales','Sales Executive','Single','Bachelors',1,47000,3,3,'Yes','Pune',DATE '2025-02-20',DATE '2026-06-30'
UNION ALL
SELECT 1115,'Sagar','Patil','Male',28,'Operations','Operations Executive','Single','Bachelors',3,56000,4,4,'No','Mumbai',DATE '2023-01-15',NULL
UNION ALL
SELECT 1116,'Deepali','Rao','Female',30,'Finance','Financial Analyst','Married','Masters',4,78000,5,4,'No','Hyderabad',DATE '2022-04-18',NULL
UNION ALL
SELECT 1117,'Harish','Singh','Male',33,'IT','Software Engineer','Married','Bachelors',4,85000,4,3,'No','Pune',DATE '2022-08-25',NULL
UNION ALL
SELECT 1118,'Monika','Naik','Female',25,'HR','HR Executive','Single','MBA',1,50000,4,4,'Yes','Goa',DATE '2025-06-02',NULL
UNION ALL
SELECT 1119,'Rohit','Mishra','Male',31,'Marketing','Marketing Manager','Married','Masters',5,92000,5,4,'No','Delhi',DATE '2021-10-01',NULL
UNION ALL
SELECT 1120,'Priyanka','Joshi','Female',28,'Sales','Sales Executive','Single','Bachelors',2,49000,3,5,'No','Pune',DATE '2024-03-05',NULL
UNION ALL
SELECT 1121,'Abhishek','Gupta','Male',29,'IT','Developer','Single','Bachelors',3,74000,4,4,'No','Noida',DATE '2023-05-19',NULL
UNION ALL
SELECT 1122,'Aarti','Patil','Female',32,'Finance','Accountant','Married','Masters',5,81000,4,3,'No','Mumbai',DATE '2021-07-15',NULL
UNION ALL
SELECT 1123,'Ganesh','Kulkarni','Male',37,'Operations','Operations Manager','Married','MBA',5,118000,5,4,'No','Pune',DATE '2021-03-12',NULL
UNION ALL
SELECT 1124,'Bhavana','Reddy','Female',27,'Marketing','Marketing Executive','Single','Bachelors',2,55000,3,4,'No','Hyderabad',DATE '2024-02-20',NULL
UNION ALL
SELECT 1125,'Siddharth','Mehta','Male',30,'IT','Software Engineer','Married','Bachelors',4,83000,4,4,'No','Ahmedabad',DATE '2022-06-01',NULL
UNION ALL
SELECT 1126,'Vaishali','Kadam','Female',26,'HR','Recruiter','Single','MBA',1,52000,4,5,'Yes','Pune',DATE '2025-04-10',NULL
UNION ALL
SELECT 1127,'Akshay','Dixit','Male',34,'Sales','Regional Sales Manager','Married','Masters',5,105000,5,3,'No','Mumbai',DATE '2021-12-15',NULL
UNION ALL
SELECT 1128,'Madhuri','Shah','Female',31,'Finance','Financial Analyst','Married','Masters',4,79000,4,4,'No','Surat',DATE '2022-09-21',NULL
UNION ALL
SELECT 1129,'Sameer','Chavan','Male',28,'IT','QA Engineer','Single','Bachelors',3,68000,3,4,'No','Pune',DATE '2023-08-27',NULL
UNION ALL
SELECT 1130,'Kritika','Sinha','Female',25,'Marketing','Content Specialist','Single','Bachelors',1,49000,4,5,'No','Bangalore',DATE '2025-05-11',NULL

-- Continue similar pattern

UNION ALL
SELECT 1191,'Mohit','Patel','Male',33,'IT','Tech Lead','Married','Masters',5,122000,5,4,'No','Ahmedabad',DATE '2021-05-21',NULL
UNION ALL
SELECT 1192,'Sneha','Joshi','Female',29,'HR','HR Manager','Married','MBA',4,89000,5,4,'No','Mumbai',DATE '2022-02-17',NULL
UNION ALL
SELECT 1193,'Ajay','Sharma','Male',28,'Sales','Sales Executive','Single','Bachelors',2,51000,3,3,'Yes','Delhi',DATE '2024-06-20',NULL
UNION ALL
SELECT 1194,'Kiran','Patil','Female',27,'Finance','Accountant','Single','Bachelors',2,61000,4,4,'No','Pune',DATE '2024-04-10',NULL
UNION ALL
SELECT 1195,'Vivek','Naidu','Male',30,'Operations','Operations Executive','Married','Bachelors',3,59000,4,3,'No','Chennai',DATE '2023-09-08',NULL
UNION ALL
SELECT 1196,'Rashmi','More','Female',31,'Marketing','Marketing Manager','Married','Masters',4,91000,5,4,'No','Pune',DATE '2022-07-15',NULL
UNION ALL
SELECT 1197,'Nilesh','Jain','Male',26,'IT','Developer','Single','Bachelors',1,70000,4,5,'No','Bangalore',DATE '2025-02-28',NULL
UNION ALL
SELECT 1198,'Pallavi','Kulkarni','Female',28,'HR','Recruiter','Single','MBA',3,57000,4,4,'No','Pune',DATE '2023-04-16',NULL
UNION ALL
SELECT 1199,'Sandeep','Rao','Male',35,'Finance','Finance Manager','Married','MBA',5,128000,5,4,'Yes','Hyderabad',DATE '2021-01-12',NULL
UNION ALL
SELECT 1200,'Megha','Patwardhan','Female',29,'Sales','Sales Executive','Married','Bachelors',3,53000,4,4,'No','Mumbai',DATE '2023-11-11',NULL

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
    html:
    <div title="Name: {{first_name}} | Department: {{department}} | Attrition: {{attrition}}">{{ value }}</div><br>;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
    html:
     <div title="Employee ID: {{employee_id}} | Department: {{department}} | Attrition: {{attrition}}">{{ value }}</div><br>;;
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

  dimension: job_satisfaction_conditional_formatting {
    type: number
    sql: ${TABLE}.job_satisfaction ;;

    html:
        {% if value==1 %}
        <div style="background-color: #D14242; color: black; text-align: center; "><b>
        {{value}}</b></div>
        {% elsif value == 2 %}
        <div style="background-color: #F57237; color: black; text-align: center;"><b>
        {{value}}</b></div>
        {% elsif value == 3 %}
        <div style="background-color: #F9CB67; color: black; text-align: center;"><b>
        {{value}}</b></div>
        {% elsif value == 4 %}
         <div style="background-color:  #81BE56; color: black; text-align: center;"><b>
        {{value}}</b></div>
        {% endif %}
        ;;
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

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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
  dimension: income_group {
    type: string
    sql:
    CASE
      WHEN ${monthly_income} <= 30000 THEN 'Low Income'
      WHEN ${monthly_income} <= 70000 THEN 'Medium Income'
      ELSE 'High Income'
    END ;;
  }

  dimension: employee_no {
    type: number
    sql: ${employee_id} ;;

    link: {
      label: "View Employee Profile"
      url: "https://hr.company.com/employee/{{ value }}"
    }
  }

  dimension: satisfaction_status {
    sql: ${job_satisfaction} ;;

    html:
      {% if value >= 4 %}
      <span style="color:green;">*****  excellent</span>
      {% elsif value >= 3 %}
      <span style="color:orange;">****  Good</span>
      {% else %}
      <span style="color:red;">**  Poor</span>
      {% endif %} ;;
  }


  measure: attrition_count {
    type: count
    filters: [attrition: "Yes"]
    html:
    {% if value >= 2 %}
    <span style="color:red; font-weight:bold;">
    {{ value }} High
    </span>
    {% elsif value == 1 %}
    <span style="color:orange;">
    {{ value }} Medium
    </span>
    {% else %}
    <span style="color:green;">
    {{ value }} Low
        </span>
      {% endif %} ;;
  }

  dimension: age_bin {
    type: tier
    tiers: [25, 35, 45, 55]
    style: integer
    sql: ${age} ;;
  }

  parameter: attrition_selector {
    type: unquoted
    allowed_value: { label: "Attrition Yes" value: "Yes" }
    allowed_value: { label: "Attrition No" value: "No" }
    allowed_value: { label: "All" value: "All" }
    default_value: "Yes"
  }

  measure: dynamic_attrition_rate {
    type: number
    sql:
    CASE
      WHEN '{% parameter attrition_selector %}' = 'All' THEN 1.0
      ELSE
        1.0 * SUM(
          CASE
            WHEN ${hr_employee_attrition.attrition} = '{% parameter attrition_selector %}' THEN 1
            ELSE 0
          END
        ) / COUNT(*)
    END ;;
    value_format: "0.0%"
  }



  dimension: experience_bin {
    type:  bin
    bins: [5,10,15]
    sql: ${TABLE}.years_at_company ;;
  }

  dimension: experience_group {
    type:  string
    sql:
    CASE when ${TABLE}.years_at_company <= 5 then '0-5 years'
    when ${TABLE}.years_at_company <= 10 then '6-10 years'
    else '10+ years'
    END;;
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
