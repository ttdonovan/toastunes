# TODO: write spec for window.BBtunes.TracksListView
window.BBtunes.TracksListView = Backbone.View.extend

  template: JST['bbtunes/tracks/index']

  initialize: ->
    _.bindAll @, 'render', 'queueTracks'

    @collection.bind 'reset', 'render'

    @albums = @options.albums
    @albums.bind 'select', @queueTracks

  render: ->
    ($ @el).html @template {}
    @

  queueTracks: (album) ->
    collection = @collection
    album.fetch
      success: (model, response) ->
        tracks = model.get 'tracks'
        # collection.reset()
        # collection.add tracks
        `console.log(t = model.get('tracks'));`
    `console.log(a = album);`
