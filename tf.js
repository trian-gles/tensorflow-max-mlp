const tf = require('@tensorflow/tfjs');
const maxApi = require('max-api');


const args = process.argv.slice(2)
const inputShape = parseInt(args[0]);
const outputShape = parseInt(args[1]);
const hiddenSize = parseInt(args[2]);


var model = tf.sequential();



model.add(tf.layers.dense({units: hiddenSize, inputShape: [inputShape], activation: 'relu'}));
model.add(tf.layers.dense({units: outputShape}));




var xsArr = [];
var ysArr = [];

async function train(epochs) {
  model.compile({loss: 'meanSquaredError', optimizer: 'sgd'});

  // aggregate data
  const xs = tf.tensor2d(xsArr, [xsArr.length, inputShape]);
  const ys = tf.tensor2d(ysArr, [xsArr.length, outputShape]);

  // Train the model using the data.
  await model.fit(xs, ys, {epochs});

  maxApi.outlet("training_done");

}

maxApi.addHandler("train", train);

maxApi.addHandler("data_point", (...data) => {
  data.map((item) => parseFloat(item));
  xsArr.push(data.slice(0, inputShape));
  ysArr.push(data.slice(inputShape));
});

maxApi.addHandler("clear_data", () => {
  xsArr = [];
  ysArr = [];
});

maxApi.addHandler("clear_model", () => {
  model = tf.sequential();
  model.add(tf.layers.dense({units: hiddenSize, inputShape: [inputShape], activation: 'relu'}));
  model.add(tf.layers.dense({units: outputShape}));
});


maxApi.addHandler("dump_data", () => {
  for (let i=0; i<xsArr.length; i++) {
    maxApi.outlet(xsArr[i].concat(ysArr[i]));
  }
});


maxApi.addHandler("predict", (...data) => {
  data.map((item) => parseFloat(item));
  model.predict(tf.tensor2d([data], [1, inputShape])).array().then((value) => {
    maxApi.outlet(value[0]);
  });

});

async function getWeights() {
  let weights = model.getWeights();
  for (let i = 0; i < weights.length; i++){
    let data = await weights[i].data();
    let shape = weights[i].shape;
    weights[i] = {data, shape};
    
  }
  return weights;
}

maxApi.addHandler("save", (dictId, key) => {
  maxApi.getDict(dictId).then((dict) => {
    getJson().then((json) => {
      dict[key] = json
      maxApi.setDict(dictId, dict);
    });
  });
});

async function getJson() {
  let json = {}
  json.weights = await getWeights();
  json.model = model.toJSON(null, false);
  return json;
}

function loadWeights(dict){
    tf.models.modelFromJSON(dict.model).then((m) => {
        model = m

        let data = dict.weights;
        let tensors = [];
        data.forEach(item => {
          let shape = item.shape;
          let vals = [];
          for (const [key, value] of Object.entries(item.data)) {
            vals.push(value);

          }
          tensors.push(tf.tensor(vals, shape));
        });
        model.setWeights(tensors);
      });
}


maxApi.addHandler("set_weights", loadWeights);


maxApi.addHandler("load", (dictId, key) => {
  maxApi.getDict(dictId).then((dict) => {
    loadWeights(dict[key]);
  });
});

maxApi.addHandler("dump_weights", () => {
  getJson().then((json) => {maxApi.outlet("weights", json);});
})

