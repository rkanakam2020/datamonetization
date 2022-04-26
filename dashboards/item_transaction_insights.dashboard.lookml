- dashboard: item_transaction_insights
  title: Item Transaction Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: basket_count_by_sku
      title: SKUs and baskets
      model: data_monetization
      explore: basket_count_by_sku
      type: single_value
      fields: [basket_count_by_sku.number_of_baskets,basket_count_by_sku.product]
      sorts: [basket_count_by_sku.product]
      limit: 10
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      color_application:
        collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
        palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      custom_color: "#1A73E8"
      single_value_title: SKU Conversion rate by customer baskets
      show_view_names: false
      defaults_version: 1
      series_types: {}

