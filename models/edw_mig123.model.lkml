connection: "bigquery"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: edw_mig123_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: edw_mig123_default_datagroup

explore: orders {}

explore: test {}
explore: demo_billing {

  join: demo_customer_100 {
    type: left_outer
    relationship: many_to_one
    sql_on: ${demo_billing.customer_id} = ${demo_customer_100.customer_id} ;;
  }

  join: demo_sales_100 {
    type: left_outer
    relationship: one_to_many
    sql_on: ${demo_billing.customer_id} = ${demo_sales_100.customer_id} ;;
  }

}

explore: hr_employee_attrition {}

explore: demo_sales_100 {
  join: demo_customer_100 {
    type: left_outer
    sql_on: ${demo_customer_100.customer_id} = ${demo_sales_100.customer_id} ;;
    relationship: many_to_one
  }

}
explore: demo_customer_100 {}

explore: sales {
  join: orders {
    type: left_outer
    sql_on: ${sales.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}
explore: dummy_sales_data {

  access_filter: {
    field: dummy_sales_data.region
    user_attribute: test_region
  }

}
explore: student {}

explore: final {}

explore: teacher {}

explore: test_error_records {
    join: test_error_records__attributes {
      view_label: "Test Error Records: Attributes"
      sql: LEFT JOIN UNNEST(${test_error_records.attributes}) as test_error_records__attributes ;;
      relationship: one_to_many
    }
}
