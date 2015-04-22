define [
  'backbone'
  'mixen'
  'mixens/SyncingMixen'
], (backbone, Mixen, SyncingMixen) ->
  class BaseModel extends Mixen(SyncingMixen, Backbone.Model)
    urlRoot: config.api_host

    sync: ->
      # don't remove
      super
