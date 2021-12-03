project_name: "production"

### Bond Insights Dashboard Visualizations
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

### Quant Stats Dashboard Visualizations
visualization: {
  id: "Quantstats_Metrics_Prod_1"
  label: "Quantstats_Metrics_Prod_1"
  file: "Visualizations/Quantstats/Metrics.js"
}

visualization: {
  id: "Quantstats_Cumulative_Ret_1"
  label: "Quantstats_Cumulative_Ret_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/C_Returns.js"
}

visualization: {
  id: "Quantstats_Cumulative_Ret_Vol_1"
  label: "Quantstats_Cumulative_Ret_Vol_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/C_Returns_Vol.js"
}

visualization: {
  id: "Quantstats_EoY_Returns_1"
  label: "Quantstats_EoY_Returns_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Returns_EoY.js"
}

visualization: {
  id: "Quantstats_Daily_Returns_1"
  label: "Quantstats_Daily_Returns_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Returns.js"
}

visualization: {
  id: "Quantstats_Monthly_Distribution_1"
  label: "Quantstats_Monthly_Distribution_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Monthly_Returns.js"
}

visualization: {
  id: "Quantstats_Worst_Drawdowns_1"
  label: "Quantstats_Worst_Drawdowns_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/W_Draw.js"
}

#I think this one still needs to be added to the API as of now
visualization: {
  id: "Quantstats_EoY_Table_1"
  label: "Quantstats_EoY_Table_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/EoY_Table.js"
}
