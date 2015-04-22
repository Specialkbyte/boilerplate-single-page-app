define [
  'jquery'
  'underscore'
  'backbone'
  'jade.templates'
  'mixen'
  'mixens/BaseViewMixen'
  'collections/CommitsCollection'
  'collections/IssuesCollection'
  'views/CommitsListView'
  'views/IssuesListView'
], ($, _, Backbone, jade, Mixen, BaseView, Commits, Issues, CommitsListView, IssuesListView) ->
  class Index extends Mixen(BaseView)
    template: jade.index

    initialize: =>
      # start fetching the collections
      @commits = new Commits
      @commits.fetch()

      @issues = new Issues
      @issues.fetch()

      # create views
      @commitsView = new CommitsListView
        collection: @commits
      @rememberView @commitsView

      @issuesView = new IssuesListView
        collection: @issues
      @rememberView @issuesView

    render: =>
      @$el.html @template()

      # render sub views
      @renderTeamsMapView()
      @renderIndexStatsView()
      @renderEventsStream()
      @renderDonationsList()

      @slick()

      @

    renderCommits: =>
      $('#commits', @$el).append @commitsView.render().$el

    renderIssues: =>
      $('#issues', @$el).append @issuesView.render().$el
