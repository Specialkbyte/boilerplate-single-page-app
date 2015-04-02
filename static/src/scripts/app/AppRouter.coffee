define [
  'backbone',
  'collections/CommitsCollection'
  'models/Commit'
  'views/IndexView'
  'views/CommitsListView'
  'views/CommitView'
  'views/ErrorView'
], (Backbone, Commits, Commit, IndexView, CommitsListView, CommitView, ErrorView) ->
  class Router extends Backbone.Router
    routes:
      '':                   'index'
      'commits/':           'commits'
      'commits/:id':        'commit'
      '*notFound':          'notFound'

    initialize: ->
      try
        require ['//www.google-analytics.com/analytics.js'], (data) ->
          if window.ga
            window.ga?('create', app.ga_id)
      catch
        # do nothing - user might have blocked tracking scripts

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
      commitView = new CommitView
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

    _isIphoneRedirect: ->
      url = Backbone.history.getFragment()
      (url.indexOf('iphone') != -1)

    _trackPageview: ->
      try
        require ['//www.google-analytics.com/analytics.js'], (data) ->
          url = Backbone.history.getFragment()
          window.ga?('send', 'pageview', '/#{url}')
      catch
        # do nothing - user might have blocked tracking scripts
