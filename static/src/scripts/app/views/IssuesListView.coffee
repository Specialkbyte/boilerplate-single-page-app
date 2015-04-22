define [
  'jquery'
  'underscore'
  'backbone'
  'jade.templates'
  'mixen'
  'mixens/BaseViewMixen'
  'mixens/CollectionViewMixen'
], ($, _, Backbone, jade, Mixen, BaseView, CollectionView) ->
  class IssuesListView extends Mixen(CollectionView, BaseView)
    template: jade.issues

    initialize: (options) ->
      super

    render: =>
      context = @getRenderContext()
      data =
        issues: _.map @collection.models, (val) -> val.toJSON()

      context = _.extend context, data

      @$el.html @template context

      @