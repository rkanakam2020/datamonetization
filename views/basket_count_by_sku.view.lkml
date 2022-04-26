view: basket_count_by_sku {
  derived_table: {
    sql:
    SELECT sku as product,count(basket_id) as number_of_baskets,date as transaction_date
    FROM `retail.dm_item_transaction` group by 1,3 order by 2 desc;;
  }
  dimension: product {
    type: number
    sql: ${TABLE}.product ;;
    value_format: "00000"
  }
  dimension: number_of_baskets {
    type: number
    sql: ${TABLE}.number_of_baskets ;;
  }
  dimension: transaction_date{
    type: date
    sql: ${TABLE}.transaction_date ;;
  }
}
