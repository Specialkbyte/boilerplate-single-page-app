define [
  'underscore'
  'backbone'
  'mixen'
  'mixens/BaseModelMixen'
], ($, _, Backbone, Mixen, BaseModelMixen) ->
  class Issue extends Mixen(BaseModelMixen)
    initialize: (options) ->
      super