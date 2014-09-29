define [
  'backbone'
  'app/views/app'
  'app/views/board'], (Backbone, AppView, BoardView) ->

  class Router extends Backbone.Router

    initialize: ->
      AppView.render()
      boardView = new BoardView
      boardView.render()
      Backbone.history.start()

    routes:
      '': 'rootRequested'

    rootRequested: ->
      return

