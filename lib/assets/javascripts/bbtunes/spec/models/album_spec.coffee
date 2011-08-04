describe "Album", ->

  beforeEach ->
    @album = new window.BBtunes.Album

  describe "has a star rating", ->

    it "is 0 given no rating was provided", ->
      (expect @album.starRating()).toBe 0

    it "is 3 given a rating of 75", ->
      @album.set rating: 75
      (expect @album.starRating()).toBe 3
