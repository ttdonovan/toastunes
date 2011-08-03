# BBtunes a Backbone.js App

This app demos the use of Backbone.js and Rails 3.1 asset pipeline. To load the Backbone app append '?bb=true' to the URI.

## Development

Backbone application code (app) and Jasmine test code (spec) is written in CoffeeScript. When adding a new Jasmine spec be sure to update the 'test-js/SpecRunner.html'.

    $ cd lib/assets/javascripts/bbtunes
    $ cake assets:watch
    $ open test-js/SpecRunner.html

If experiencing issues with the Rails 3.1 assets pipeline verify that the 'index.js' is requiring files correctly.

### TODOs

  1. figure out proper 'require' for test-js SpecRunner.html and JS src
  2. look into 'rake assets:precompile' bbtunes-*.js is not getting generated in 'public/assets'
  