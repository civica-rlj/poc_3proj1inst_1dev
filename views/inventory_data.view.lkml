# The name of this view in Looker is "Inventory Data"
view: inventory_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `supermarket_random_data.inventory_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Product ID" in Explore.

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: stock_level {
    type: number
    sql: ${TABLE}.stock_level ;;
  }

  dimension: stock_movement {
    type: number
    sql: ${TABLE}.stock_movement ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
  }
}
