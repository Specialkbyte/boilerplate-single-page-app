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
    template: jade.commit

    initialize: (options) =>
      @listenTo @model, 'change error', @render

      super

    render: =>
      @$el.html @template @model.toJSON()

      @