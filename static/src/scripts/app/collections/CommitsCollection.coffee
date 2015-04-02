define [
  'underscore'
  'backbone'
  'mixen'
  'mixens/BaseCollectionMixen'
  'models/CommitModel'
], ($, _, Backbone, Mixen, BaseCollectionMixen, Commit) ->
  class Commits extends Mixen(BaseCollectionMixen)
    model: Commit
    urlPath: '/commits'