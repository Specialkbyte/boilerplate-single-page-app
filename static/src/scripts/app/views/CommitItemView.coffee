define [
  'jquery'
  'underscore'
  'backbone'
  'foundation'
  'jade.templates'
  'mixen'
  'mixens/BaseViewMixen'
], ($, _, Backbone, foundation, jade, Mixen, BaseView) ->
  class CommitItem extends Mixen(BaseView)
    template: jade.commitItem
    tagName: 'li'

    initialize: (options) =>
      @listenTo @model, 'change error', @render

      super

    render: =>
      context = @model.toJSON()
      @$el.html @template context

      @