define [
  'underscore'
  'backbone'
  'mixen'
  'mixens/BaseModelMixen'
], (_, Backbone, Mixen, BaseModelMixen) ->
  class Commit extends Mixen(BaseModelMixen)
    url: '/commits'
    
    initialize: (options) ->
      super