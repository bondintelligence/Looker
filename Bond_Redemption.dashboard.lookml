- dashboard: corporate_bond_redemption
  title: Corporate Bond Redemption
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: CUSIP
    name: CUSIP
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: single_value
    fields: [mergent_bond_redemption.complete_cusip]
    filters: {}
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
    series_types: {}
    defaults_version: 1
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 2
    col: 0
    width: 6
    height: 4
  - title: 'Next Sinking Fund: Price'
    name: 'Next Sinking Fund: Price'
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: looker_bar
    fields: [mergent_bond_redemption.next_sf_price, mergent_bond_redemption.next_sf_date_month]
    filters: {}
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Next Sinking Fund Price, orientation: bottom, series: [{axisId: mergent_bond_redemption.next_sf_price,
            id: mergent_bond_redemption.next_sf_price, name: Next Sinking Fund Price}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Next Sinking Fund Date
    series_types: {}
    show_null_points: true
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
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 8
    col: 16
    width: 8
    height: 6
  - title: Next Sinking Fund Date
    name: Next Sinking Fund Date
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: single_value
    fields: [mergent_bond_redemption.next_sf_date_date]
    fill_fields: [mergent_bond_redemption.next_sf_date_date]
    filters: {}
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
    series_types: {}
    defaults_version: 1
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 0
    col: 16
    width: 7
    height: 3
  - title: Bond Issue Information
    name: Bond Issue Information
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: looker_grid
    fields: [mergent_bond_redemption.offering_date_date, mergent_bond_redemption.prospectus_issuer_name,
      mergent_bond_redemption.issuer_id, mergent_bond_redemption.issue_name, mergent_bond_redemption.issue_id]
    filters: {}
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 0
    col: 0
    width: 15
    height: 2
  - title: Sinking Fund
    name: Sinking Fund
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: single_value
    fields: [mergent_bond_redemption.sinking_fund]
    filters: {}
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
    series_types: {}
    defaults_version: 1
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 5
    col: 8
    width: 4
    height: 3
  - title: Callable
    name: Callable
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: single_value
    fields: [mergent_bond_redemption.callable]
    filters: {}
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
    series_types: {}
    defaults_version: 1
    show_view_names: false
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
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 5
    col: 12
    width: 4
    height: 3
  - title: Call Frequency
    name: Call Frequency
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: single_value
    fields: [mergent_bond_redemption.call_frequency]
    fill_fields: [mergent_bond_redemption.call_frequency]
    filters: {}
    sorts: [mergent_bond_redemption.call_frequency]
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
    show_view_names: false
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
    defaults_version: 1
    series_types: {}
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 8
    col: 8
    width: 8
    height: 3
  - title: 'Next Sinking Fund: Amount'
    name: 'Next Sinking Fund: Amount'
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: looker_bar
    fields: [mergent_bond_redemption.next_sf_amount, mergent_bond_redemption.next_sf_date_month]
    filters: {}
    sorts: [mergent_bond_redemption.next_sf_date_month desc]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Next Sinking Fund Amount, orientation: bottom, series: [{axisId: mergent_bond_redemption.next_sf_amount,
            id: mergent_bond_redemption.next_sf_amount, name: Next Sinking Fund Amount}],
        showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Next Sinking Fund Date
    series_types: {}
    defaults_version: 1
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 3
    col: 16
    width: 8
    height: 5
  - title: Bond Attributes
    name: Bond Attributes
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: looker_single_record
    fields: [mergent_bond_redemption.sudden_death_par, mergent_bond_redemption.sudden_death_premium,
      mergent_bond_redemption.ipo_clawback, mergent_bond_redemption.discrete_call,
      mergent_bond_redemption.call_in_whole, mergent_bond_redemption.index_redemption]
    filters: {}
    sorts: [mergent_bond_redemption.sudden_death_par]
    limit: 500
    show_view_names: false
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
    defaults_version: 1
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
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 10
    col: 0
    width: 6
    height: 5
  - title: Maintenance/Replacement
    name: Maintenance/Replacement
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: single_value
    fields: [mergent_bond_redemption.maint_replac]
    filters: {}
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
    series_types: {}
    defaults_version: 1
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 2
    col: 8
    width: 8
    height: 3
  - title: Make Whole
    name: Make Whole
    model: Fixed_Income
    explore: mergent_bond_redemption
    type: looker_single_record
    fields: [mergent_bond_redemption.make_whole, mergent_bond_redemption.make_whole_start_date_date,
      mergent_bond_redemption.make_whole_end_date_date, mergent_bond_redemption.make_whole_spread]
    filters: {}
    sorts: [mergent_bond_redemption.make_whole_start_date_date desc]
    limit: 500
    show_view_names: false
    series_types: {}
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
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
    listen:
      CUSIP: mergent_bond_redemption.complete_cusip
    row: 6
    col: 0
    width: 6
    height: 4
  filters:
  - name: CUSIP
    title: CUSIP
    type: field_filter
    default_value: 247367AX3
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Fixed_Income
    explore: mergent_bond_redemption
    listens_to_filters: []
    field: mergent_bond_redemption.complete_cusip
