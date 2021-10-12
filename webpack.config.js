// const path = require("path");
// const WebpackAssetsManifest = require("webpack-assets-manifest");

// const { NODE_ENV } = process.env;
// const isProd = NODE_ENV === "production";

// module.exports = {
//   mode: isProd ? "production" : "development",
//   devtool: "source-map",
//   entry: {
//     application: path.resolve(__dirname, "app/javascript/application.js"),
//   },
//   output: {
//     path: path.resolve(__dirname, "public/packs"),
//     publicPath: "/packs/",
//     filename: isProd ? "[name]-[hash].js" : "[name].js",
//   },
//   resolve: {
//     extensions: [".js"],
//   },
//   plugins: [
//     new WebpackAssetsManifest({
//       publicPath: true,
//       output: "manifest.json",
//     }),
//   ],
// };
const path = require("path");
const WebpackAssetsManifest = require("webpack-assets-manifest");
const glob = require("glob");

const { NODE_ENV } = process.env;
const isProd = NODE_ENV === "production";

const entries = {};
glob.sync("app/javascript/packs/*.js").forEach((filePath) => {
  const name = path.basename(filePath, path.extname(filePath));
  entries[name] = path.resolve(__dirname, filePath);
});

module.exports = {
  mode: isProd ? "production" : "development",
  devtool: "source-map",
  entry: entries,
  output: {
    path: path.resolve(__dirname, "public/packs"),
    publicPath: "/packs/",
    filename: isProd ? "[name]-[hash].js" : "[name].js",
  },
  optimization: {
    splitChunks: {
      name: "vendor",
      chunks: "initial",
    },
  },
  resolve: {
    extensions: [".js"],
  },
  plugins: [
    new WebpackAssetsManifest({
      publicPath: true,
      output: "manifest.json",
      writeToDisk: true
    }),
  ],
};