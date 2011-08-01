# Jasmine Standalone Spec Runner

## Installation:

    # Install Node.js
    $ brew install node

    # Install the Node Package Manager (http://npmjs.org)
    $ curl http://npmjs.org/install.sh | sh

    # Install the CoffeeScript compiler
    $ npm install -g coffee-script

## CoffeeScript 'cake' Command:

    # Cake
    $ cake
    cake assets:watch         # Watch source files and build JS & CSS

    # For more info
    $ view Cakefile

    # Watch source files and build JS
    $ cake assets:watch

## Adding New Specs:

  Edit the test-js/SpecRunner.html update 'src' and 'spec'.

## Running Specs:

    $ open test-js/SpecRunner.html

# Jasmine Ruby Gem

  Prior to running the Jasmine Ruby Gem first need to run 'cake assets:watch'.
  The JavaScript source and spec files need to be generated. See modifications to 'spec/javascripts/support/jasmine.yml'.
  All generated files are being stored in 'tmp/javascripts'.

    # generates the spec JS
    $ cake assets:watch

    # generate the assets JS
    $ rake assets:precompile

    # run Jasmine server or ci
    $ bundle exec rake jasmine
    # or
    $ bundle exec rake jasmine:ci
