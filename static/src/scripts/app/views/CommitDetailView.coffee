define [
  'jquery'
  'underscore'
  'backbone'
  'foundation'
  'jade.templates'
  'mixen'
  'mixens/ModelViewMixen'
], ($, _, Backbone, foundation, jade, Mixen, ModelViewMixen) ->
  class CommitDetail extends Mixen(ModelViewMixen)
    template: jade.commit

    initialize: (options) =>
      super

    render: =>
      @$el.html @template @getRenderContext()

      @