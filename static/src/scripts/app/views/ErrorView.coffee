define [
  'jquery'
  'backbone'
  'jade.templates'
], ($, Backbone, jade) ->
  class Error extends Backbone.View
    template: jade.error

    initialize: (options) =>
      @error = options.error

    render: =>
      if @error
        @$el.html jade["error-#{@error}"]()
      else
        @$el.html @template()

      @