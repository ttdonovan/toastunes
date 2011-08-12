# TODO: write spec for window.BBtunes.AlbumsListView
window.BBtunes.AlbumsListView = Backbone.View.extend

  template: JST['bbtunes/albums/index']

  tagName: 'section'

  id: 'albums'

  initialize: ->
    @albums = @options.albums

    _.bindAll @, 'render'
    @collection.bind 'reset', @render # TODO: review difference between 'fetch' and 'reset', when/where is the best place to make Ajax requests?
    null

  render: ->
    ($ @el).html @template {} # TODO: review this statement in BBtunes.AlbumsIndexView, confused why using $(this.el) instead of this.$
    $albums = @$ '.albums'
    collection = @collection
    @collection.each (album) ->
      view = new window.BBtunes.AlbumView model: album, collection: collection
      $albums.append view.render().el
    @
