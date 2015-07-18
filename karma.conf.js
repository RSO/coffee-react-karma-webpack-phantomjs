// Karma configuration
var RewirePlugin = require('rewire-webpack');

module.exports = function(config) {
  config.set({

	// base path, that will be used to resolve files and exclude
	basePath: '',


	// frameworks to use
	frameworks: ['mocha', 'chai'],


	// list of files / patterns to load in the browser
	files: [
    './node_modules/phantomjs-polyfill/bind-polyfill.js',
	  'test/*_spec*'
	],


	// list of preprocessors
	preprocessors: {
	  'test/*': ['webpack']
	},


	webpack: {
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
	},


	webpackMiddleware: {
    noInfo: true
	},


	// test results reporter to use
	// possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
	reporters: ['progress'],


	// web server port
	port: 9876,


	// enable / disable colors in the output (reporters and logs)
	colors: true,


	// level of logging
	// possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
	logLevel: config.LOG_INFO,


	// enable / disable watching file and executing tests whenever any file changes
	autoWatch: true,


	// Start these browsers, currently available:
	// - Chrome
	// - ChromeCanary
	// - Firefox
	// - Opera (has to be installed with `npm install karma-opera-launcher`)
	// - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
	// - PhantomJS
	// - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
	browsers: ['PhantomJS'],


	// If browser does not capture in given timeout [ms], kill it
	captureTimeout: 60000,


	// Continuous Integration mode
	// if true, it capture browsers, run tests and exit
	singleRun: false,


	// List plugins explicitly, since autoloading karma-webpack
	// won't work here
	plugins: [
		require("karma-mocha"),
    require("karma-chai"),
		require("karma-phantomjs-launcher"),
		require("karma-chrome-launcher"),
		require("karma-webpack")
	]
  });
};
