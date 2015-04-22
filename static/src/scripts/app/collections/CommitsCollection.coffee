define [
  'mixen'
  'mixens/BaseCollectionMixen'
  'models/CommitModel'
], (Mixen, BaseCollectionMixen, Commit) ->
  class Commits extends Mixen(BaseCollectionMixen)
    model: Commit
    urlPath: '/commits'