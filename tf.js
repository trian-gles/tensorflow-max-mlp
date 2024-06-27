const tf = require('@tensorflow/tfjs');
const maxApi = require('max-api');


const args = process.argv.slice(2)
const inputShape = parseInt(args[0]);
const outputShape = parseInt(args[1]);
const hiddenSize = parseInt(args[2]);

// Define a model for linear regression.
const model = tf.sequential();



model.add(tf.layers.dense({units: hiddenSize, inputShape: [inputShape]}));
model.add(tf.layers.dense({units: outputShape}));
model.compile({loss: 'meanSquaredError', optimizer: 'sgd'});

// Generate some synthetic data for training.


var xsArr = [];
var ysArr = [];


maxApi.addHandler("train", (epochs) => {

  // aggregate data
  const xs = tf.tensor2d(xsArr, [xsArr.length, inputShape]);
  const ys = tf.tensor2d(ysArr, [xsArr.length, outputShape]);

  // Train the model using the data.
  model.fit(xs, ys, {epochs});
});

maxApi.addHandler("dataPoint", (...data) => {
  data.map((item) => parseFloat(item));
  xsArr.push(data.slice(0, inputShape));
  ysArr.push(data.slice(inputShape));
});

maxApi.addHandler("predict", (...data) => {
  data.map((item) => parseFloat(item));
  model.predict(tf.tensor2d([data], [1, inputShape])).array().then((value) => {
    maxApi.outlet(value[0]);
  });

});

