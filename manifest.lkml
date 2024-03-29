project_name: "production"

### Rel Val Dashboard Visualizations

visualization: {
  id: "Rel Val Corp 3D"
  label: "Rel Val Corp 3D"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/RelValCorp3D.js"
}

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

visualization: {
  id: "Quantstats_Heatmap_1"
  label: "Quantstats_Heatmap_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Heatmap.js"
}

visualization: {
  id: "Quantstats_EoY_Table_1"
  label: "Quantstats_EoY_Table_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/EoY_Table.js"
}

visualization: {
  id: "Quantstats_Rolling_Volatility_1"
  label: "Quantstats_Rolling_Volatility_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Roll_Vol.js"
}

visualization: {
  id: "Quantstats_Rolling_Sharpe_1"
  label: "Quantstats_Rolling_Sharpe_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Sharpe.js"
}

visualization: {
  id: "Quantstats_Rolling_Sortino_1"
  label: "Quantstats_Rolling_Sortino_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Sortino.js"
}

visualization: {
  id: "Quantstats_Underwater_1"
  label: "Quantstats_Underwater_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Underwater.js"
}

visualization: {
  id: "Quantstats_Rolling_Beta_1"
  label: "Quantstats_Rolling_Beta_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Roll_Beta.js"
}

visualization: {
  id: "Quantstats_Return_Quantiles_1"
  label: "Quantstats_Return_Quantiles_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Return_Quants.js"
}

visualization: {
  id: "Quantstats_Five_Drawdowns_1"
  label: "Quantstats_Five_Drawdowns_1"
  dependencies: ["https://cdn.plot.ly/plotly-2.6.3.min.js"]
  file: "Visualizations/Quantstats/Drawdown.js"
}
