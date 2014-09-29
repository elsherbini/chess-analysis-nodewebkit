requirejs.config
  baseUrl: './js'
  shim:
    'underscore':
      exports: '_'
    'backbone':
      deps: ['underscore', 'jquery']
      exports: 'Backbone'
    'bootstrap':
      deps: ['jquery']
    'chessboard':
      exports: 'ChessBoard'

  paths:
    'underscore': '../components/underscore/underscore'
    'backbone': '../components/backbone/backbone'
    'jquery': '../components/jquery/dist/jquery'
    'bootstrap': '../components/bootstrap/dist/js/bootstrap'
    'text': '../components/requirejs-text/text'
    'templates': '../templates'
    'chessboard': '../components/chessboardjs/js/chessboard-0.3.0'


requirejs ['app/vendors'], ->
  requirejs ['app/app'], (App) ->
    App.initialize()