define [
  'underscore'
  'backbone'
  'mixen'
  'mixens/SyncingMixen'
], (_, backbone, Mixen, SyncingMixen) ->
  class BaseCollection extends Mixen(SyncingMixen, Backbone.Collection)
    urlRoot: config.api_host

    sync: ->
      # do not remove

      super