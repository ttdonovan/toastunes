describe "BBtunes", ->

  beforeEach ->
    @bbtunes = window.BBtunes

  it "has an version", ->
    (expect @bbtunes.VERSION).toBeTruthy()
