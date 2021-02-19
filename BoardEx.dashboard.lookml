- dashboard: boardex
  title: BoardEx
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Value of LTIP Awarded
    name: Value of LTIP Awarded
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_line
    fields: [board_ex_summary.ltipvalue, board_ex_summary.annual_report_date_full_month,
      board_ex_summary.val_tot_eq_held]
    sorts: [board_ex_summary.ltipvalue desc]
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
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: board_ex_summary.ltipvalue,
            id: board_ex_summary.ltipvalue, name: Value of LTIP Awarded}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      board_ex_summary.ltipvalue: "#9334E6"
    series_labels: {}
    label_color: ["#6A0DAD"]
    swap_axes: false
    discontinuous_nulls: true
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Company Name: board_ex_summary.board_name
    row: 23
    col: 0
    width: 14
    height: 8
  - title: Director Type
    name: Director Type
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_pie
    fields: [board_ex_summary.ned, board_ex_summary.count]
    fill_fields: [board_ex_summary.ned]
    sorts: [board_ex_summary.ned]
    limit: 50
    total: true
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      board_ex_summary.ltipvalue: "#9334E6"
    series_labels:
      board_ex_summary.ned: Director Type
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: board_ex_summary.ltipvalue,
            id: board_ex_summary.ltipvalue, name: Value of LTIP Awarded}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    label_color: ["#6A0DAD"]
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Company Name: board_ex_summary.board_name
    row: 3
    col: 18
    width: 6
    height: 7
  - title: Country Distribution
    name: Country Distribution
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_pie
    fields: [board_ex_summary.count, board_ex_summary.hocountry_name]
    sorts: [board_ex_summary.count desc]
    limit: 50
    total: true
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      board_ex_summary.ltipvalue: "#9334E6"
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#1A73E8"
    series_labels:
      board_ex_summary.ned: Director Type
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: board_ex_summary.ltipvalue,
            id: board_ex_summary.ltipvalue, name: Value of LTIP Awarded}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    label_color: ["#6A0DAD"]
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Company Name: board_ex_summary.board_name
    row: 3
    col: 0
    width: 6
    height: 7
  - name: LTIP Value And Equity
    type: text
    title_text: LTIP Value And Equity
    subtitle_text: ''
    body_text: ''
    row: 20
    col: 0
    width: 24
    height: 3
  - name: 'Dataset Overview - Company '
    type: text
    title_text: 'Dataset Overview - Company '
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Company Info Table
    name: Company Info Table
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_grid
    fields: [board_ex_summary.board_name, board_ex_summary.isin, board_ex_summary.ticker]
    sorts: [board_ex_summary.ticker desc]
    total: true
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
    defaults_version: 1
    listen:
      Company Name: board_ex_summary.board_name
    row: 3
    col: 6
    width: 12
    height: 7
  - title: Equity Table
    name: Equity Table
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_grid
    fields: [board_ex_summary.val_tot_eq_held, board_ex_summary.board_name, board_ex_summary.val_eq_award]
    sorts: [board_ex_summary.val_eq_award desc]
    total: true
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Company Name: board_ex_summary.board_name
    row: 23
    col: 14
    width: 10
    height: 8
  - title: Board Sitting On
    name: Board Sitting On
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_grid
    fields: [board_ex_summary.board_name, sum_of_listed_boards, sum_of_other_boards_2,
      sum_of_unlisted_boards, board_ex_summary.annual_report_date_full_month]
    sorts: [sum_of_listed_boards desc]
    total: true
    dynamic_fields: [{measure: count_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Count of Listed Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Count of Unlisted Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_2, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards_2:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 13
    col: 0
    width: 12
    height: 7
  - title: Boards Sat On
    name: Boards Sat On
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_grid
    fields: [board_ex_summary.board_name, board_ex_summary.annual_report_date_full_month,
      sum_of_listed_boards_2, sum_of_other_boards_3, sum_of_unlisted_boards_2]
    sorts: [board_ex_summary.annual_report_date_full_month desc]
    total: true
    dynamic_fields: [{measure: count_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Count of Listed Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Count of Unlisted Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_2, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards_2, based_on: board_ex_summary.tot_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_3, based_on: board_ex_summary.tot_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards_2, based_on: board_ex_summary.tot_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards_2:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      sum_of_listed_boards_2:
        is_active: true
      sum_of_other_boards_3:
        is_active: true
      sum_of_unlisted_boards_2:
        is_active: true
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 13
    col: 12
    width: 12
    height: 7
  - name: Dataset Overview - Boards
    type: text
    title_text: Dataset Overview - Boards
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 3
  - name: One Use Case Breakdown
    type: text
    title_text: One Use Case Breakdown
    subtitle_text: ''
    body_text: ''
    row: 31
    col: 0
    width: 24
    height: 3
  - title: ''
    name: ''
    model: Fixed_Income
    explore: board_ex_summary
    type: single_value
    fields: [board_ex_summary.board_name]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.board_name]
    total: true
    dynamic_fields: [{measure: count_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Count of Listed Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Count of Unlisted Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_2, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards_2, based_on: board_ex_summary.tot_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_3, based_on: board_ex_summary.tot_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards_2, based_on: board_ex_summary.tot_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    single_value_title: Company Name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards_2:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      sum_of_listed_boards_2:
        is_active: true
      sum_of_other_boards_3:
        is_active: true
      sum_of_unlisted_boards_2:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen: {}
    row: 34
    col: 0
    width: 6
    height: 6
  - title: ''
    name: " (2)"
    model: Fixed_Income
    explore: board_ex_summary
    type: single_value
    fields: [board_ex_summary.isin]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.isin]
    total: true
    dynamic_fields: [{measure: count_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Count of Listed Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Count of Unlisted Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_2, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards_2, based_on: board_ex_summary.tot_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_3, based_on: board_ex_summary.tot_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards_2, based_on: board_ex_summary.tot_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    single_value_title: Company ISIN
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards_2:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      sum_of_listed_boards_2:
        is_active: true
      sum_of_other_boards_3:
        is_active: true
      sum_of_unlisted_boards_2:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen: {}
    row: 34
    col: 6
    width: 5
    height: 3
  - title: ''
    name: " (3)"
    model: Fixed_Income
    explore: board_ex_summary
    type: single_value
    fields: [board_ex_summary.hocountry_name]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.hocountry_name]
    total: true
    dynamic_fields: [{measure: count_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Count of Listed Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Count of Unlisted Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_2, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards_2, based_on: board_ex_summary.tot_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_3, based_on: board_ex_summary.tot_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards_2, based_on: board_ex_summary.tot_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    single_value_title: Country
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards_2:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      sum_of_listed_boards_2:
        is_active: true
      sum_of_other_boards_3:
        is_active: true
      sum_of_unlisted_boards_2:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen: {}
    row: 37
    col: 6
    width: 5
    height: 3
  - title: ''
    name: " (4)"
    model: Fixed_Income
    explore: board_ex_summary
    type: single_value
    fields: [board_ex_summary.ticker]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.ticker]
    total: true
    dynamic_fields: [{measure: count_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Count of Listed Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Count of Unlisted Boards, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_2, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_listed_boards_2, based_on: board_ex_summary.tot_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards_3, based_on: board_ex_summary.tot_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards_2, based_on: board_ex_summary.tot_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    single_value_title: Ticker
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards_2:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      sum_of_listed_boards_2:
        is_active: true
      sum_of_other_boards_3:
        is_active: true
      sum_of_unlisted_boards_2:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    series_types: {}
    point_style: circle
    series_colors:
      United States: "#9334E6"
      Netherlands: "#1A73E8"
      Canada: "#E52592"
      United Kingdom - England: "#12B5CB"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen: {}
    row: 34
    col: 11
    width: 2
    height: 6
  - title: ''
    name: " (5)"
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_grid
    fields: [board_ex_summary.board_name, board_ex_summary.annual_report_date_full_month,
      sum_of_listed_boards, sum_of_other_boards, sum_of_unlisted_boards, board_ex_summary.bonus,
      board_ex_summary.bonus_ratio]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.annual_report_date_full_month desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      board_ex_summary.bonus:
        is_active: true
      board_ex_summary.bonus_ratio:
        is_active: true
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
    listen: {}
    row: 34
    col: 13
    width: 11
    height: 6
  - title: Compensation Analysis
    name: Compensation Analysis
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_area
    fields: [board_ex_summary.annual_report_date_full_month, sum_of_total_compensation,
      sum_of_total_direct_compensation]
    fill_fields: [board_ex_summary.annual_report_date_full_month]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.annual_report_date_full_month desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_compensation, based_on: board_ex_summary.total_compensation,
        expression: '', label: Sum of Total Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_direct_compensation, based_on: board_ex_summary.total_direct_comp,
        expression: '', label: Sum of Total Direct Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}]
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      board_ex_summary.bonus:
        is_active: true
      board_ex_summary.bonus_ratio:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen: {}
    row: 42
    col: 4
    width: 10
    height: 8
  - title: Equity and LTIP Analysis
    name: Equity and LTIP Analysis
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_area
    fields: [board_ex_summary.annual_report_date_full_month, sum_of_value_of_long_term_incentive_plans_held,
      sum_of_value_of_total_equity_held]
    fill_fields: [board_ex_summary.annual_report_date_full_month]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
      board_ex_summary.val_tot_eq_held: NOT NULL
      board_ex_summary.val_ltipheld: NOT NULL
    sorts: [board_ex_summary.annual_report_date_full_month desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_compensation, based_on: board_ex_summary.total_compensation,
        expression: '', label: Sum of Total Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_direct_compensation, based_on: board_ex_summary.total_direct_comp,
        expression: '', label: Sum of Total Direct Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_value_of_long_term_incentive_plans_held,
        based_on: board_ex_summary.val_ltipheld, expression: '', label: Sum of Value
          of Long Term Incentive Plans Held, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_value_of_total_equity_held, based_on: board_ex_summary.val_tot_eq_held,
        expression: '', label: Sum of Value of Total Equity Held, type: sum, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: true
    y_axis_gridlines: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_value_of_long_term_incentive_plans_held,
            id: sum_of_value_of_long_term_incentive_plans_held, name: Sum of Value
              of Long Term Incentive Plans Held}, {axisId: sum_of_value_of_total_equity_held,
            id: sum_of_value_of_total_equity_held, name: Sum of Value of Total Equity
              Held}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_colors:
      sum_of_value_of_long_term_incentive_plans_held: "#9334E6"
      sum_of_value_of_total_equity_held: "#E52592"
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      board_ex_summary.bonus:
        is_active: true
      board_ex_summary.bonus_ratio:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 42
    col: 14
    width: 10
    height: 8
  - title: ''
    name: " (6)"
    model: Fixed_Income
    explore: board_ex_summary
    type: single_value
    fields: [board_ex_summary.salary, max_of_salary]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [max_of_salary desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_compensation, based_on: board_ex_summary.total_compensation,
        expression: '', label: Sum of Total Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_direct_compensation, based_on: board_ex_summary.total_direct_comp,
        expression: '', label: Sum of Total Direct Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_value_of_long_term_incentive_plans_held,
        based_on: board_ex_summary.val_ltipheld, expression: '', label: Sum of Value
          of Long Term Incentive Plans Held, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_value_of_total_equity_held, based_on: board_ex_summary.val_tot_eq_held,
        expression: '', label: Sum of Value of Total Equity Held, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_salary, based_on: board_ex_summary.salary,
        expression: '', label: Max of Salary, type: max, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Max Salary
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
    series_types: {}
    point_style: none
    series_colors:
      sum_of_value_of_long_term_incentive_plans_held: "#9334E6"
      sum_of_value_of_total_equity_held: "#E52592"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      board_ex_summary.bonus:
        is_active: true
      board_ex_summary.bonus_ratio:
        is_active: true
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 42
    col: 0
    width: 4
    height: 4
  - title: ''
    name: " (7)"
    model: Fixed_Income
    explore: board_ex_summary
    type: single_value
    fields: [board_ex_summary.number_directors]
    filters:
      board_ex_summary.board_name: MORGAN STANLEY (Morgan Stanley Dean Witter & Co
        prior to 07/2002)
    sorts: [board_ex_summary.number_directors desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_listed_boards, based_on: board_ex_summary.tot_curr_no_lstd_brd,
        expression: '', label: Sum of Listed Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_other_boards, based_on: board_ex_summary.tot_curr_no_oth_lstd_brd,
        expression: '', label: Sum of Other Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_unlisted_boards, based_on: board_ex_summary.tot_curr_no_un_lstd_brd,
        expression: '', label: Sum of Unlisted Boards, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_compensation, based_on: board_ex_summary.total_compensation,
        expression: '', label: Sum of Total Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_direct_compensation, based_on: board_ex_summary.total_direct_comp,
        expression: '', label: Sum of Total Direct Compensation, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_value_of_long_term_incentive_plans_held,
        based_on: board_ex_summary.val_ltipheld, expression: '', label: Sum of Value
          of Long Term Incentive Plans Held, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_value_of_total_equity_held, based_on: board_ex_summary.val_tot_eq_held,
        expression: '', label: Sum of Value of Total Equity Held, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: max_of_salary, based_on: board_ex_summary.salary,
        expression: '', label: Max of Salary, type: max, _kind_hint: measure, _type_hint: number},
      {measure: min_of_salary, based_on: board_ex_summary.salary, expression: '',
        label: Min of Salary, type: min, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Max Number of Directors on Board
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
    series_types: {}
    point_style: none
    series_colors:
      sum_of_value_of_long_term_incentive_plans_held: "#9334E6"
      sum_of_value_of_total_equity_held: "#E52592"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      sum_of_listed_boards:
        is_active: true
      sum_of_other_boards:
        is_active: true
      sum_of_unlisted_boards:
        is_active: true
      board_ex_summary.bonus:
        is_active: true
      board_ex_summary.bonus_ratio:
        is_active: true
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 46
    col: 0
    width: 4
    height: 4
  - name: "   "
    type: text
    title_text: "   "
    subtitle_text: ''
    body_text: ''
    row: 40
    col: 0
    width: 24
    height: 2
  - title: tryout
    name: tryout
    model: Fixed_Income
    explore: board_ex_summary
    type: looker_grid
    fields: [board_ex_summary.board_name, board_ex_summary.index, board_ex_summary.isin]
    filters:
      board_ex_summary.board_name: ".406 Ventures LLC,1-800-FLOWERS.COM INC,10X GENOMICS\
        \ INC,10X Genomics Inc (10X Technologies Inc prior to 11/2014) (Listed 09/2019)"
    sorts: [board_ex_summary.board_name]
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
    listen: {}
    row:
    col:
    width:
    height:
  filters:
  - name: Company Name
    title: Company Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Fixed_Income
    explore: board_ex_summary
    listens_to_filters: []
    field: board_ex_summary.board_name
