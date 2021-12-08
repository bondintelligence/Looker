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
      </style><table id="table"></table>`;

    },
    updateAsync: function(data, element, config, queryResponse, details, done){
      //Dealing with filter, and narrowing down to CUSIP value filter (I couldn't find way to access filter directly, so decided to
      //access filtered query, specifically the CUSIP field)
      var row = data[0];
      var CUSIP = row[queryResponse.fields.dimensions[0].name];
      var Strat_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 48));
      var Bench_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 48));

      //https://jsonplaceholder.typicode.com/todos/1
      //Try CUSIP: 010824GS3
      //API query with the specified CUSIP value
      //fetch('https://127.0.0.1:5000/getdata/metrics/010824GS3/00912XAS3')
      //fetch('https://127.0.0.1:5000/getdata/wdraw/010824GS3/012104PN9')
      fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/wdraw/'+Strat_CUSIP+'/'+Bench_CUSIP)
        .then(response => response.json())
        .then(json => {
          bond_metrics = [JSON.parse(JSON.stringify(json))];
          let table = document.querySelector("table");
          generateTable(table, bond_metrics); // generate the table first
          done();
        });


      //Tentative visualization (will be polished later)
      function generateTable(table, data) {
        table.innerHTML = "";
        keys = Object.keys(data[0].start);

        table.style.textAlign = "right";
        table.style.borderSpacing = "10px 5px"

        //Adding row for headers
        let row = table.insertRow();
        let th1 = document.createElement("th");
        let met = document.createTextNode("Started");
        th1.appendChild(met);
        th1.style.textAlign = "left";
        row.appendChild(th1);
        let th2 = document.createElement("th");
        let bench = document.createTextNode("Recovered");
        th2.appendChild(bench);
        row.appendChild(th2);
        let th3 = document.createElement("th");
        let strat = document.createTextNode("Drawdown");
        th3.appendChild(strat);
        row.appendChild(th3);
        let th4 = document.createElement("th");
        let mult = document.createTextNode("Days");
        th4.appendChild(mult);
        row.appendChild(th4);
        for (key of keys) {
          //Adding row for each key
          let row = table.insertRow();
          //Making key a header
          let cel = row.insertCell();
          let key_text = document.createTextNode(data[0].start[key]);
          cel.appendChild(key_text);
          //Inserting the data specified by the key
          let cell = row.insertCell();
          let bench_text = document.createTextNode(data[0].end[key]);
          cell.appendChild(bench_text);
          let cell2 = row.insertCell();
          let strat_text = document.createTextNode((data[0]["max drawdown"][key]).toFixed(5) + "%");
          cell2.appendChild(strat_text);
          let cell3 = row.insertCell();
          let mult_text = document.createTextNode(data[0].days[key]);
          cell3.appendChild(mult_text);
        }
      }
    }
  });
