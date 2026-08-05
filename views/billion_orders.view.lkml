view: billion_orders {
  sql_table_name: demo_db.billion_orders ;;

  dimension: customer_id {
    type: string
    suggest_explore: customer_id_suggestions
    suggest_dimension: customer_id_suggestions.customer_id
    suggest_persist_for: "24 hours"
    sql: ${TABLE}.customer_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_price {
    type: number
    sql: ${TABLE}.order_price ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id]
  }
}

# Dedicated view for filter suggestions
view: customer_id_suggestions {
  sql_table_name: demo_db.billion_orders ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }
}
