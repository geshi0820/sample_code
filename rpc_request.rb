require 'net/http'
require 'uri'
require 'json'
require 'pp'
require 'tapp'

URL = 'http://localhost:3000'
uri = URI.parse(URL)

request = Net::HTTP::Post.new(uri.request_uri)
json = {
  id:       '12345',
  jsonrpc:  '2.0',
  method:   'user/get',
  params:   { id: 1 }
}.to_json
request.body = 'payload=' + json

http = Net::HTTP.new(uri.host.tapp, uri.port.tapp)

http.start do |h|
  response = h.request(request).tapp
end
