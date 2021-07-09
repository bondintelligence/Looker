looker.plugins.visualizations.add({
    // Id and Label are legacy properties that no longer have any function besides documenting
    // what the visualization used to have. The properties are now set via the manifest
    // form within the admin/visualizations page of Looker
    id: "hello_world",
    label: "Hello World",
    // Set up the initial state of the visualization
    create: function(element, config) {
      // Insert a <style> tag with some styles we'll use later. font-size: 72px;
      element.innerHTML = `
        <style>
          .hello-world-vis {
            /* Vertical centering */
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
            font-family: sans-serif;
            color: #ffffff;
          }
          body { background-color: #1f2436; color: #fff; text-align: center; font-family: sans-serif; }
        </style>
        <p style="color:#d1d1d1;font-size:78px;margin: 40px 10px 10px 10px; border: 2px solid #62bad4;" id="title"></p><p style="color:#9b9ea3;font-size:30px; margin: 10px 10px 0px 10px;height: 20px;" id="subtitle"></p>

        `;
      //#30303d
  //         <div style="background-color: #1f2436; width: 100px; height: 300px; border: 5px solid black; padding: 10px;></div>

      // Create a container element to let us center the text.

    },
    // Render in response to the data or settings changing
    updateAsync: function(data, element, config, queryResponse, details, done) {

      // Clear any errors from previous updates
      this.clearErrors();

      // Check for dimension fields
      if (queryResponse.fields.dimensions.length != 0) {
          // Grab the first cell of the data
          var firstRow = data[0];
          console.log(data)
          var firstCell = firstRow[queryResponse.fields.dimensions[0].name];
          console.log(queryResponse.fields.dimensions[0].label_short)
          title_value = firstCell.valueOf().rendered;
          //Accounting for dimensions without rendered formats
          if (typeof title_value === 'undefined') {
            title_value = firstCell.valueOf().value;
          }
          subtitle_value = queryResponse.fields.dimensions[0].label_short;
          //Accounting for long labels
          if (subtitle_value == "Predicted Dollar Price of the Trade") {
            subtitle_value = "Predicted Price"
          }
          document.getElementById("title").innerHTML = title_value;
          document.getElementById("subtitle").innerHTML = subtitle_value;
      }
      // Account for only measures
      else {

      // Grab the first cell of the data
      var firstRow = data[0];
      console.log(data)
      var firstCell = firstRow[queryResponse.fields.measures[0].name];
      console.log(queryResponse.fields.measures[0].label_short)
      title_value = firstCell.valueOf().rendered;
      subtitle_value = queryResponse.fields.measures[0].label_short;
      //Accounting for long labels
      if (subtitle_value == "Predicted Dollar Price of the Trade") {
        subtitle_value = "Predicted Price"
      }
      document.getElementById("title").innerHTML = title_value;
      document.getElementById("subtitle").innerHTML = subtitle_value;

      }

      done()
    }
  });
