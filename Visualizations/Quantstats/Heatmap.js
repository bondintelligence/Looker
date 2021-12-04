looker.plugins.visualizations.add({
    id: "get",
    label: "GET",
    options: {},
    create: function(element, config){
      element.innerHTML = `<style>
      body {
        background-color: #1f2436;
        color: #ffffff;
        font-family: sans-serif; }
      </style><div id="heat_visual"></div>`;

    },
    updateAsync: function(data, element, config, queryResponse, details, done){
      //Dealing with filter, and narrowing down to CUSIP value filter (I couldn't find way to access filter directly, so decided to
      //access filtered query, specifically the CUSIP field)
      var row = data[0];
      var CUSIP = row[queryResponse.fields.dimensions[0].name];
      var Strat_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 48));
      var Bench_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 48));
      console.log(Strat_CUSIP)
      console.log(Bench_CUSIP)
      fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/heatmap/'+Strat_CUSIP+'/'+Bench_CUSIP)
      //fetch('https://127.0.0.1:5000/getdata/heatmap/'+Strat_CUSIP+'/'+Bench_CUSIP)
      .then(response => response.json())
      .then(json => {
        data = [JSON.parse(JSON.stringify(json))];
        console.log(data);

        var colorscaleValue = [
          [0, '#e8633f'],
          [1, '#1a6c3f']
        ];


        xValues = Object.keys(data[0].APR)
        yValues = Object.keys(data[0])
        zValues = [Object.values(data[0].JAN), Object.values(data[0].FEB), Object.values(data[0].MAR), Object.values(data[0].APR), Object.values(data[0].MAY), Object.values(data[0].JUN), Object.values(data[0].JUL), Object.values(data[0].AUG), Object.values(data[0].SEP), Object.values(data[0].OCT), Object.values(data[0].NOV), Object.values(data[0].DEC)]
        var trace1 = {
          x: xValues,
          y: yValues,
          z: zValues,
          type: 'heatmap',
          //values here give color scale
          colorscale: 'RdBl',
          reversescale: true,
          name: 'Strategy'
        };


        //For layout options, see https://plotly.com/javascript/reference/layout/coloraxis/
        var layout= {
          //Formatting axis options here: https://github.com/d3/d3-format/blob/main/README.md#locale_format
          plot_bgcolor:"#1f2436",
          paper_bgcolor:"#1f2436",
          annotations: [],
          font: {
            // family: 'sans-serif',
            // size: 12,
            color: '#ffffff'
          },
        }

        for ( var i = 0; i < yValues.length; i++ ) {
          for ( var j = 0; j < xValues.length; j++ ) {
            var currentValue = zValues[i][j];
            //Can experiment with these values for color of text
            if (currentValue != 0.0) {
              var textColor = 'white';
            }else{
              var textColor = 'black';
            }
            var result = {
              xref: 'x1',
              yref: 'y1',
              x: xValues[j],
              y: yValues[i],
              text: zValues[i][j],
              // font: {
              //   family: 'Arial',
              //   size: 12,
              //   color: 'rgb(50, 171, 96)'
              // },
              showarrow: false,
              font: {
                color: textColor
              }
            };
            layout.annotations.push(result);
          }
        }


        var data = [trace1];

        Plotly.newPlot('heat_visual', data, layout);
        done();
      });

    }
  });
