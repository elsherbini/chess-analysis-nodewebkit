define ['app/router'], (Router) ->

  router = null

  initialize = ->

    App = window.App = {}

    router = new Router()

  {router: router, initialize: initialize}