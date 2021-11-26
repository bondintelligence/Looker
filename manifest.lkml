project_name: "production"

visualization: {
  id: "Risk Radial Gauge"
  label: "Risk Radial Gauge"
  dependencies: ["https://cdn.amcharts.com/lib/4/core.js", "https://cdn.amcharts.com/lib/4/charts.js",
    "https://cdn.amcharts.com/lib/4/themes/dark.js"]
  file: "gauge_vis.js"
}

visualization: {
  id: "Large Single Value"
  label: "Single Value"
  file: "single_value.js"
}

visualization: {
  id: "Quantstats_Metrics_Prod_1"
  label: "Quantstats_Metrics_Prod_1"
  file: "Metrics.js"
}

visualization: {
  id: "Quantstats_Cumulative_Ret_1"
  label: "Quantstats_Cumulative_Ret_1"
  dependencies: ["https://d3js.org/d3.v4.js"]
  file: "C_Returns.js"
}
