---
- dashboard: dashboard_geral
  title: Dashboard Geral
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 15 seconds
  preferred_slug: NgzeTtBYT7AGL6IyAFmX5y
  elements:
  - title: Testes realizados por dia
    name: Testes realizados por dia
    model: lia_poc
    explore: results_finished
    type: looker_column
    fields: [results_finished.response_timestamp_date, results_finished.total_provas_feitas]
    fill_fields: [results_finished.response_timestamp_date]
    sorts: [results_finished.response_timestamp_date desc]
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
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Data
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      results_finished.total_provas_feitas: "#2463eb"
    series_labels:
      results_finished.total_provas_feitas: Provas
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 0
    col: 8
    width: 16
    height: 8
  - title: Testes por Turma
    name: Testes por Turma
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.school_name, results_finished.class_name,
      results_finished.total_provas_feitas]
    sorts: [results_finished.school_name, results_finished.class_name]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      results_finished.school_name: Escola
      results_finished.class_name: Turma
      results_finished.total_provas_feitas: Provas
    series_column_widths:
      results_finished.school_name: 275
      results_finished.class_name: 300
    series_cell_visualizations:
      results_finished.total_provas_feitas:
        is_active: true
        palette:
          palette_id: 264f665b-6c7c-d1a5-3414-72fc06cc9ebd
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f7fbff"
          - "#2463eb"
    series_text_format:
      results_finished.school_name:
        bold: true
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
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 8
    col: 12
    width: 12
    height: 10
  - title: Testes Realizados
    name: Testes Realizados
    model: lia_poc
    explore: results_finished
    type: single_value
    fields: [results_finished.total_provas_feitas]
    filters:
      results_finished.user_rating: "-Sem Classificação"
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
    conditional_formatting: [{type: 'null', value: !!null '', background_color: "#2463eb",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: not null, value: !!null '',
        background_color: "#2463eb", font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 0
    col: 0
    width: 8
    height: 4
  - title: Testes por Escola
    name: Testes por Escola
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.school_name, results_finished.total_provas_feitas]
    sorts: [results_finished.total_provas_feitas desc 0]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      results_finished.school_name: Escola
      results_finished.total_provas_feitas: Provas
    series_cell_visualizations:
      results_finished.total_provas_feitas:
        is_active: true
        palette:
          palette_id: a304237e-b882-db01-93a5-fd1029247004
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f7fbff"
          - "#2463eb"
    series_text_format:
      results_finished.school_name:
        bold: true
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
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 8
    col: 0
    width: 12
    height: 10
  - title: Classificação dos Alunos
    name: Classificação dos Alunos
    model: lia_poc
    explore: results_finished
    type: looker_pie
    fields: [results_finished.total_provas_feitas, results_finished.user_rating]
    filters:
      results_finished.user_rating: "-Sem Classificação"
    sorts: [results_finished.total_provas_feitas desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    series_colors:
      Leitor Fluente: "#fd5400"
      Pré-leitor 1: "#ffb639"
      Leitor Iniciante: "#00cdc0"
      Pré-leitor 4: "#ff2d6b"
      Pré-leitor 3: "#3e77a2"
      Pré-leitor 2: "#2463eb"
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
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 18
    col: 0
    width: 12
    height: 6
  - title: Classificação dos Alunos
    name: Classificação dos Alunos (2)
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.total_provas_feitas, results_finished.user_rating]
    sorts: [results_finished.total_provas_feitas desc 0]
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
    column_order: ["$$$_row_numbers_$$$", results_finished.user_rating,
      results_finished.total_provas_feitas]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      results_finished.user_rating: Classificação
      results_finished.total_provas_feitas: Provas
    series_column_widths:
      results_finished.user_rating: 180
    series_cell_visualizations:
      results_finished.total_provas_feitas:
        is_active: true
        palette:
          palette_id: 475bf0aa-7b3e-c88d-bb09-d50eadee74db
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f7fbff"
          - "#2463eb"
    series_text_format:
      results_finished.user_rating:
        bold: true
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
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Resultados por Escola
    name: Resultados por Escola
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.school_name, results_finished.user_rating,
      results_finished.total_provas_feitas]
    pivots: [results_finished.user_rating]
    filters:
      results_finished.user_rating: "-Sem Classificação"
    sorts: [results_finished.user_rating, results_finished.school_name]
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
    series_labels:
      results_finished.school_name: Escola
      results_finished.user_rating: Classificação
      results_finished.total_provas_feitas: Provas
    series_column_widths:
      results_finished.school_name: 280
    series_cell_visualizations:
      results_finished.total_provas_feitas:
        is_active: true
        palette:
          palette_id: de7b1d5a-c6be-faea-9ac9-6504d386191f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f7fbff"
          - "#2463eb"
    series_text_format:
      results_finished.school_name:
        bold: true
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
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 42
    col: 0
    width: 24
    height: 10
  - title: Resultados por Munícipio
    name: Resultados por Munícipio
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.school_region, results_finished.school_county,
      results_finished.total_provas_feitas, results_finished.user_rating]
    pivots: [results_finished.user_rating]
    filters:
      results_finished.user_rating: "-Sem Classificação"
    sorts: [results_finished.user_rating, results_finished.school_region,
      results_finished.school_county]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      results_finished.total_provas_feitas: Provas
      results_finished.school_county: Município
      results_finished.school_region: Região
      results_finished.user_rating: Classificação
    series_column_widths:
      results_finished.school_region: 200
      results_finished.school_county: 180
    series_cell_visualizations:
      results_finished.total_provas_feitas:
        is_active: true
        palette:
          palette_id: 5dc362fa-5474-3a14-4ac7-1486b1812d5e
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f7fbff"
          - "#2463eb"
    series_text_format:
      results_finished.school_region:
        bold: true
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
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 33
    col: 0
    width: 24
    height: 9
  - title: Resultados por Aluno
    name: Resultados por Aluno
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.school_name, results_finished.class_name,
      results_finished.exam_uuid, results_finished.student_name,
      results_finished.exam_name, results_finished.student_uuid,
      results_finished.user_rating]
    sorts: [results_finished.school_name, results_finished.class_name,
      results_finished.student_name, results_finished.exam_name]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      results_finished.school_name: Escola
      results_finished.class_name: Turma
      results_finished.student_name: Aluno
      results_finished.exam_name: Avaliação
      results_finished.user_rating: Classificação
    series_text_format:
      results_finished.school_name:
        bold: true
      results_finished.class_name:
        bold: true
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
    hidden_fields: [results_finished.exam_uuid, results_finished.student_uuid]
    listen:
      Turma: results_finished.class_name
      Escola: results_finished.school_name
      Município: results_finished.school_county
      Região: results_finished.school_region
    row: 52
    col: 0
    width: 24
    height: 17
  - title: Escolas
    name: Escolas
    model: lia_poc
    explore: results_finished
    type: single_value
    fields: [results_finished.total_escolas]
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
    conditional_formatting: [{type: 'null', value: !!null '', background_color: "#2463eb",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: not null, value: !!null '',
        background_color: "#2463eb", font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 4
    col: 0
    width: 4
    height: 4
  - title: Turmas
    name: Turmas
    model: lia_poc
    explore: results_finished
    type: single_value
    fields: [results_finished.total_turmas]
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
    conditional_formatting: [{type: 'null', value: !!null '', background_color: "#2463eb",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: not null, value: !!null '',
        background_color: "#2463eb", font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    listen:
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 4
    col: 4
    width: 4
    height: 4
  - title: Resultados por Região
    name: Resultados por Região
    model: lia_poc
    explore: results_finished
    type: looker_grid
    fields: [results_finished.school_region, results_finished.user_rating,
      results_finished.total_provas_feitas]
    pivots: [results_finished.user_rating]
    filters:
      results_finished.user_rating: "-Sem Classificação"
    sorts: [results_finished.user_rating, results_finished.school_region]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      results_finished.school_region: Região
      results_finished.total_provas_feitas: Provas
      results_finished.user_rating: Classificação
    series_column_widths:
      results_finished.school_region: 200
    series_cell_visualizations:
      results_finished.total_provas_feitas:
        is_active: true
        palette:
          palette_id: d2953692-c6d0-9529-d66a-53848352b127
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f7fbff"
          - "#2463eb"
    series_text_format:
      results_finished.school_region:
        bold: true
    hidden_pivots: {}
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
    listen:
      Região: results_finished.school_region
      Município: results_finished.school_county
      Escola: results_finished.school_name
      Turma: results_finished.class_name
    row: 24
    col: 0
    width: 24
    height: 9
  filters:
  - name: Região
    title: Região
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: lia_poc
    explore: results_finished
    listens_to_filters: [Município, Escola, Turma]
    field: results_finished.school_region
  - name: Município
    title: Município
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: lia_poc
    explore: results_finished
    listens_to_filters: [Região, Escola, Turma]
    field: results_finished.school_county
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
    explore: results_finished
    listens_to_filters: [Região, Município, Turma]
    field: results_finished.school_name
  - name: Turma
    title: Turma
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: lia_poc
    explore: results_finished
    listens_to_filters: [Região, Município, Escola]
    field: results_finished.class_name
