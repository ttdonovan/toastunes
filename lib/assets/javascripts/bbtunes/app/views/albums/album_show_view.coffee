# TODO: write spec for window.BBtunes.AlbumShowView
window.BBtunes.AlbumShowView = Backbone.View.extend

  template: JST['bbtunes/albums/show']

  className: 'album'

  events:
    'click .artist a': 'fetchModel'

  initialize: ->
    _.bindAll @, 'render'
    null

  render: ->
    data = @model.toJSON()
    data['star_rating'] = @model.starRating()
    ($ @el).html @template(data)
    @

  fetchModel: (e) ->
    e.preventDefault()
    @model.fetch