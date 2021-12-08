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
      //fetch('https://127.0.0.1:5000/getdata/eoytable/010824GS3/012104PN9')
      fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/eoytable/'+Strat_CUSIP+'/'+Bench_CUSIP)
        .then(response => response.json())
        .then(json => {
          bond_metrics = [JSON.parse(JSON.stringify(json))];
          let table = document.querySelector("table");
          generateTable(table, bond_metrics); // generate the table first
          done();
        });


      //Tentative visualization for metrics (will be polished later)
      function generateTable(table, data) {
        table.innerHTML = "";
        benchmark = data[0].Benchmark;
        strategy = data[0].Strategy;
        multiplier = data[0].Multiplier;
        won = data[0].Won;
        keys = Object.keys(data[0].Strategy);

        table.style.textAlign = "right";
        table.style.borderSpacing = "10px 5px"

        //Adding row for headers
        let row = table.insertRow();
        let th1 = document.createElement("th");
        let met = document.createTextNode("Year");
        th1.appendChild(met);
        row.appendChild(th1);
        let th2 = document.createElement("th");
        let bench = document.createTextNode("Benchmark");
        th2.appendChild(bench);
        row.appendChild(th2);
        let th3 = document.createElement("th");
        let strat = document.createTextNode("Strategy");
        th3.appendChild(strat);
        row.appendChild(th3);
        let th4 = document.createElement("th");
        let mult = document.createTextNode("Multiplier");
        th4.appendChild(mult);
        row.appendChild(th4);
        let th5 = document.createElement("th");
        let w = document.createTextNode("Won");
        th5.appendChild(w);
        row.appendChild(th5);
        for (key of keys) {
          //Adding row for each key
          let row = table.insertRow();
          //Making key a header
          // let th = document.createElement("th");
          // let key_text = document.createTextNode(key);
          // th.appendChild(key_text);
          // row.appendChild(th);
          let cell1 = row.insertCell();
          let key_text = document.createTextNode(key);
          cell1.appendChild(key_text);


          //Inserting the data specified by the key
          let cell = row.insertCell();
          let bench_text = document.createTextNode(data[0].Benchmark[key]);
          if (data[0].Benchmark[key] != null){
            bench_text = document.createTextNode((data[0].Benchmark[key]).toFixed(5));
          }
          cell.appendChild(bench_text);
          let cell2 = row.insertCell();
          let strat_text = document.createTextNode(data[0].Strategy[key]);
          if (data[0].Strategy[key] != null){
            strat_text = document.createTextNode((data[0].Strategy[key]).toFixed(5));
          }
          cell2.appendChild(strat_text);
          let cell3 = row.insertCell();
          let mult_text;
          if (data[0].Multiplier[key] == null){
            mult_text = document.createTextNode("");
          } else {
            mult_text = document.createTextNode((data[0].Multiplier[key]).toFixed(5));
          }
          cell3.appendChild(mult_text);
          let cell4 = row.insertCell();
          let w_text = document.createTextNode(data[0].Won[key]);
          cell4.style.textAlign = "center";
          cell4.appendChild(w_text);
        }
      }
    }
  });
