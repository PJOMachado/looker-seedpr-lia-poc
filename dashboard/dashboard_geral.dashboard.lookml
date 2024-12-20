- dashboard: dashboard_geral
  title: Dashboard Geral
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 15 seconds
  preferred_slug: NgzeTtBYT7AGL6IyAFmX5y
  elements:
  - title: Provas feitas por dia
    name: Provas feitas por dia
    model: lia_poc
    explore: user_rating_dimension
    type: looker_line
    fields: [user_rating_dimension.student_results_response_timestamp_date, user_rating_dimension.total_provas_feitas]
    fill_fields: [user_rating_dimension.student_results_response_timestamp_date]
    sorts: [user_rating_dimension.student_results_response_timestamp_date desc]
    limit: 500
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 0
    col: 8
    width: 16
    height: 6
  - title: Quantidade de Provas por Turma
    name: Quantidade de Provas por Turma
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.student_results_school_name, user_rating_dimension.student_results_class_name,
      user_rating_dimension.total_provas_feitas]
    sorts: [user_rating_dimension.student_results_school_name]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_fields:
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Total de provas feitas
    name: Total de provas feitas
    model: lia_poc
    explore: user_rating_dimension
    type: single_value
    fields: [user_rating_dimension.total_provas_feitas]
    filters:
      user_rating_dimension.student_results_user_rating: "-Sem Classificação"
    limit: 500
    column_limit: 50
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
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Quantidade de Provas por Escola
    name: Quantidade de Provas por Escola
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.student_results_school_name, user_rating_dimension.total_provas_feitas]
    sorts: [user_rating_dimension.total_provas_feitas desc 0]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Classificação dos alunos
    name: Classificação dos alunos
    model: lia_poc
    explore: user_rating_dimension
    type: looker_pie
    fields: [user_rating_dimension.total_provas_feitas, user_rating_dimension.student_results_user_rating]
    filters:
      user_rating_dimension.student_results_user_rating: "-Sem Classificação"
    sorts: [user_rating_dimension.total_provas_feitas desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Leitor Fluente: "#7CB342"
      Pré-leitor 1: "#EA4335"
      Leitor Iniciante: "#12B5CB"
      Pré-leitor 4: "#F9AB00"
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
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 12
    col: 0
    width: 12
    height: 6
  - title: Classificação dos alunos
    name: Classificação dos alunos (2)
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.total_provas_feitas, user_rating_dimension.student_results_user_rating]
    sorts: [user_rating_dimension.total_provas_feitas desc 0]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      user_rating_dimension.total_provas_feitas:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    value_labels: legend
    label_type: labPer
    series_colors:
      Leitor Fluente: "#7CB342"
      Pré-leitor 1: "#EA4335"
      Leitor Iniciante: "#12B5CB"
      Pré-leitor 4: "#F9AB00"
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
    show_null_points: true
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 12
    col: 12
    width: 12
    height: 6
  - title: Resultado por Escola
    name: Resultado por Escola
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.student_results_school_name, user_rating_dimension.student_results_user_rating,
      user_rating_dimension.total_provas_feitas]
    pivots: [user_rating_dimension.student_results_user_rating]
    filters:
      user_rating_dimension.student_results_user_rating: "-Sem Classificação"
    sorts: [user_rating_dimension.student_results_user_rating, user_rating_dimension.total_provas_feitas
        desc 0]
    limit: 500
    column_limit: 50
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
    hidden_pivots:
      Leitor Fluente:
        measure_names: []
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
    hidden_fields:
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 32
    col: 0
    width: 24
    height: 10
  - title: Resultado por Munícipio
    name: Resultado por Munícipio
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.student_results_school_region, user_rating_dimension.student_results_school_county,
      user_rating_dimension.total_provas_feitas, user_rating_dimension.student_results_user_rating]
    pivots: [user_rating_dimension.student_results_user_rating]
    filters:
      user_rating_dimension.student_results_user_rating: "-Sem Classificação"
    sorts: [user_rating_dimension.student_results_user_rating, user_rating_dimension.total_provas_feitas
        desc]
    limit: 500
    column_limit: 50
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
    hidden_pivots:
      Leitor Fluente:
        measure_names: []
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
    hidden_fields:
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 25
    col: 0
    width: 24
    height: 7
  - title: Resultado por Região
    name: Resultado por Região
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.student_results_user_rating, user_rating_dimension.total_provas_feitas,
      user_rating_dimension.student_results_school_region]
    pivots: [user_rating_dimension.student_results_user_rating]
    filters:
      user_rating_dimension.student_results_user_rating: "-Sem Classificação"
    sorts: [user_rating_dimension.student_results_user_rating, user_rating_dimension.total_provas_feitas
        desc 0]
    limit: 500
    column_limit: 50
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
    hidden_pivots:
      Leitor Fluente:
        measure_names: []
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
    hidden_fields:
    listen:
      Região: user_rating_dimension.student_results_school_region
      Município: user_rating_dimension.student_results_school_county
      Escola: user_rating_dimension.student_results_school_name
      Turma: user_rating_dimension.student_results_class_name
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 18
    col: 0
    width: 24
    height: 7
  - title: Resultados por Aluno
    name: Resultados por Aluno
    model: lia_poc
    explore: user_rating_dimension
    type: looker_grid
    fields: [user_rating_dimension.student_results_school_name, user_rating_dimension.student_results_class_name,
      user_rating_dimension.student_results_exam_uuid, user_rating_dimension.student_results_exam_name,
      user_rating_dimension.student_results_student_name, user_rating_dimension.student_results_student_uuid,
      user_rating_dimension.student_results_user_rating]
    filters: {}
    sorts: [user_rating_dimension.student_results_student_uuid desc]
    limit: 5000
    column_limit: 50
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
    hidden_fields: [user_rating_dimension.student_results_exam_uuid, user_rating_dimension.student_results_student_uuid]
    listen:
      Turma: user_rating_dimension.student_results_class_name
      Escola: user_rating_dimension.student_results_school_name
      Município: user_rating_dimension.student_results_school_county
      Região: user_rating_dimension.student_results_school_region
      Nome da Prova: user_rating_dimension.student_results_exam_name
    row: 42
    col: 0
    width: 24
    height: 17
  filters:
  - name: Região
    title: Região
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: lia_poc
    explore: user_rating_dimension
    listens_to_filters: []
    field: user_rating_dimension.student_results_school_region
  - name: Município
    title: Município
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: lia_poc
    explore: user_rating_dimension
    listens_to_filters: []
    field: user_rating_dimension.student_results_school_county
  - name: Escola
    title: Escola
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: lia_poc
    explore: user_rating_dimension
    listens_to_filters: []
    field: user_rating_dimension.student_results_school_name
  - name: Turma
    title: Turma
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: lia_poc
    explore: user_rating_dimension
    listens_to_filters: []
    field: user_rating_dimension.student_results_class_name
  - name: Nome da Prova
    title: Nome da Prova
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: lia_poc
    explore: user_rating_dimension
    listens_to_filters: []
    field: user_rating_dimension.student_results_exam_name
