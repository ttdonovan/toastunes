{spawn, exec} = require 'child_process'
sys = require 'sys'

task 'assets:watch', 'Watch source files and build JS & CSS', (options) ->
  runCommand = (name, args...) ->
    proc =           spawn name, args
    proc.stderr.on   'data', (buffer) -> console.log buffer.toString()
    proc.stdout.on   'data', (buffer) -> console.log buffer.toString()
    proc.on          'exit', (status) -> process.exit(1) if status isnt 0
  #runCommand 'sass',   ['--watch', 'public/css/sass:public/css']
  runCommand 'coffee', '-wco', 'tmp/javascripts/specs', 'spec/javascripts' # Jasmin Specs
  runCommand 'coffee', '-wco', 'tmp/javascripts', 'app/assets/javascripts', # Application JavaScript -- writing to 'tmp' because Rails handles the asset pipline

# Alternately, compile CoffeeScript programmatically
# CoffeeScript = require "coffee-script"
# CoffeeScript.compile fs.readFileSync filename
