connection: "looker-retailshared"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: data_monetization_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: data_monetization_default_datagroup

explore: events {
  join: events__experiment {
    view_label: "Events: Experiment"
    sql: LEFT JOIN UNNEST(${events.experiment}) as events__experiment ;;
    relationship: one_to_many
  }

  join: events__page_categories {
    view_label: "Events: Page Categories"
    sql: LEFT JOIN UNNEST(${events.page_categories}) as events__page_categories ;;
    relationship: one_to_many
  }

  join: events__result__order__accepted_offer {
    view_label: "Events: Result Order Accepted Offer"
    sql: LEFT JOIN UNNEST(${events.result__order__accepted_offer}) as events__result__order__accepted_offer ;;
    relationship: one_to_many
  }

  join: events__result__item_list__item_list_element {
    view_label: "Events: Result Item List Item List Element"
    sql: LEFT JOIN UNNEST(${events.result__item_list__item_list_element}) as events__result__item_list__item_list_element ;;
    relationship: one_to_many
  }

  join: events__object__item_list__item_list_element {
    view_label: "Events: Object Item List Item List Element"
    sql: LEFT JOIN UNNEST(${events.object__item_list__item_list_element}) as events__object__item_list__item_list_element ;;
    relationship: one_to_many
  }
}

explore: aggregated_sales {}

explore: products {
  join: products__image {
    view_label: "Products: Image"
    sql: LEFT JOIN UNNEST(${products.image}) as products__image ;;
    relationship: one_to_many
  }

  join: products__offers {
    view_label: "Products: Offers"
    sql: LEFT JOIN UNNEST(${products.offers}) as products__offers ;;
    relationship: one_to_many
  }
}

explore: dm_item_transaction {
}
explore: basket_count_by_sku {
  }
explore: sales_by_category {
  }
