define [
  'backbone',
  'collections/CommitsCollection'
  'models/CommitModel'
  'views/IndexView'
  'views/CommitsListView'
  'views/CommitDetailView'
  'views/ErrorView'
], (Backbone, Commits, Commit, IndexView, CommitsListView, CommitDetailView, ErrorView) ->
  class Router extends Backbone.Router
    routes:
      '':                   'index'
      'commits/':           'commits'
      'commits/:id':        'commit'
      '*notFound':          'notFound'

    initialize: ->
      @bodyContainer = $('#body-container')
      @bind 'route', @_trackPageview

    index: ->
      indexView = new IndexView
      @_showView indexView

    commits: ->
      commits = new Commits
      commits.fetch()
      commitsView = new CommitsListView
        collection: commits
      @_showView teamsView

    commit: (id) ->
      commit = new Commit
        id: id
      commit.fetch()
      commitView = new CommitDetailView
        model: commit
      @_showView teamProfileView

    notFound: ->
      errorView = new ErrorView
        error: 404

      @_showView errorView

    _showView: (view) ->
      if @currentView?.close
        @currentView.close()

      @currentView = view

      @bodyContainer.html view.render().$el
