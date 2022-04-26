view: sales_by_category {
  derived_table: {
    sql:
    WITH
events AS (
   SELECT action_type, start_time, result__order
   FROM retail.events
   WHERE action_type = "PurchaseCart"
   ),
flat AS (
   SELECT
       FORMAT_DATE("%x",start_time) as start, action_type, start_time, offer.includes_object.amount_of_good as amt, offer.includes_object.type_of_good.sku as sku
       FROM events e
       CROSS JOIN UNNEST(e.result__order.accepted_offer) as offer
      ),
product AS (
     SELECT p.category as category,p.sku as sku, p.name as name, p.image, offer.availabilityEnds as offer_ends, offer.price as price
   FROM retail.products p
   CROSS JOIN UNNEST(p.offers) as offer
   )
SELECT p.category as sku_category, p.sku as looker_sku, p.price as total
FROM flat f
JOIN product AS p on f.sku = p.sku;;
  }
  dimension: looker_sku {
    type: number
    sql: ${TABLE}.looker_sku ;;
    value_format: "00000"
  }
  dimension: looker_category {
    type: string
    sql: ${TABLE}.sku_category;;
  }
  dimension: total{
    type: number
    sql: ${TABLE}.total;;
  }
}
