describe "Albums", ->

  # TODO: look into Album fixture data

  beforeEach ->
    @albums = new window.BBtunes.Albums
    @albums.add {}

  it "has models", ->
    (expect @albums.models.length).toBe 1
