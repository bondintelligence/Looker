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


        xValues = Object.keys(data[0].APR)
        yValues = Object.keys(data[0])
        zValues = [Object.values(data[0].JAN), Object.values(data[0].FEB), Object.values(data[0].MAR), Object.values(data[0].APR), Object.values(data[0].MAY), Object.values(data[0].JUN), Object.values(data[0].JUL), Object.values(data[0].AUG), Object.values(data[0].SEP), Object.values(data[0].OCT), Object.values(data[0].NOV), Object.values(data[0].DEC)]
        var trace1 = {
          x: xValues,
          y: yValues,
          z: zValues,
          type: 'heatmap',
          //values here give color scale
          // colorscale: 'RdBl',
          reversescale: true,
          colorscale: [
            ['0.0', '#A9C574'],
            ['0.111111111111', '#B1BA70'],
            ['0.222222222222', '#B9AF6D'],
            ['0.333333333333', '#C0A469'],
            ['0.444444444444', '#C89965'],
            ['0.555555555556', '#D08E62'],
            ['0.666666666667', '#D8835E'],
            ['0.777777777778', '#E0785B'],
            ['0.888888888889', '#E86D57'],
            ['1.0', '#EF6253']
          ],
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
          margin: {
            l: 50,
            r: 50,
            b: 50,
            t: 0,
            pad: 4
          },
        }

        for ( var i = 0; i < yValues.length; i++ ) {
          for ( var j = 0; j < xValues.length; j++ ) {
            var currentValue = zValues[i][j];
            //Can experiment with these values for color of text
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
                color: "white"
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
