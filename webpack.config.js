var RewirePlugin = require('rewire-webpack');

module.exports = {
  resolve: {
    extensions: ['', '.coffee', '.cjsx', '.js', '.coffee.cjsx']
  },
  module: {
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" },
      { test: /\.cjsx$/, loader: "coffee-jsx-loader" }
    ]
  },
  plugins: [
    new RewirePlugin()
  ]
};
