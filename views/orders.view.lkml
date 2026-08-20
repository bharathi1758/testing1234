view: orders {
  sql_table_name: `demo_dataset.orders` ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderID ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderDate ;;
  }
  dimension: order_name {
    type: string
    sql: ${TABLE}.OrderName ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }


  dimension :price_category {
    type: string
    sql: CASE WHEN ${TABLE}.Price < 300 THEN 'low' ELSE 'high'
      END ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id, order_name, sales.count]
  }


  measure: average_price {
    type: average
    sql: ${price} ;;
  }



}
