looker.plugins.visualizations.add({
  create: function(element, config){
    element.innerHTML = "<h1>Ready to render!</h1>";

  },
  updateAsync: function(data, element, config, queryResponse, details, doneRendering){
    var row = data[0]
    var pred_cell = row[queryResponse.fields.measures[0].name];
    var min_pred_cell = row[queryResponse.fields.measures[1].name];
    console.log((pred_cell.valueOf().value))
    console.log((min_pred_cell.valueOf().value))
    pred = pred_cell.valueOf().value
    min_pred = min_pred_cell.valueOf().value


    // background-color: #1f2436;

    element.innerHTML = `<style>
    body {
      background-color: #1f2436;
      color: #1f2436;
      font-family: sans-serif; }
    #chartdiv {
      width: 100%;
      height: 240px;
    }
    </style><div id="chartdiv"></div>`;

    am4core.ready(function() {

      // Themes begin
      am4core.useTheme(am4themes_dark);
      // Themes end



      // create chart
      var chart = am4core.create("chartdiv", am4charts.GaugeChart);
      chart.hiddenState.properties.opacity = 0;
      chart.innerRadius = -15;

      var axis = chart.xAxes.push(new am4charts.ValueAxis());
      axis.min = 50;
      axis.max = 150;
      axis.hiddenState.properties.opacity = 1;
      axis.strictMinMax = true;

      var gradient = new am4core.LinearGradient();
      gradient.stops.push({color:am4core.color("green")})
      gradient.stops.push({color:am4core.color("yellow")})
      gradient.stops.push({color:am4core.color("red")})

      axis.renderer.line.stroke = gradient;
      axis.renderer.line.strokeWidth = 20;
      axis.renderer.line.strokeOpacity = 1;
      axis.zIndex = -1;

      axis.renderer.grid.template.disabled = true;

      var hand = chart.hands.push(new am4charts.ClockHand());
      hand.radius = am4core.percent(92);
      hand.innerRadius = am4core.percent(35);
      hand.pin.disabled = true;
      hand.startWidth = 7;
      hand.showValue(pred);

      var hand_2 = chart.hands.push(new am4charts.ClockHand());
      hand_2.radius = am4core.percent(92);
      hand_2.innerRadius = am4core.percent(35);
      hand_2.fill = am4core.color("#9B9EA3");
      hand_2.stroke = am4core.color("#9B9EA3");
      hand_2.startWidth = 3;
      hand_2.pin.disabled = true;
      hand_2.showValue(min_pred);


      var labelList = new am4core.ListTemplate(new am4core.Label());
      labelList.template.isMeasured = false;
      // labelList.template.fontSize = 25;
      // labelList.template.padding(10, 20, 10, 20);
      // labelList.template.y = am4core.percent(65);
      labelList.template.horizontalCenter = "middle";

      var label = labelList.create();
      label.parent = chart.chartContainer;
      label.x = am4core.percent(50);
      label.fontSize = 35;
      label.y = am4core.percent(65);
      label.text = "$"+ pred.toFixed(2).toString();

      var label2 = labelList.create();
      label2.parent = chart.chartContainer;
      label2.fontSize = 20;
      label2.x = am4core.percent(50);
      label2.y = am4core.percent(82);
      label2.fill = "#9B9EA3";
      label2.text = "$"+ min_pred.toFixed(0).toString();



      // var label = chart.radarContainer.createChild(am4core.Label);
      // label.isMeasured = false;
      // label.fontSize = 35;
      // label.x = am4core.percent(50);
      // label.y = am4core.percent(100);
      // label.horizontalCenter = "middle";
      // label.verticalCenter = "bottom";
      // label.text = "$"+ pred.toFixed(2).toString();

      // var label_2 = chart.createChild(am4core.Label);
      // label_2.isMeasured = false;
      // label_2.fontSize = 20;
      // label_2.x = am4core.percent(50);
      // label_2.y = am4core.percent(94);
      // label_2.horizontalCenter = "middle";
      // label_2.verticalCenter = "bottom";
      // label_2.fill = "#9B9EA3";
      // label_2.stroke = "#9B9EA3";
      // label_2.text = "$"+ min_pred.toFixed(0).toString();
      // label_2.direction = "bottom";
      // label_2.horizontalCenter = "middle";
      // label_2.x = am4core.percent(73);
      // label_2.rotation = -270;
      // label_2.isMeasured = false;
      // label_2.fontSize = 15;
      // label_2.fill = "#9B9EA3";
      // label_2.stroke = "#9B9EA3";
      // label_2.text = "$" + min_pred.toFixed(0).toString();


      // var label_2 = chart.radarContainer.createChild(am4core.Label);
      // label_2.isMeasured = false;
      // label_2.fontSize = 45;
      // label_2.x = am4core.percent(50);
      // label_2.y = am4core.percent(100);
      // label_2.horizontalCenter = "middle";
      // label_2.verticalCenter = "bottom";
      // label_2.text = pred.toFixed(2).toString();

      // setInterval(function() {
      //     hand.showValue(Math.random() * 100, 1000, am4core.ease.cubicOut);
      // }, 2000);


      });

    doneRendering()
  }
});
