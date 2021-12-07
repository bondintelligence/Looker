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
      var Strat_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_1 ) = ") + 48));
      var Bench_CUSIP = (queryResponse.sql.substring(queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 39, queryResponse.sql.indexOf("(quantstats_cusips.string_field_2 ) = ") + 48));

      //https://jsonplaceholder.typicode.com/todos/1
      //Try CUSIP: 010824GS3
      //API query with the specified CUSIP value
      //fetch('https://127.0.0.1:5000/getdata/'+CUSIP.value+'/metrics')
      //fetch('https://quantstats-dot-bi-model-development.wl.r.appspot.com/getdata/'+CUSIP.value+'/metrics')
      fetch('https://quantstats-wmn5n7rc5q-uc.a.run.app/getdata/metrics/'+Strat_CUSIP+'/'+Bench_CUSIP)
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
        table.style.textAlign = "left";
        benchmark = data[0].Benchmark;
        strategy = data[0].Strategy;
        keys = Object.keys(data[0].Strategy);

        //Adding row for headers
        let row = table.insertRow();
        let th1 = document.createElement("th");
        let met = document.createTextNode("Metric");
        th1.appendChild(met);
        row.appendChild(th1);
        let th2 = document.createElement("th");
        let strat = document.createTextNode("Strategy");
        th2.appendChild(strat);
        row.appendChild(th2);
        let th3 = document.createElement("th");
        let bench = document.createTextNode("Benchmark");
        th3.appendChild(bench);
        row.appendChild(th3);
        for (key of keys) {
          //Adding row for each key
          let row = table.insertRow();
          //Making key a header
          let th = document.createElement("th");
          let key_text = document.createTextNode(key);
          th.appendChild(key_text);
          row.appendChild(th);
          //Inserting the data specified by the key
          let cell = row.insertCell();
          let strat_text = document.createTextNode(data[0].Strategy[key]);
          cell.appendChild(strat_text);
          let cell2 = row.insertCell();
          let bench_text = document.createTextNode(data[0].Benchmark[key]);
          cell2.appendChild(bench_text);
        }
      }
    }
  });
