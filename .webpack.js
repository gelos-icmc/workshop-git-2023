const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './src/index.js',
  module: {rules: [{
    test: /\.css$/,
    use:['style-loader','css-loader'],
  }]},
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
  },
  plugins: [new HtmlWebpackPlugin({template: 'src/index.html'})],
};
