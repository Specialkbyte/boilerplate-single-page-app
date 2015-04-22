define [
  'underscore'
  'backbone'
  'mixen'
  'mixens/BaseCollectionMixen'
  'models/IssueModel'
], ($, _, Backbone, Mixen, BaseCollectionMixen, Issue) ->
  class Issues extends Mixen(BaseCollectionMixen)
    model: Issue
    urlPath: '/issues'