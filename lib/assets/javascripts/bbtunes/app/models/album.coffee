window.BBtunes.Album = Backbone.Model.extend

  initialize: ->
    # # TODO: write spec for nested Tracks, need to add Rails controller action
    @tracks = new window.BBtunes.Tracks
    @tracks.url = '/albums/' + @id + '/tracks'
    null

  starRating: ->
    rating = (@get 'rating') or 0
    Math.floor rating / 20

  thumbnailImage: ->
    thumbnail = @get 'thumbnail'
    if thumbnail
      image = 'thumbnails/' + thumbnail
    else
      image = 'no_cover.jpg'
    image