describe "Track", ->

  beforeEach ->
    @track = new window.BBtunes.Track

  it "exits", ->
    (expect @track).toBeTruthy()
