module.exports = (config) ->

  config.set

    singleRun: false
    autoWatch: true

    basePath: '../'

    frameworks: [
      "jasmine"#, 'requirejs'
    ]

    files: [
      # bower:js
      'bower_components/jquery/dist/jquery.js'
      'bower_components/angular/angular.js'
      'bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js'
      'bower_components/angular-animate/angular-animate.js'
      'bower_components/angular-cookies/angular-cookies.js'
      'bower_components/angular-resource/angular-resource.js'
      'bower_components/angular-route/angular-route.js'
      'bower_components/angular-sanitize/angular-sanitize.js'
      'bower_components/angular-touch/angular-touch.js'
      'bower_components/angular-mocks/angular-mocks.js'
      # endbower
      # bower:coffee
      # endbower
      "app/scripts/**/*.coffee"
#      "test/mock/**/*.coffee"
      "test/spec/**/*.coffee"
    ]

    exclude: [
    ]

    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN
    #|| LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_WARN

    captureTimeout: 60000

    colors: true

    browsers: [
     "PhantomJS"
    ]

    plugins: [
      'karma-phantomjs-launcher',
      'karma-jasmine',
      'karma-junit-reporter',
      "karma-coffee-preprocessor",
      'karma-coverage'
    ]

    junitReporter:
      outputDir: 'reports/testresults/'
      suite: 'unit'

    reporters: ['coverage', 'junit']

    preprocessors:
      '**/*.coffee': ['coffee']
      'app/scripts/**/*.coffee': 'coverage'

    coverageReporter:
      type : 'cobertura'
      dir : 'reports/codecoverage/'
      file: 'cobertura-coverage.xml'

    # browsers: [
	  #   "Chrome"
    # ]
    #
    # plugins: [
    #   'karma-chrome-launcher',
    #   'karma-jasmine',
    #   'karma-junit-reporter',
    #   "karma-coffee-preprocessor",
    #   'karma-coverage'
    # ]
    #
    # preprocessors:
    #   '**/*.coffee': ['coffee']

    # Uncomment the following lines if you
    #are using grunt's server to run the tests
    # proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    # urlRoot: '_karma_'

    # deprecated?
    #preprocessors: '**/*.coffee': ['coffee']
