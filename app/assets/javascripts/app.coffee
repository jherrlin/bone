# All of our application's state lives in this object
window.App =
  Collections: {}
  Models: {}
  Views: {}

  # Our app's start function, this will be called
  # once when the page is ready. (See application.js.coffee)
  # You might use this function to bootstrap some data
  # and probably render some views, and do any
  # other app-wide initialization you need
  start: ->
    console.log "App starting..."
    @setupAjax()

  # Configure all of our AJAX requests to include Rails'
  # authenticity token
  setupAjax: ->
    @csrf_token = ($ 'meta[name="csrf-token"]').attr('content')

    # You can use this callback to preprocess every
    # AJAX request in your app.
    ($ document).ajaxSend (event, xhr) =>
      xhr.setRequestHeader 'X-CSRF-Token', @csrf_token
