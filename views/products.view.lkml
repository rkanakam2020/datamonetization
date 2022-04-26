view: products {
  sql_table_name: `retail.products`
    ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: gtin {
    type: string
    sql: ${TABLE}.gtin ;;
  }

  dimension: image {
    hidden: yes
    sql: ${TABLE}.image ;;
  }

  dimension: in_language {
    type: string
    sql: ${TABLE}.in_language ;;
  }

  dimension: in_product_with_group_id {
    type: string
    sql: ${TABLE}.in_product_with_group_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: offers {
    hidden: yes
    sql: ${TABLE}.offers ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: products__image {
  dimension: products__image {
    type: string
    sql: products__image ;;
  }
}

view: products__offers {
  dimension_group: availability_ends {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: availabilityEnds ;;
  }

  dimension: identifier {
    type: string
    sql: identifier ;;
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: price_currency {
    type: string
    sql: priceCurrency ;;
  }

  dimension: products__offers {
    type: string
    hidden: yes
    sql: products__offers ;;
  }
}
