{spawn} = require 'child_process'

build = (cb) ->
  console.log 'Building...'
  echo child = spawn coffee, ['-c', '-l', '-o', 'lib', 'src']
  child.on 'exit', (status) -> cb?() if status is 0

task 'build', 'Compiles coffeescript source code into javascript.', ->
  spawn '/bin/sh', ['-c', 'coffee -l -o lib -c src/*.coffee']
