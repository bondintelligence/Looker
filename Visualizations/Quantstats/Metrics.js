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
    //fetch('https://127.0.0.1:5000/getdata/'+CUSIP.value+'/metrics')

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
      if (Bench_CUSIP.substring(0, 4) != "None"){
        benchmark = data[0].Benchmark;
      }
      strategy = data[0].Strategy;
      keys = Object.keys(data[0].Strategy);
      table.style.textAlign = "left";
      table.style.borderSpacing = "10px 5px"

      //Adding row for headers
      let row = table.insertRow();
      let th1 = document.createElement("th");
      let met = document.createTextNode("Metric");
      th1.appendChild(met);
      row.appendChild(th1);
      let th2 = document.createElement("th");
      let strat = document.createTextNode("Strategy");
      th2.appendChild(strat);
      th2.style.textAlign = "right";
      row.appendChild(th2);
      if (Bench_CUSIP.substring(0, 4) != "None"){
        let th3 = document.createElement("th");
        let bench = document.createTextNode("Benchmark");
        th3.appendChild(bench);
        th3.style.textAlign = "right";
        row.appendChild(th3);
      }

      hor_bar = ["Cumulative Return ", "Sharpe ", "Max Drawdown ", "Expected Daily % ", "Gain/Pain Ratio ", "Payoff Ratio ", "MTD ", "Best Day ", "Avg. Drawdown ", "Avg. Up Month "]
      console.log(keys);
      for (key of keys) {
        //Adding row for each key
        if(hor_bar.includes(key)){
          console.log(key);
          let div = table.insertRow();
          let cell_hold = div.insertCell();
          cell_hold.colSpan = "3";
          let bar = document.createElement("HR");
          cell_hold.appendChild(bar);
          div.appendChild(cell_hold);
        }
        let row = table.insertRow();
        let cell = row.insertCell();
        let key_text = document.createTextNode(key);
        cell.appendChild(key_text);
        let cell1 = row.insertCell();
        let strat_text = document.createTextNode(data[0].Strategy[key]);
        cell1.style.textAlign = "right";
        cell1.appendChild(strat_text);
        let cell2 = row.insertCell();
        if (Bench_CUSIP.substring(0, 4) != "None"){
          let bench_text = document.createTextNode(data[0].Benchmark[key]);
          cell2.style.textAlign = "right";
          cell2.appendChild(bench_text);
        }
      }
    }
  }
});
