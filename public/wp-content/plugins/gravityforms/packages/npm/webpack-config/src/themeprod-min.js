const merge=require("webpack-merge"),MiniCssExtractPlugin=require("mini-css-extract-plugin"),BundleAnalyzerPlugin=require("webpack-bundle-analyzer").BundleAnalyzerPlugin,prodBase=require("./configs/prod-base.js"),entry=require("./entry/theme"),externals=require("./externals/theme"),sc=require("./optimization/split-chunks"),config=require("./config");module.exports=merge.strategy({optimization:"append",plugins:"append"})(prodBase,{entry:entry,externals:externals,optimization:{splitChunks:sc.scTheme},output:{path:config.paths.dist},plugins:[new BundleAnalyzerPlugin({analyzerMode:"static",reportFilename:config.paths.reports.replace("%s","theme-bundle-prod"),openAnalyzer:!1})]});