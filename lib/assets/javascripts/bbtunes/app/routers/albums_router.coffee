# TODO: write spec for window.BBtunes.AlbumShowView
window.BBtunes.AlbumsRouter = Backbone.Router.extend

  routes: {
    'albums'
  }

  initialize: ->
    @albumsIndexView = new window.BBtunes.AlbumsIndexView
      collection: new window.BBtunes.Albums
    null

  albums: ->
    ($ 'body').empty()
    ($ 'body').append(@albumsIndexView.render().el)
    null

# FIXME: temporary until figure out the best way to initialize BBtunes
($ document).ready ->
  window.BBtunes.App = new window.BBtunes.AlbumsRouter()
  Backbone.history.start pushSate: true
  window.BBtunes.App.albums()
  # FIXME: where's the best place to 'fetch' the collection data?
  window.BBtunes.App.albumsIndexView.collection.fetch()
  null
