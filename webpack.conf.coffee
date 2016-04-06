'use strict'

webpack = require('webpack')

module.exports =
  entry: 'nopaste'
  output:
    filename: 'nopaste.js'
  resolve:
    extensions: [ '', '.js', '.tag', '.less' ]
    modulesDirectories: ['scripts', 'node_modules']
  module:
    preLoaders: [
      {test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs'}
    ]
    loaders: [
      {test: /\.(tag|js)$/, exclude: /node_modules/, loader: 'babel?presets[]=es2015'}
    ]
  plugins: [
    new webpack.ProvidePlugin({riot: 'riot'})
  ]
