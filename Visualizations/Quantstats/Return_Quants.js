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
      </style><div id="box_visual"></div>`;

    },
    updateAsync: function(data, element, config, queryResponse, details, done){
      //Dealing with filter, and narrowing down to CUSIP value filter (I couldn't find way to access filter directly, so decided to
      //access filtered query, specifically the CUSIP field)
      var Strat_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 48));
      var Bench_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 48));
      console.log(Strat_CUSIP)
      console.log(Bench_CUSIP)
      fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/retquant/'+Strat_CUSIP+'/'+Bench_CUSIP)
      //fetch('https://127.0.0.1:5000/getdata/retquant/'+Strat_CUSIP+'/'+Bench_CUSIP)
      .then(response => response.json())
      .then(json => {
        data = [JSON.parse(JSON.stringify(json))];
        // console.log(data);



        var trace1 = {
          y: Object.values(data[0].Daily),
          type: 'box',
          name: 'Daily',
          marker:{
            color: '#62bad4',
            //color: '#1f77b4'
          }
        };

        var trace2 = {
          y: Object.values(data[0].Weekly),
          type: 'box',
          name: 'Weekly',
          marker:{
            color: '#929292'
            //color: '#ff7f0e'
          }
        };

        var trace3 = {
          y: Object.values(data[0].Monthly),
          type: 'box',
          name: 'Monthly',
          marker:{
            color: '#a9c574'
            //color: '#7f7f7f'
          }
        };

        var trace4 = {
          y: Object.values(data[0].Quarterly),
          type: 'box',
          name: 'Quarterly',
          marker:{
            color: '#82c2ca'
          }
        };

        var trace5 = {
          y: Object.values(data[0].Yearly),
          type: 'box',
          name: 'Yearly',
          marker:{
            color: '#ffffff'
          }
        };


        //For layout options, see https://plotly.com/javascript/reference/layout/coloraxis/
        var layout= {
          //Formatting axis options here: https://github.com/d3/d3-format/blob/main/README.md#locale_format
          yaxis: {
            tickformat: 'p',
            tick0: 0,
          },
          plot_bgcolor:"#1f2436",
          paper_bgcolor:"#1f2436",
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
          height: 400,
          yaxis: {
            gridcolor: "#444444",
          },
        }

        var data = [trace1, trace2, trace3, trace4, trace5];

        Plotly.newPlot('box_visual', data, layout);
        done();
      });

    }
  });
