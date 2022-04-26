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
      type: looker_column
      fields: [basket_count_by_sku.number_of_baskets, basket_count_by_sku.product]
      sorts: [basket_count_by_sku.number_of_baskets desc]
      limit: 10
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      show_null_points: true
      defaults_version: 1




