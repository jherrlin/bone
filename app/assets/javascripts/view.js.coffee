# Base view class- your views should extend this view
#
# Examples:
#   class App.Views.Thing extends App.View
class App.View extends Backbone.View
  render: ->
    # Return ourself for chaining
    _.tap @, =>
      if @template
        # Render our template, passing it ourself
        @$el.html @template @

