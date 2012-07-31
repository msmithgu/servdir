#!/usr/bin/env coffee
connect = require 'connect'
path = require 'path'

dir = path.resolve process.argv[2]
dir ?= '.'
port = process.argv[3]
port ?= 8080

server = connect.createServer(
  connect.static(dir)
)
server.listen(port)
console.log "Serving #{dir} on http://localhost:#{port}"
