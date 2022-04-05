looker.plugins.visualizations.add({
  create: function (element, config) {
    element.innerHTML = `<style>
      body {
        background-color: #1f2436;
        color: #1f2436;
        font-family: sans-serif;
      }
      </style><div id="myDiv"></div>`
  },


  updateAsync: function (data, element, config, queryResponse, details, done) {
    // Initializing arrays for yielding data.
    // Note: Each subarray represents 1 of the 16 classifications.
    var test = data
    var price = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
    var risk = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
    var yield = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
    var CUSIP = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]

    // Pushing rows of data to our arrays
    for (let i = 0; i < data.length; i++){
      var row = test[i]
      var currClassif = row["rel_val_corp.classifications"].value
      console.log(currClassif)
      price[currClassif-1].push(row["rel_val_corp.offering_price"].value)
      risk[currClassif-1].push(row["rel_val_corp.risk"].value)
      yield[currClassif-1].push(row["rel_val_corp.yield"].value)
      CUSIP[currClassif-1].push(row["rel_val_corp.cusip"].value)
    }

    // Initializing data from arrays based on classifications from 1 to 16
    var data = [
        {x: price[0], y: risk[0], z: yield[0], text: CUSIP[0], type: 'scatter3d', name: 'Classif: 1',
              mode: 'markers',  hovertemplate: 'Classificiations: 1<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(146, 129, 141, 1)', size: 10}
        },
        {x: price[1], y: risk[1], z: yield[1], text: CUSIP[1], type: 'scatter3d', name: 'Classif: 2',
              mode: 'markers',  hovertemplate: 'Classificiations: 2<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(98, 186, 212, 1)', size: 10}
        },
        {x: price[2], y: risk[2], z: yield[2], text: CUSIP[2], type: 'scatter3d', name: 'Classif: 3',
              mode: 'markers',  hovertemplate: 'Classificiations: 3<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(194, 190, 114, 1)', size: 10}
        },
        {x: price[3], y: risk[3], z: yield[3], text: CUSIP[3], type: 'scatter3d', name: 'Classif: 4',
              mode: 'markers',  hovertemplate: 'Classificiations: 4<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(197, 198, 166, 1)', size: 10}
        },
        {x: price[4], y: risk[4], z: yield[4], text: CUSIP[4], type: 'scatter3d', name: 'Classif: 5',
              mode: 'markers',  hovertemplate: 'Classificiations: 5<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(146, 143, 180, 1)', size: 10}
        },
        {x: price[5], y: risk[5], z: yield[5], text: CUSIP[5], type: 'scatter3d', name: 'Classif: 6',
              mode: 'markers',  hovertemplate: 'Classificiations: 6<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(88, 131, 132, 1)', size: 10}
        },
        {x: price[6], y: risk[6], z: yield[6], text: CUSIP[6], type: 'scatter3d', name: 'Classif: 7',
              mode: 'markers',  hovertemplate: 'Classificiations: 7<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(89, 103, 135, 1)', size: 10}
        },
        {x: price[7], y: risk[7], z: yield[7], text: CUSIP[7], type: 'scatter3d', name: 'Classif: 8',
              mode: 'markers',  hovertemplate: 'Classificiations: 8<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(130, 194, 202, 1)', size: 10}
        },
        { x: price[8], y: risk[8], z: yield[8], text: CUSIP[8], type: 'scatter3d', name: 'Classif: 9',
              mode: 'markers',  hovertemplate: 'Classificiations: 9<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(206, 224, 160, 1)', size: 10}
        },
        { x: price[9], y: risk[9], z: yield[9], text: CUSIP[9], type: 'scatter3d', name: 'Classif: 10',
              mode: 'markers',  hovertemplate: 'Classificiations: 10<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(146, 146, 146, 1)', size: 10},
        },
        { x: price[10], y: risk[10], z: yield[10], text: CUSIP[10], type: 'scatter3d', name: 'Classif: 11',
              mode: 'markers',  hovertemplate: 'Classificiations: 11<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(159, 193, 144, 1)', size: 10},
        },
        { x: price[11], y: risk[11], z: yield[11], text: CUSIP[11], type: 'scatter3d', name: 'Classif: 12',
              mode: 'markers',  hovertemplate: 'Classificiations: 12<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(31, 62, 90, 1)', size: 10},
        },
        { x: price[12], y: risk[12], z: yield[12], text: CUSIP[12], type: 'scatter3d', name: 'Classif: 13',
              mode: 'markers',  hovertemplate: 'Classificiations: 13<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(45, 118, 191, 1)', size: 10},
        },
        { x: price[13], y: risk[13], z: yield[13], text: CUSIP[13], type: 'scatter3d', name: 'Classif: 14',
              mode: 'markers',  hovertemplate: 'Classificiations: 14<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(169, 197, 116, 1)', size: 10},
        },
        { x: price[14], y: risk[14], z: yield[14], text: CUSIP[14], type: 'scatter3d', name: 'Classif: 15',
              mode: 'markers',  hovertemplate: 'Classificiations: 15<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(144, 200, 174, 1)', size: 10},
        },
        { x: price[15], y: risk[15], z: yield[15], text: CUSIP[15], type: 'scatter3d', name: 'Classif: 16',
              mode: 'markers',  hovertemplate: 'Classificiations: 16<br>' + 'Risk: %{y:.2f}<br>' + 'Yield: %{z:.2f}<br>'+ 'OfferingPrice: %{x:$.2f}<br>' + 'CUSIP: %{text}<extra></extra>', marker: {color: 'rgba(159, 222, 224, 1)', size: 10},
        },
    ]

    // Formatting of xyz axes on 3D scatter plot
    var layout = {
      scene:{
          xaxis: {
            title: {
              text: "Price",
            },
            linewidth: 10,
            zeroline: false,
            zerolinewidth: 0,
            backgroundcolor:'#E5ECF6',
            showbackground: true,
            gridcolor:'#ffffff',
            spikecolor: '#000000',
            spikesides: false,
            spikethickness: 2,
          },
          yaxis: {
            title: {
              text: "Risk",
            },
            linewidth: 10,
            zeroline: false,
            zerolinewidth: 0,
            backgroundcolor:'#E5ECF6',
            showbackground: true,
            gridcolor:'#ffffff',
            spikecolor: '#000000',
            spikesides: false,
            spikethickness: 2
          },
          zaxis: {
            title: {
            text: "Yield",
            },
            linewidth: 10,
            zeroline: false,
            zerolinewidth: 0,
            backgroundcolor:'#E5ECF6',
            showbackground: true,
            gridcolor:'#ffffff',
            spikecolor: '#000000',
            spikethickness: 2
          }
        },

        font:{
          color:'white',
        },
        paper_bgcolor:'#131722',
        width:600,
        height:600,
      };

    Plotly.newPlot('myDiv', data, layout);

    // We are done rendering! Let Looker know.
    done()
  },
})
