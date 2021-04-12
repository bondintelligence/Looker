- dashboard: insights
  title: Bond Intelligence Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  refresh: 1 hour
  elements:
  - title: Bond
    name: Bond
    model: Fixed_Income
    explore: bloomberg1
    type: looker_single_record
    fields: [bloomberg1.purpose, bloomberg1.source, bloomberg1.series, bloomberg1.issue_type,
      bloomberg1.maturity_type]
    filters: {}
    sorts: [bloomberg1.purpose]
    limit: 500
    show_view_names: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    font_size_main: '9'
    orientation: vertical
    style_bloomberg1.purpose: "#3A4245"
    show_title_bloomberg1.purpose: true
    title_placement_bloomberg1.purpose: above
    value_format_bloomberg1.purpose: ''
    style_bloomberg1.source: "#3A4245"
    show_title_bloomberg1.source: true
    title_placement_bloomberg1.source: above
    value_format_bloomberg1.source: ''
    show_comparison_bloomberg1.source: false
    style_bloomberg1.series: "#3A4245"
    show_title_bloomberg1.series: true
    title_placement_bloomberg1.series: above
    value_format_bloomberg1.series: ''
    show_comparison_bloomberg1.series: false
    style_bloomberg1.issue_type: "#3A4245"
    show_title_bloomberg1.issue_type: true
    title_placement_bloomberg1.issue_type: above
    value_format_bloomberg1.issue_type: ''
    show_comparison_bloomberg1.issue_type: false
    style_bloomberg1.maturity_type: "#3A4245"
    show_title_bloomberg1.maturity_type: true
    title_placement_bloomberg1.maturity_type: above
    value_format_bloomberg1.maturity_type: ''
    show_comparison_bloomberg1.maturity_type: false
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
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Bloomberg’s corporate action data contains more than 50 action types
      across capital changes, distributions, corporate events, and fixed income-specific
      actions. By leveraging the same identifiers as our instrument and legal entities,
      our corporate actions data content is linked seamlessly to instrument and legal
      entities for custodians, asset servicers, and other industry participants.Bloomberg’s
      Muni Fundamentals dataset is the largest and most comprehensive database of
      municipal issuer financial and operational information in the industry — allowing
      users to spend less time compiling data and more time on analysis.Bloomberg
      provides financials, operational, and reference data for 50,000+ issuers (about
      120,000 funds) of municipal debt, covering 99 percent of outstanding general
      obligation debt and 94 percent of revenue debt. The dataset includes history
      going back to 2003
    listen:
      CUSIP: bloomberg1.cusip
    row: 15
    col: 5
    width: 5
    height: 5
  - title: Yield
    name: Yield
    model: Fixed_Income
    explore: bloomberg1
    type: looker_single_record
    fields: [bloomberg1.bid_current_yield, bloomberg1.mid_current_yield, bloomberg1.ask_current_yield]
    filters: {}
    sorts: [bloomberg1.bid_current_yield]
    limit: 500
    show_view_names: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    font_size_main: '12'
    orientation: vertical
    value_format_bloomberg1.ask_current_yield: ''
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
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Bloomberg’s corporate action data contains more than 50 action types
      across capital changes, distributions, corporate events, and fixed income-specific
      actions. By leveraging the same identifiers as our instrument and legal entities,
      our corporate actions data content is linked seamlessly to instrument and legal
      entities for custodians, asset servicers, and other industry participants.Bloomberg’s
      Muni Fundamentals dataset is the largest and most comprehensive database of
      municipal issuer financial and operational information in the industry — allowing
      users to spend less time compiling data and more time on analysis.Bloomberg
      provides financials, operational, and reference data for 50,000+ issuers (about
      120,000 funds) of municipal debt, covering 99 percent of outstanding general
      obligation debt and 94 percent of revenue debt. The dataset includes history
      going back to 2003
    listen:
      CUSIP: bloomberg1.cusip
    row: 12
    col: 0
    width: 3
    height: 3
  - title: Price
    name: Price
    model: Fixed_Income
    explore: bloomberg1
    type: looker_single_record
    fields: [bloomberg1.ask_price, bloomberg1.bid_price, bloomberg1.mid_price]
    filters: {}
    sorts: [bloomberg1.ask_price]
    limit: 500
    show_view_names: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    font_size_main: '12'
    orientation: vertical
    value_format_bloomberg1.ask_price: ''
    value_format_bloomberg1.mid_price: 0.##
    value_format_bloomberg1.ask_current_yield: ''
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
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Bloomberg’s corporate action data contains more than 50 action types
      across capital changes, distributions, corporate events, and fixed income-specific
      actions. By leveraging the same identifiers as our instrument and legal entities,
      our corporate actions data content is linked seamlessly to instrument and legal
      entities for custodians, asset servicers, and other industry participants.Bloomberg’s
      Muni Fundamentals dataset is the largest and most comprehensive database of
      municipal issuer financial and operational information in the industry — allowing
      users to spend less time compiling data and more time on analysis.Bloomberg
      provides financials, operational, and reference data for 50,000+ issuers (about
      120,000 funds) of municipal debt, covering 99 percent of outstanding general
      obligation debt and 94 percent of revenue debt. The dataset includes history
      going back to 2003
    listen:
      CUSIP: bloomberg1.cusip
    row: 12
    col: 3
    width: 3
    height: 3
  - title: New Tile
    name: New Tile
    model: Fixed_Income
    explore: bloomberg1
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [bloomberg1.coupon, bloomberg1.maturity_date, bloomberg1.last_trade_price,
      bloomberg1.total_volume]
    filters: {}
    sorts: [bloomberg1.maturity_date desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: true
    style_bloomberg1.coupon: "#2d89bd"
    show_title_bloomberg1.coupon: true
    title_placement_bloomberg1.coupon: above
    value_format_bloomberg1.coupon: ''
    style_bloomberg1.maturity_date: "#2d89bd"
    show_title_bloomberg1.maturity_date: true
    title_placement_bloomberg1.maturity_date: above
    value_format_bloomberg1.maturity_date: ''
    show_comparison_bloomberg1.maturity_date: false
    style_bloomberg1.last_trade_price: "#2d89bd"
    show_title_bloomberg1.last_trade_price: true
    title_placement_bloomberg1.last_trade_price: above
    value_format_bloomberg1.last_trade_price: ''
    show_comparison_bloomberg1.last_trade_price: false
    style_bloomberg1.total_volume: "#2d89bd"
    show_title_bloomberg1.total_volume: true
    title_placement_bloomberg1.total_volume: above
    value_format_bloomberg1.total_volume: ''
    show_comparison_bloomberg1.total_volume: false
    value_format_bloomberg1.ask_price: ''
    value_format_bloomberg1.mid_price: 0.##
    value_format_bloomberg1.ask_current_yield: ''
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
    title_hidden: true
    listen:
      CUSIP: bloomberg1.cusip
    row: 10
    col: 0
    width: 24
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: Fixed_Income
    explore: bloomberg1
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [bloomberg1.title]
    filters: {}
    sorts: [bloomberg1.title]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    style_bloomberg1.title: "#2d89bd"
    show_title_bloomberg1.title: false
    title_placement_bloomberg1.title: above
    value_format_bloomberg1.title: ''
    style_bloomberg1.coupon: "#1A73E8"
    style_bloomberg1.maturity_date: "#1A73E8"
    style_bloomberg1.last_trade_price: "#1A73E8"
    style_bloomberg1.total_volume: "#1A73E8"
    value_format_bloomberg1.ask_price: ''
    value_format_bloomberg1.mid_price: 0.##
    value_format_bloomberg1.ask_current_yield: ''
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
    title_hidden: true
    listen:
      CUSIP: bloomberg1.cusip
    row: 0
    col: 0
    width: 21
    height: 2
  - title: Fundamentals
    name: Fundamentals
    model: Fixed_Income
    explore: bloomberg1
    type: looker_single_record
    fields: [bloomberg1.issue_size, bloomberg1.maturity_size, bloomberg1.tax_provision,
      bloomberg1.offering_type, bloomberg1.underwriter]
    filters: {}
    sorts: [bloomberg1.issue_size]
    limit: 500
    show_view_names: false
    font_size_main: '15'
    orientation: auto
    style_bloomberg1.issue_size: "#3A4245"
    show_title_bloomberg1.issue_size: true
    title_placement_bloomberg1.issue_size: above
    value_format_bloomberg1.issue_size: ''
    style_bloomberg1.maturity_size: "#3A4245"
    show_title_bloomberg1.maturity_size: true
    title_placement_bloomberg1.maturity_size: above
    value_format_bloomberg1.maturity_size: ''
    show_comparison_bloomberg1.maturity_size: false
    style_bloomberg1.tax_provision: "#3A4245"
    show_title_bloomberg1.tax_provision: true
    title_placement_bloomberg1.tax_provision: above
    value_format_bloomberg1.tax_provision: ''
    show_comparison_bloomberg1.tax_provision: false
    style_bloomberg1.offering_type: "#3A4245"
    show_title_bloomberg1.offering_type: true
    title_placement_bloomberg1.offering_type: above
    value_format_bloomberg1.offering_type: ''
    show_comparison_bloomberg1.offering_type: false
    style_bloomberg1.underwriter: "#3A4245"
    show_title_bloomberg1.underwriter: true
    title_placement_bloomberg1.underwriter: above
    value_format_bloomberg1.underwriter: ''
    show_comparison_bloomberg1.underwriter: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    style_bloomberg1.title: "#1A73E8"
    show_title_bloomberg1.title: false
    style_bloomberg1.coupon: "#1A73E8"
    style_bloomberg1.maturity_date: "#1A73E8"
    style_bloomberg1.last_trade_price: "#1A73E8"
    style_bloomberg1.total_volume: "#1A73E8"
    value_format_bloomberg1.ask_price: ''
    value_format_bloomberg1.mid_price: 0.##
    value_format_bloomberg1.ask_current_yield: ''
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
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: bloomberg1.cusip
    row: 15
    col: 0
    width: 5
    height: 5
  - title: 10 Comparable Trades
    name: 10 Comparable Trades
    model: Fixed_Income
    explore: comparable_trades
    type: looker_grid
    fields: [comparable_trades.cusip, comparable_trades.issue_date, comparable_trades.issue_type,
      comparable_trades.last_trade_price, comparable_trades.yieldat_issue]
    sorts: [comparable_trades.issue_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      comparable_trades.cusip: CUSIP
      comparable_trades.issue_date: Issue Date
      comparable_trades.yieldat_issue: Yield at Issue
    series_value_format:
      comparable_trades.last_trade_price: '0.00'
      comparable_trades.yieldat_issue: '0.00'
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
    column_order: ["$$$_row_numbers_$$$", comparable_trades.cusip, comparable_trades.issue_date,
      comparable_trades.last_trade_price, comparable_trades.yieldat_issue, comparable_trades.issue_type]
    listen: {}
    row: 29
    col: 11
    width: 13
    height: 6
  - title: Last 10 Trades
    name: Last 10 Trades
    model: Fixed_Income
    explore: last_trades
    type: looker_grid
    fields: [last_trades.cusip, last_trades.issue_date, last_trades.last_trade_price,
      last_trades.yieldat_issue, last_trades.issue_type]
    sorts: [last_trades.issue_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
      last_trades.yieldat_issue: Yield at Issue
    series_value_format:
      last_trades.yieldat_issue: '0.00'
      last_trades.last_trade_price:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
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
    listen: {}
    row: 20
    col: 0
    width: 11
    height: 6
  - title: Default Probability
    name: Default Probability
    model: Fixed_Income
    explore: default_probablity
    type: looker_column
    fields: [default_probablity.default_percentage, default_probablity.year_number]
    sorts: [default_probablity.year_number]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    y_axes: [{label: Percent, orientation: left, series: [{axisId: default_probablity.default_percentage,
            id: default_probablity.default_percentage, name: Default Probablity Default
              Percentage}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_labels: {}
    column_spacing_ratio: 0
    bin_type: breakpoints
    bin_style: simple_hist
    winsorization: false
    color_col: "#1A73E8"
    color_on_hover: "#338bff"
    x_axis_override: ''
    x_grids: true
    x_axis_title_font_size: 16
    x_axis_label_font_size: 12
    x_axis_label_angle: 0
    x_label_separation: 100
    y_axis_override: ''
    y_grids: true
    y_axis_title_font_size: 16
    y_axis_label_font_size: 12
    y_axis_label_angle: 0
    y_label_separation: 100
    x_axis_value_format: ''
    breakpoint_array: 0, 5,10, 15, 20, 25
    breakpoint_ordinal: false
    step_size: 2
    max_bins: '10'
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen: {}
    row: 5
    col: 19
    width: 5
    height: 5
  - title: Rich/Cheap Analysis
    name: Rich/Cheap Analysis
    model: Fixed_Income
    explore: predictedprice
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [predictedprice.predicted_dollar_price_of_the_trade, predictedprice.predicted_dollar_price_measure,
      predictedprice.max_value_measure]
    filters:
      predictedprice.CUSIP: 036054AY0
    sorts: [predictedprice.predicted_dollar_price_of_the_trade desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 10
    arm_weight: 10
    spinner_length: 158
    spinner_weight: 20
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: 90
    range_max: 150
    value_label_type: none
    value_label_font: 12
    value_formatting: '0'
    value_label_override: Predicted Price
    value_label_padding: 45
    target_source: second
    target_label_type: nolabel
    target_label_font: 5
    target_label_override: "."
    target_value_override: ''
    target_value_format: '0.00'
    label_font_size: 5
    range_formatting: ''
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 53
    range_x: 1.1
    range_y: 0.4
    target_label_padding: 1.06
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 5
    col: 6
    width: 7
    height: 5
  - title: Yield Over Time
    name: Yield Over Time
    model: Fixed_Income
    explore: bloomberg1
    type: looker_area
    fields: [bloomberg2.date_date, bloomberg2.bid_ytm, bloomberg2.ask_ytm, bloomberg2.mid_ytm,
      bloomberg2.ask_ytm_, bloomberg2.bid_ytm_, bloomberg2.mid_ytm_]
    filters:
      bloomberg1.cusip: ''
    sorts: [bloomberg2.date_date desc]
    limit: 5000
    column_limit: 50
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
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Yield, orientation: left, series: [{axisId: bloomberg2.ask_ytm_,
            id: bloomberg2.ask_ytm_, name: 'Ask Ytm '}, {axisId: bloomberg2.bid_ytm_,
            id: bloomberg2.bid_ytm_, name: 'Bid Ytm '}, {axisId: bloomberg2.mid_ytm_,
            id: bloomberg2.mid_ytm_, name: 'Mid Ytm '}], showLabels: true, showValues: true,
        maxValue: 7, minValue: 0, valueFormat: '', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 20, type: linear}]
    series_types: {}
    x_axis_datetime_label: "%b%y"
    reference_lines: []
    swap_axes: false
    hidden_fields: [bloomberg2.bid_ytm, bloomberg2.ask_ytm, bloomberg2.mid_ytm]
    defaults_version: 1
    ordering: none
    show_null_labels: false
    listen:
      CUSIP: bloomberg2.cusip
    row: 12
    col: 11
    width: 13
    height: 9
  - title: Price Over Time
    name: Price Over Time
    model: Fixed_Income
    explore: bloomberg1
    type: looker_area
    fields: [bloomberg2.date_date, bloomberg2.mid_price, bloomberg2.last_price, bloomberg2.mid_price_,
      bloomberg2.last_price_]
    filters:
      bloomberg1.cusip: ''
    sorts: [bloomberg2.date_date desc]
    limit: 5000
    column_limit: 50
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
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Price, orientation: left, series: [{axisId: bloomberg2.mid_price_,
            id: bloomberg2.mid_price_, name: 'Mid Price '}, {axisId: bloomberg2.last_price_,
            id: bloomberg2.last_price_, name: 'Last Price '}], showLabels: true, showValues: true,
        minValue: 60, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      bloomberg2.last_price_: "#62bad4"
      bloomberg2.mid_price_: "#82c2ca"
    x_axis_datetime_label: "%b%y"
    hidden_fields: [bloomberg2.mid_price, bloomberg2.last_price]
    defaults_version: 1
    listen:
      CUSIP: bloomberg2.cusip
    row: 21
    col: 11
    width: 13
    height: 8
  - title: Risk
    name: Risk
    model: Fixed_Income
    explore: muni
    type: marketplace_viz_bar_gauge::bar_gauge-marketplace
    fields: [muni.percent_vacant_housing_units_mh, muni.percent_vacant_housing_units_mh_]
    filters:
      muni.cusip: 036015PL3
      muni.trade_date: ''
    sorts: [muni.percent_vacant_housing_units_mh_ desc]
    limit: 1
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    bar_arm_length: 10.5
    bar_arm_weight: 11
    bar_spinner_length: 0
    bar_spinner_weight: 11
    bar_style: horizontal
    bar_range_min: 0
    bar_range_max: 100
    bar_value_label_type: label
    bar_value_label_font: 10
    bar_value_formatting: '"0.00%"'
    bar_value_label_override: 16%
    bar_value_label_padding: 49
    bar_target_source: 'off'
    bar_target_label_type: none
    bar_target_label_font: 3
    bar_label_font_size: 10
    bar_fill_color: "#62bad4"
    bar_background_color: "#CECECE"
    bar_spinner_color: "#282828"
    bar_range_color: "#282828"
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
    listen: {}
    row: 5
    col: 13
    width: 6
    height: 5
  - title: Predicted Price
    name: Predicted Price
    model: Fixed_Income
    explore: pricemodel
    type: single_value
    fields: [pricemodel.predicted_Dollar_Price_of_the_trade]
    filters:
      pricemodel.CUSIP_Parameter: 036054AY0
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
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 5
    col: 0
    width: 6
    height: 5
  - title: ''
    name: ''
    model: Fixed_Income
    explore: bloomberg1
    type: single_value
    fields: [bloomberg1.Trade]
    filters:
      bloomberg1.cusip: '005596DZ1'
    sorts: [bloomberg1.Trade]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    custom_color: "#62bad4"
    single_value_title: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 21
    width: 3
    height: 2
  - title: Fitch
    name: Fitch
    model: Fixed_Income
    explore: bloomberg1
    type: single_value
    fields: [bloomberg1.fitch]
    filters: {}
    sorts: [bloomberg1.fitch]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4e4e4e"
    single_value_title: Fitch
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    series_labels:
      bloomberg1.moodys: Moody's
      bloomberg1.sp: S&P
      bloomberg1.fitch: Fitch
      bloomberg1.cusip: CUSIP
    series_column_widths:
      bloomberg1.count: 308
    series_text_format:
      bloomberg1.moodys:
        align: center
      bloomberg1.sp:
        align: center
      bloomberg1.fitch:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size_main: '12'
    orientation: vertical
    style_bloomberg1.moodys: "#3A4245"
    show_title_bloomberg1.moodys: true
    title_override_bloomberg1.moodys: Moody's
    title_placement_bloomberg1.moodys: above
    value_format_bloomberg1.moodys: ''
    style_bloomberg1.sp: "#3A4245"
    show_title_bloomberg1.sp: true
    title_override_bloomberg1.sp: S&P
    title_placement_bloomberg1.sp: above
    value_format_bloomberg1.sp: ''
    show_comparison_bloomberg1.sp: false
    style_bloomberg1.fitch: "#3A4245"
    show_title_bloomberg1.fitch: true
    title_override_bloomberg1.fitch: Fitch
    title_placement_bloomberg1.fitch: above
    value_format_bloomberg1.fitch: ''
    show_comparison_bloomberg1.fitch: false
    hidden_fields: []
    hidden_points_if_no: []
    theme: looker
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 20
    bodyFontSize: 20
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|bloomberg1.sp: S&P
    truncate_column_names: false
    dividers: false
    style_bloomberg1.cusip: "#3A4245"
    show_title_bloomberg1.cusip: true
    title_override_bloomberg1.cusip: CUSIP
    title_placement_bloomberg1.cusip: above
    value_format_bloomberg1.cusip: ''
    show_comparison_bloomberg1.cusip: false
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
    stacking: normal
    legend_position: center
    font_size: '12'
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen:
      CUSIP: bloomberg1.cusip
    row: 2
    col: 0
    width: 8
    height: 3
  - title: Moody's
    name: Moody's
    model: Fixed_Income
    explore: bloomberg1
    type: single_value
    fields: [bloomberg1.moodys]
    filters: {}
    sorts: [bloomberg1.moodys]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4e4e4e"
    single_value_title: Moody's
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    series_labels:
      bloomberg1.moodys: Moody's
      bloomberg1.sp: S&P
      bloomberg1.fitch: Fitch
      bloomberg1.cusip: CUSIP
    series_column_widths:
      bloomberg1.count: 308
    series_text_format:
      bloomberg1.moodys:
        align: center
      bloomberg1.sp:
        align: center
      bloomberg1.fitch:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size_main: '12'
    orientation: vertical
    style_bloomberg1.moodys: "#3A4245"
    show_title_bloomberg1.moodys: true
    title_override_bloomberg1.moodys: Moody's
    title_placement_bloomberg1.moodys: above
    value_format_bloomberg1.moodys: ''
    style_bloomberg1.sp: "#3A4245"
    show_title_bloomberg1.sp: true
    title_override_bloomberg1.sp: S&P
    title_placement_bloomberg1.sp: above
    value_format_bloomberg1.sp: ''
    show_comparison_bloomberg1.sp: false
    style_bloomberg1.fitch: "#3A4245"
    show_title_bloomberg1.fitch: true
    title_override_bloomberg1.fitch: Fitch
    title_placement_bloomberg1.fitch: above
    value_format_bloomberg1.fitch: ''
    show_comparison_bloomberg1.fitch: false
    hidden_fields: []
    hidden_points_if_no: []
    theme: looker
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 20
    bodyFontSize: 20
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|bloomberg1.sp: S&P
    truncate_column_names: false
    dividers: false
    style_bloomberg1.cusip: "#3A4245"
    show_title_bloomberg1.cusip: true
    title_override_bloomberg1.cusip: CUSIP
    title_placement_bloomberg1.cusip: above
    value_format_bloomberg1.cusip: ''
    show_comparison_bloomberg1.cusip: false
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
    stacking: normal
    legend_position: center
    font_size: '12'
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen:
      CUSIP: bloomberg1.cusip
    row: 2
    col: 16
    width: 8
    height: 3
  - title: S&P
    name: S&P
    model: Fixed_Income
    explore: bloomberg1
    type: single_value
    fields: [bloomberg1.sp]
    filters: {}
    sorts: [bloomberg1.sp]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#4e4e4e"
    single_value_title: S & P
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#62bad4",
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    series_labels:
      bloomberg1.moodys: Moody's
      bloomberg1.sp: S&P
      bloomberg1.fitch: Fitch
      bloomberg1.cusip: CUSIP
    series_column_widths:
      bloomberg1.count: 308
    series_text_format:
      bloomberg1.moodys:
        align: center
      bloomberg1.sp:
        align: center
      bloomberg1.fitch:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    font_size_main: '12'
    orientation: vertical
    style_bloomberg1.moodys: "#3A4245"
    show_title_bloomberg1.moodys: true
    title_override_bloomberg1.moodys: Moody's
    title_placement_bloomberg1.moodys: above
    value_format_bloomberg1.moodys: ''
    style_bloomberg1.sp: "#3A4245"
    show_title_bloomberg1.sp: true
    title_override_bloomberg1.sp: S&P
    title_placement_bloomberg1.sp: above
    value_format_bloomberg1.sp: ''
    show_comparison_bloomberg1.sp: false
    style_bloomberg1.fitch: "#3A4245"
    show_title_bloomberg1.fitch: true
    title_override_bloomberg1.fitch: Fitch
    title_placement_bloomberg1.fitch: above
    value_format_bloomberg1.fitch: ''
    show_comparison_bloomberg1.fitch: false
    hidden_fields: []
    hidden_points_if_no: []
    theme: looker
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 20
    bodyFontSize: 20
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|bloomberg1.sp: S&P
    truncate_column_names: false
    dividers: false
    style_bloomberg1.cusip: "#3A4245"
    show_title_bloomberg1.cusip: true
    title_override_bloomberg1.cusip: CUSIP
    title_placement_bloomberg1.cusip: above
    value_format_bloomberg1.cusip: ''
    show_comparison_bloomberg1.cusip: false
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
    stacking: normal
    legend_position: center
    font_size: '12'
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen:
      CUSIP: bloomberg1.cusip
    row: 2
    col: 8
    width: 8
    height: 3
  filters:
  - name: CUSIP
    title: CUSIP
    type: field_filter
    default_value: '048339TD7'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Fixed_Income
    explore: midYield
    listens_to_filters: []
    field: midYield.cusip
