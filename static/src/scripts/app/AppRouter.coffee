define [
  'backbone',
  'collections/CommitsCollection'
  'models/CommitModel'
  'views/IndexView'
  'views/CommitDetailView'
  'views/ErrorView'
], (Backbone, Commits, Commit, IndexView, CommitDetailView, ErrorView) ->
  class Router extends Backbone.Router
    routes:
      '':                   'index'
      'commits/:id':        'commit'
      '*notFound':          'notFound'

    initialize: ->
      @bodyContainer = $('#body-container')

    index: ->
      indexView = new IndexView
      @_showView indexView

    commit: (id) ->
      commit = new Commit
        id: id
      commit.fetch()
      commitView = new CommitDetailView
        model: commit
      @_showView commitView

    notFound: ->
      errorView = new ErrorView
        error: 404

      @_showView errorView

    _showView: (view) ->
      @?currentView.close?()
      @currentView = view
      @bodyContainer.html view.render().$el
