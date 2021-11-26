looker.plugins.visualizations.add({
    id: "get",
    label: "GET",
    options: {},
    create: function(element, config){
    },
    updateAsync: function(data, element, config, queryResponse, details, done){
      //Dealing with filter, and narrowing down to CUSIP value filter (I couldn't find way to access filter directly, so decided to
      //access filtered query, specifically the CUSIP field)
      var row = data[0];
      var CUSIP = row[queryResponse.fields.dimensions[0].name];
      console.log(data);
      console.log(CUSIP.value);

      element.innerHTML = `<style>
      body {
        background-color: #1f2436;
        color: #ffffff;
        font-family: sans-serif; }
      </style><table id="table"></table>`;

      //https://jsonplaceholder.typicode.com/todos/1
      //Try CUSIP: 010824GS3
      //API query with the specified CUSIP value
      //fetch('https://127.0.0.1:5000/getdata/'+CUSIP.value+'/metrics')
      fetch('https://quantstats-dot-bi-model-development.wl.r.appspot.com/getdata/'+CUSIP.value+'/metrics')
        .then(response => response.json())
        .then(json => {
          bond_metrics = [JSON.parse(JSON.stringify(json))];
          let table = document.querySelector("table");
          generateTable(table, bond_metrics); // generate the table first
          done();
        });


      //Tentative visualization for metrics (will be polished later)
      function generateTable(table, data) {
        //Going through elements of provided data (there should only be one)
        for (let element of data) {
          //Going through keys in element of data
          for (key in element) {
            //Adding row for each key
            let row = table.insertRow();
            //Making key a header
            let th = document.createElement("th");
            let key_text = document.createTextNode(key);
            th.appendChild(key_text);
            row.appendChild(th);
            //Inserting the data specified by the key
            let cell = row.insertCell();
            let data_text = document.createTextNode(element[key]);
            cell.appendChild(data_text);
          }
        }
      }
    }
  });
