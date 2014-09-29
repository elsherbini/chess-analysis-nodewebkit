define ['backbone','text!templates/board.html'], (Backbone, boardTemplate) ->

  class BoardView extends Backbone.View

    el: ".board-container"

    events: {}

    template: _.template(boardTemplate)

    render: ->
      @$el.html @template
      board = new ChessBoard('board', {'position': 'start', 'draggable': true})
      return this