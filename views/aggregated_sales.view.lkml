view: aggregated_sales {
  sql_table_name: `retail.aggregated_sales`
    ;;

  dimension: add_to_cart_quantity {
    type: number
    sql: ${TABLE}.add_to_cart_quantity ;;
  }

  dimension_group: last_day_of_week {
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
    sql: ${TABLE}.last_day_of_week ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: view_item_detail_quantity {
    type: number
    sql: ${TABLE}.view_item_detail_quantity ;;
  }

  dimension: view_search_result_quantity {
    type: number
    sql: ${TABLE}.view_search_result_quantity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
