- dashboard: municipal_bonds
  title: Municipal Bonds_Municipal
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Trade Information
    name: Trade Information
    model: Fixed_Income
    explore: muni
    type: looker_grid
    fields: [muni.dated_date_of_the_issue_traded_date, muni.dollar_price_of_the_trade,
      muni.trade_type_indicator]
    filters:
      muni.trade_date: ''
    sorts: [muni.dated_date_of_the_issue_traded_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      muni.cusip: CUSIP
      muni.dated_date_of_the_issue_traded_date: DATE OF ISSUE TRADED
      muni.dollar_price_of_the_trade: DOLLAR PRICE OF TRADE
      muni.trade_type_indicator: TRADE TYPE
    series_text_format:
      muni.trade_type_indicator:
        fg_color: "#079c98"
      muni.dollar_price_of_the_trade:
        fg_color: "#1A73E8"
      muni.cusip: {}
      muni.dated_date_of_the_issue_traded_date: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      CUSIP: muni.cusip
    row: 22
    col: 9
    width: 15
    height: 5
  - title: Trade Price Information
    name: Trade Price Information
    model: Fixed_Income
    explore: muni
    type: looker_grid
    fields: [muni.trade_date, muni.price_at_issue, muni.dollar_price_of_the_trade,
      muni.interest_rate_of_the_issue_traded, muni.the_par_value_of_the_trade]
    filters:
      muni.trade_date: ''
    sorts: [muni.trade_date desc]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      muni.cusip: CUSIP
      muni.price_at_issue: PRICE AT ISSUE
      muni.dollar_price_of_the_trade: PRICE OF TRADE
      muni.interest_rate_of_the_issue_traded: INTEREST RATE
      muni.the_par_value_of_the_trade: PAR VALUE
      muni.the_yield_of_the_trade: YIELD
      muni.trade_date: TRADE DATE
    series_text_format:
      muni.cusip:
        fg_color: "#000000"
      muni.price_at_issue:
        fg_color: "#1A73E8"
      muni.dollar_price_of_the_trade:
        fg_color: "#079c98"
      muni.interest_rate_of_the_issue_traded:
        fg_color: "#12B5CB"
      muni.the_par_value_of_the_trade:
        fg_color: "#1A73E8"
      muni.the_yield_of_the_trade:
        fg_color: "#079c98"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      CUSIP: muni.cusip
    row: 37
    col: 13
    width: 11
    height: 5
  - title: Ratings of Trades
    name: Ratings of Trades
    model: Fixed_Income
    explore: muni
    type: looker_grid
    fields: [muni.dated_date_of_the_issue_traded_date, muni.name, muni.issuer_industry,
      muni.issue_size, muni.dollar_price_of_the_trade, muni.ratings1, muni.ratings2,
      muni.ratings3]
    filters:
      muni.trade_date: ''
    sorts: [muni.dated_date_of_the_issue_traded_date desc]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      muni.cusip: CUSIP
      muni.dated_date_of_the_issue_traded_date: DATE OF ISSUE
      muni.issuer_industry: ISSUER INDUSTRY
      muni.name: GEOGRAPHY
      muni.issue_size: ISSUE SIZE
      muni.dollar_price_of_the_trade: DOLLAR PRICE OF TRADE
      muni.ratings1: RATING 1
      muni.ratings2: RATING 2
      muni.ratings3: RATING 3
    series_cell_visualizations:
      muni.dollar_price_of_the_trade:
        is_active: false
    series_text_format:
      muni.dated_date_of_the_issue_traded_date: {}
      muni.name:
        fg_color: "#1A73E8"
      muni.issuer_industry:
        fg_color: "#079c98"
      muni.issue_size:
        fg_color: "#12B5CB"
      muni.dollar_price_of_the_trade:
        fg_color: "#1A73E8"
      muni.ratings1:
        fg_color: "#079c98"
      muni.ratings2:
        fg_color: "#12B5CB"
      muni.ratings3:
        fg_color: "#1A73E8"
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      CUSIP: muni.cusip
    row: 58
    col: 0
    width: 24
    height: 6
  - title: Trade Price Over Time
    name: Trade Price Over Time
    model: Fixed_Income
    explore: muni
    type: looker_line
    fields: [muni.dollar_price_of_the_trade, muni.trade_date, muni.the_yield_of_the_trade,
      muni.the_par_value_of_the_trade, muni.price_at_issue]
    filters:
      muni.trade_date: ''
    sorts: [muni.trade_date]
    limit: 500
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_label: TRADE DATE
    series_colors: {}
    series_labels:
      muni.dollar_price_of_the_trade: PRICE OF TRADE
    defaults_version: 1
    listen:
      CUSIP: muni.cusip
    row: 34
    col: 0
    width: 13
    height: 8
  - title: CUSIP
    name: CUSIP
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.cusip]
    filters:
      muni.trade_date: ''
    sorts: [muni.cusip]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    font_size: 12
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      CUSIP: muni.cusip
    row: 0
    col: 9
    width: 6
    height: 3
  - title: Last Date Issued
    name: Last Date Issued
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.trade_date]
    fill_fields: [muni.trade_date]
    filters:
      muni.trade_date: ''
    sorts: [muni.trade_date desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 27
    col: 9
    width: 7
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: _______________________________________________________________________
    row: 3
    col: 0
    width: 24
    height: 2
  - title: Average Price of Trade
    name: Average Price of Trade
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [average_price_of_trade]
    filters:
      muni.trade_date: ''
    sorts: [average_price_of_trade desc]
    limit: 500
    dynamic_fields: [{measure: average_price_of_trade, based_on: muni.dollar_price_of_the_trade,
        type: average, label: Average Price of Trade, expression: !!null '', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    value_labels: legend
    label_type: labPer
    listen:
      CUSIP: muni.cusip
    row: 34
    col: 13
    width: 5
    height: 3
  - title: Average Yield of Trade
    name: Average Yield of Trade
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.the_yield_of_the_trade]
    filters:
      muni.trade_date: ''
    sorts: [muni.the_yield_of_the_trade]
    limit: 500
    dynamic_fields: [{measure: average_yield_of_trade, based_on: muni.the_yield_of_the_trade,
        type: average, label: Average Yield of Trade, expression: !!null '', value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 46
    col: 7
    width: 5
    height: 3
  - name: Ratings of Trade Issuer
    type: text
    title_text: Ratings of Trade Issuer
    subtitle_text: ''
    body_text: ''
    row: 56
    col: 0
    width: 24
    height: 2
  - name: Price of Trade Comparisons
    type: text
    title_text: Price of Trade Comparisons
    subtitle_text: ''
    body_text: ''
    row: 32
    col: 0
    width: 24
    height: 2
  - name: Past Trade Information
    type: text
    title_text: Past Trade Information
    subtitle_text: ''
    body_text: ''
    row: 20
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: _______________________________________________________________________
    row: 54
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: _______________________________________________________________________
    row: 64
    col: 0
    width: 24
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: _______________________________________________________________________
    row: 30
    col: 0
    width: 24
    height: 2
  - title: ''
    name: " (5)"
    model: Fixed_Income
    explore: muni
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [muni.maturity_date_of_the_issue_traded_date, muni.maturity_size, muni.the_par_value_of_the_trade]
    filters:
      muni.trade_date: ''
    sorts: [muni.maturity_size]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '13'
    orientation: auto
    style_muni.dated_date_of_the_issue_traded_date: "#1b2db2"
    show_title_muni.dated_date_of_the_issue_traded_date: true
    title_override_muni.dated_date_of_the_issue_traded_date: DATE OF ISSUE TRADED
    title_placement_muni.dated_date_of_the_issue_traded_date: above
    value_format_muni.dated_date_of_the_issue_traded_date: ''
    style_muni.maturity_date_of_the_issue_traded_date: "#1b2db2"
    show_title_muni.maturity_date_of_the_issue_traded_date: true
    title_override_muni.maturity_date_of_the_issue_traded_date: MATURITY DATE
    title_placement_muni.maturity_date_of_the_issue_traded_date: above
    value_format_muni.maturity_date_of_the_issue_traded_date: ''
    show_comparison_muni.maturity_date_of_the_issue_traded_date: false
    style_muni.maturity_size: "#1b2db2"
    show_title_muni.maturity_size: true
    title_override_muni.maturity_size: MATURITY SIZE
    title_placement_muni.maturity_size: above
    value_format_muni.maturity_size: ''
    show_comparison_muni.maturity_size: false
    style_muni.the_par_value_of_the_trade: "#1b2db2"
    show_title_muni.the_par_value_of_the_trade: true
    title_override_muni.the_par_value_of_the_trade: PAR VALUE OF TRADE
    title_placement_muni.the_par_value_of_the_trade: above
    value_format_muni.the_par_value_of_the_trade: ''
    show_comparison_muni.the_par_value_of_the_trade: false
    comparison_style_muni.maturity_date_of_the_issue_traded_date: value
    comparison_show_label_muni.maturity_date_of_the_issue_traded_date: false
    comparison_label_placement_muni.maturity_date_of_the_issue_traded_date: below
    comp_value_format_muni.maturity_date_of_the_issue_traded_date: ''
    comparison_style_muni.the_par_value_of_the_trade: value
    comparison_show_label_muni.the_par_value_of_the_trade: true
    comparison_label_placement_muni.the_par_value_of_the_trade: below
    comp_value_format_muni.the_par_value_of_the_trade: ''
    comparison_style_muni.maturity_size: value
    comparison_show_label_muni.maturity_size: true
    comparison_label_placement_muni.maturity_size: below
    comp_value_format_muni.maturity_size: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 7
    col: 11
    width: 6
    height: 8
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: _______________________________________________________________________
    row: 18
    col: 0
    width: 24
    height: 2
  - name: Trade Information (2)
    type: text
    title_text: Trade Information
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 0
    width: 24
    height: 2
  - title: ''
    name: " (7)"
    model: Fixed_Income
    explore: muni
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [muni.ratings1, muni.ratings2, muni.ratings3]
    filters:
      muni.trade_date: ''
    sorts: [muni.ratings1]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '13'
    orientation: auto
    style_muni.ratings1: "#1A73E8"
    show_title_muni.ratings1: true
    title_override_muni.ratings1: RATING 1
    title_placement_muni.ratings1: above
    value_format_muni.ratings1: ''
    style_muni.ratings2: "#1A73E8"
    show_title_muni.ratings2: true
    title_override_muni.ratings2: RATING 2
    title_placement_muni.ratings2: above
    value_format_muni.ratings2: ''
    show_comparison_muni.ratings2: false
    style_muni.ratings3: "#1A73E8"
    show_title_muni.ratings3: true
    title_override_muni.ratings3: RATING 3
    title_placement_muni.ratings3: above
    value_format_muni.ratings3: ''
    show_comparison_muni.ratings3: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 7
    col: 0
    width: 4
    height: 9
  - title: COUPON FREQUENCY
    name: COUPON FREQUENCY
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.coupon_frequency]
    filters:
      muni.trade_date: ''
    sorts: [muni.coupon_frequency]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
    single_value_title: COUPON FREQUENCY
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 16
    col: 0
    width: 4
    height: 2
  - title: Yield of Trade Information
    name: Yield of Trade Information
    model: Fixed_Income
    explore: muni
    type: looker_grid
    fields: [muni.dated_date_of_the_issue_traded_date, muni.yield_at_issue, muni.the_yield_of_the_trade]
    filters:
      muni.trade_date: ''
    sorts: [muni.the_yield_of_the_trade]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      muni.dated_date_of_the_issue_traded_date: DATE OF ISSUE TRADED
      muni.the_yield_of_the_trade: YIELD OF TRADE
      muni.yield_at_issue: YIELD AT ISSUE
    series_text_format:
      muni.dated_date_of_the_issue_traded_date: {}
      muni.the_yield_of_the_trade:
        fg_color: "#079c98"
      muni.yield_at_issue:
        fg_color: "#1A73E8"
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      CUSIP: muni.cusip
    row: 49
    col: 0
    width: 12
    height: 5
  - title: Yield Over Time
    name: Yield Over Time
    model: Fixed_Income
    explore: muni
    type: looker_line
    fields: [muni.the_yield_of_the_trade, muni.trade_date]
    filters:
      muni.trade_date: ''
    sorts: [muni.trade_date desc]
    limit: 500
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: TRADE DATE, orientation: left, series: [{axisId: muni.the_yield_of_the_trade,
            id: muni.the_yield_of_the_trade, name: _yield_of_the_trade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 39,
        type: linear}]
    x_axis_label: YIELD OF TRADE
    series_types: {}
    series_colors:
      muni.the_yield_of_the_trade: "#12B5CB"
      muni.trade_month: "#12B5CB"
    series_labels: {}
    swap_axes: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      CUSIP: muni.cusip
    row: 46
    col: 12
    width: 12
    height: 8
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: _______________________________________________________________________
    row: 42
    col: 0
    width: 24
    height: 2
  - name: Yield of Trade Comparisons
    type: text
    title_text: Yield of Trade Comparisons
    subtitle_text: ''
    body_text: ''
    row: 44
    col: 0
    width: 24
    height: 2
  - title: Frequency of Trade
    name: Frequency of Trade
    model: Fixed_Income
    explore: muni
    type: looker_column
    fields: [muni.count, muni.trade_year]
    fill_fields: [muni.trade_year]
    filters:
      muni.trade_date: ''
    sorts: [muni.trade_year desc]
    limit: 500
    dynamic_fields: [{measure: count_of_date, based_on: muni.time_of_trade_date, type: count_distinct,
        label: Count of Date, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: dbdde0e7-9e89-77ea-d926-1d387cffae76
        label: Custom
        type: discrete
        colors:
        - "#567de8"
        - "#32bbcc"
        - "#079c98"
        - "#7CB342"
        - "#A8A116"
        - "#F9AB00"
        - "#FF8168"
        - "#E8710A"
        - "#EA4335"
        - "#E52592"
        - "#9334E6"
        - "#80868B"
      options:
        steps: 5
    y_axes: [{label: FREQUENCY, orientation: left, series: [{axisId: muni.count, id: muni.count,
            name: Muni}], showLabels: true, showValues: true, valueFormat: '', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 28, type: linear}]
    x_axis_label: TRADE YEAR
    series_types: {}
    series_colors:
      muni.count: "#079c98"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      CUSIP: muni.cusip
    row: 22
    col: 0
    width: 9
    height: 8
  - title: Earliest Date Issued
    name: Earliest Date Issued
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.trade_date]
    fill_fields: [muni.trade_date]
    filters:
      muni.trade_date: ''
    sorts: [muni.trade_date]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 27
    col: 16
    width: 7
    height: 3
  - title: Trade Type
    name: Trade Type
    model: Fixed_Income
    explore: muni
    type: looker_pie
    fields: [muni.count, muni.trade_type_indicator]
    fill_fields: [muni.trade_type_indicator]
    filters:
      muni.trade_date: ''
    sorts: [muni.count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_colors:
      inter-dealer trade: "#079c98"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 7
    col: 4
    width: 7
    height: 7
  - title: Broker Indicator
    name: Broker Indicator
    model: Fixed_Income
    explore: muni
    type: looker_pie
    fields: [muni.count, muni.list_offering_price_takedown_indicator]
    fill_fields: [muni.list_offering_price_takedown_indicator]
    filters:
      muni.trade_date: ''
    sorts: [muni.count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors:
      inter-dealer trade: "#079c98"
      'Yes': "#1A73E8"
      'No': "#079c98"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 7
    col: 17
    width: 7
    height: 6
  - title: SECURITY DESCRIPTION
    name: SECURITY DESCRIPTION
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.security_description]
    filters:
      muni.trade_date: ''
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 14
    col: 4
    width: 7
    height: 4
  - title: ISSUER INDUSTRY
    name: ISSUER INDUSTRY
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.issuer_industry]
    filters:
      muni.trade_date: ''
    sorts: [muni.issuer_industry]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 15
    col: 11
    width: 6
    height: 3
  - title: TAX PROVISION
    name: TAX PROVISION
    model: Fixed_Income
    explore: muni
    type: single_value
    fields: [muni.tax_provision]
    filters:
      muni.trade_date: ''
    sorts: [muni.tax_provision]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: muni.cusip
    row: 13
    col: 17
    width: 7
    height: 5
  filters:
  - name: CUSIP
    title: CUSIP
    type: field_filter
    default_value: 00037CKQ2
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Fixed_Income
    explore: muni
    listens_to_filters: []
    field: muni.cusip
