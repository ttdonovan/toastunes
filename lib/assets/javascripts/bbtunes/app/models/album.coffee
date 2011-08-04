window.BBtunes.Album = Backbone.Model.extend

  starRating: ->
    rating = (@get 'rating') or 0
    Math.floor rating / 20
