define [
  'jquery'
  'underscore'
  'backbone'
  'jade.templates'
  'mixen'
  'mixens/BaseViewMixen'
  'mixens/CollectionViewMixen'
  'views/CommitItemView'
], ($, _, Backbone, jade, Mixen, BaseView, CollectionView, CommitItemView) ->
  class CommitsList extends Mixen(CollectionView, BaseView)
    template: jade.commits

    initialize: (options) ->
      super
      @filters = options.filters

    render: =>
      @$el.html @template @getRenderContext()

      _.each @collection.models, (commit) =>
        commitView = new CommitItemView
          model: commit
        @rememberView commitView
        $('#commits-list').append commitView.render().$el

      @