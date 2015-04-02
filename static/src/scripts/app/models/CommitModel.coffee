define [
  'underscore'
  'backbone'
  'mixen'
  'mixens/BaseModelMixen'
], ($, _, Backbone, Mixen, BaseModelMixen) ->
  class Commit extends Mixen(BaseModelMixen)
    urlPath: '/commits'

    initialize: (options) ->
      super

    getRenderContext: ->
      context = super ? {}

      context = _.extend context, @.toJSON()
      if @.has 'lastCheckin'
        context.lastCheckin = @.get('lastCheckin').toJSON()

      context
