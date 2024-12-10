# The name of this view in Looker is "Sales Data"
view: sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `supermarket_random_data.sales_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount Spent" in Explore.

  dimension: amount_spent {
    type: number
    sql: ${TABLE}.amount_spent ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: loyalty {
    type: string
    sql: ${TABLE}.loyalty ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: purchased {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.purchased_at ;;
  }

  dimension: quantity_products {
    type: number
    sql: ${TABLE}.quantity_products ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }
  measure: count {
    type: count
  }
}
