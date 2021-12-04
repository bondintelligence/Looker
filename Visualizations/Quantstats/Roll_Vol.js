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
      </style><div id="cret_visual"></div>`;

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
      //fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/rvol/'+Strat_CUSIP+'/'+Bench_CUSIP)
      fetch('https://127.0.0.1:5000/getdata/rvol/'+Strat_CUSIP+'/'+Bench_CUSIP)
      .then(response => response.json())
      .then(json => {
        data = [JSON.parse(JSON.stringify(json))];
        // console.log(data);
        console.log(Object.values(data[0].Strategy));

        var trace1 = {
          x: Object.keys(data[0].Strategy),
          y: Object.values(data[0].Strategy),
          type: 'scatter',
          name: 'Strategy'
        };

        var trace2 = {
          x: Object.keys(data[0].Benchmark),
          y: Object.values(data[0].Benchmark),
          type: 'scatter',
          name: 'Benchmark'
        };

        //For layout options, see https://plotly.com/javascript/reference/layout/coloraxis/
        var layout= {
          //Formatting axis options here: https://github.com/d3/d3-format/blob/main/README.md#locale_format
          plot_bgcolor:"#1f2436",
          paper_bgcolor:"#1f2436",
          font: {
            // family: 'sans-serif',
            // size: 12,
            color: '#ffffff'
          },
        }

        var data = [trace1, trace2];

        Plotly.newPlot('cret_visual', data, layout);
        done();
      });

    }
  });
