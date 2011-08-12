# TODO: write spec for window.BBtunes.AlbumShowView
window.BBtunes.AlbumsRouter = Backbone.Router.extend

  routes: {
    'albums'
  }

  initialize: ->
    albums = new window.BBtunes.Albums
    @albumsListView = new window.BBtunes.AlbumsListView
      collection: albums
    @tracksListView = new window.BBtunes.TracksListView
      collection: new window.BBtunes.Tracks
      albums: albums
    null

  albums: ->
    ($ 'body').empty()
    ($ 'body').append(@albumsListView.render().el)
    ($ 'body').append(@tracksListView.render().el)
    null

# FIXME: temporary until figure out the best way to initialize BBtunes
($ document).ready ->
  window.BBtunes.App = new window.BBtunes.AlbumsRouter()
  Backbone.history.start pushSate: true
  window.BBtunes.App.albums()
  # FIXME: where's the best place to 'fetch' the collection data?
  window.BBtunes.App.albumsListView.collection.fetch()
  null
