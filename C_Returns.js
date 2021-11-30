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


      fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/'+CUSIP.value+'/cret')
      .then(response => response.json())
      .then(json => {
        bond_metrics = [JSON.parse(JSON.stringify(json))];
        // console.log(bond_metrics);
        let extractColumn = (arr, column) => arr.map(x=>x[column]);
        // console.log(Object.keys(bond_metrics[0]));

        var trace1 = {
          x: Object.keys(bond_metrics[0]),
          y: Object.values(bond_metrics[0]),
          type: 'scatter'
        };
        //For layout options, see https://plotly.com/javascript/reference/layout/coloraxis/
        var layout= {
          plot_bgcolor:"#1f2436",
          paper_bgcolor:"#1f2436",
          // coloraxis: {
          //   ColorBar: {
          //     outlinecolor:"#ffffff",
          //   }
          // }
        }

        var data = [trace1];

        Plotly.newPlot('cret_visual', data, layout);

        // let table = document.querySelector("table");
        // generateTable(table, bond_metrics); // generate the table first
        done();
      });

    }
  });
