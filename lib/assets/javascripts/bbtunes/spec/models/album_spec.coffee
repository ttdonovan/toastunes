describe "Album", ->

  beforeEach ->
    @album = new window.BBtunes.Album

  describe "has a star rating", ->

    it "is 0 given no rating was provided", ->
      (expect @album.starRating()).toBe 0

    it "is 3 given a rating of 75", ->
      @album.set rating: 75
      (expect @album.starRating()).toBe 3

  describe "has a thumbnail image", ->

    it "is a default 'no image' path if no thumbnail was provided", ->
      (expect @album.thumbnailImage()).toBe 'no_cover.jpg'

    it "is the thumbnail image path if a thumbnail was provided", ->
      @album.set thumbnail: 'cover.jpg'
      (expect @album.thumbnailImage()).toBe 'thumbnails/cover.jpg'
