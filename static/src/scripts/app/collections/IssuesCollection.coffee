define [
  'mixen'
  'mixens/BaseCollectionMixen'
  'models/IssueModel'
], (Mixen, BaseCollectionMixen, Issue) ->
  class Issues extends Mixen(BaseCollectionMixen)
    model: Issue
    url: '/issues'