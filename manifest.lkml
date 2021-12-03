project_name: "production"

visualization: {
  id: "Risk Radial Gauge"
  label: "Risk Radial Gauge"
  dependencies: ["https://cdn.amcharts.com/lib/4/core.js", "https://cdn.amcharts.com/lib/4/charts.js",
    "https://cdn.amcharts.com/lib/4/themes/dark.js"]
  file: "Visualizations/gauge_vis.js"
}

visualization: {
  id: "Large Single Value"
  label: "Single Value"
  file: "Visualizations/single_value.js"
}

visualization: {
  id: "Quantstats_Metrics_Prod_1"
  label: "Quantstats_Metrics_Prod_1"
  file: "Visualizations/Metrics.js"
}

visualization: {
  id: "Quantstats_Cumulative_Ret_1"
  label: "Quantstats_Cumulative_Ret_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/C_Returns.js"
}

visualization: {
  id: "Quantstats_Cumulative_Ret_Vol_1"
  label: "Quantstats_Cumulative_Ret_Vol_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/C_Returns_Vol.js"
}

visualization: {
  id: "Quantstats_EoY_Returns_1"
  label: "Quantstats_EoY_Returns_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Returns_EoY.js"
}

visualization: {
  id: "Quantstats_EoY_Table_1"
  label: "Quantstats_EoY_Table_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/EoY_Table.js"
}
