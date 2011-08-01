describe "Player", ->

  describe "constructor", ->

    beforeEach ->
      @player = new Player

    it "has an empty now playing", ->
      (expect @player.nowPlaying).toBeNull
