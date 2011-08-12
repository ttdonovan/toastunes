# TODO: write spec for window.BBtunes.AlbumView
window.BBtunes.AlbumView = Backbone.View.extend

  template: JST['bbtunes/albums/show']

  className: 'album'

  events:
    'click .artist a': 'fetchModel'
    'click': 'select'

  initialize: ->
    _.bindAll @, 'render'
    null

  render: ->
    data = @model.toJSON()
    data['thumbnail_image'] = @model.thumbnailImage()
    data['star_rating'] = @model.starRating()
    ($ @el).html @template(data)
    @

  fetchModel: (e) ->
    e.preventDefault()
    @model.fetch

  select: ->
    @collection.trigger 'select', this.model
