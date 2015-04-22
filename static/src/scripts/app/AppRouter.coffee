define [
  'backbone',
  'collections/CommitsCollection'
  'models/CommitModel'
  'views/IndexView'
  'views/ErrorView'
], (Backbone, Commits, Commit, IndexView, ErrorView) ->
  class Router extends Backbone.Router
    routes:
      '':                   'index'
      '*notFound':          'notFound'

    initialize: ->
      @bodyContainer = $('#body-container')

    index: ->
      indexView = new IndexView
      @_showView indexView

    notFound: ->
      errorView = new ErrorView
        error: 404

      @_showView errorView

    _showView: (view) ->
      @?currentView.close?()
      @currentView = view
      @bodyContainer.html view.render().$el
