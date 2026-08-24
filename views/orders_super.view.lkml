
view: orders_super {
  derived_table: {
    sql: {% raw %} select * from super.orders_super {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: order_date {
    type: date
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: ship_date {
    type: date
    datatype: date
    sql: ${TABLE}.Ship_Date ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.Ship_Mode ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  set: detail {
    fields: [
        order_id,
	order_date,
	ship_date,
	ship_mode,
	customer_id,
	quantity
    ]
  }
}
