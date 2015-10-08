require 'net/http'
require 'uri'
require 'json'
require 'pp'
require "/Users/Shige/sample_code/color_print"

URL = 'http://localhost:3000'
uri = URI.parse(URL)

request = Net::HTTP::Post.new(uri.request_uri)
json = {
  id: '12345',
  jsonrpc: '2.0',
  method: 'answerer/get',
  params: { id: 1 }
}.to_json

request.body = 'payload=' + json

pp_y request.body
JSON.parse( request.body)

http = Net::HTTP.new(uri.host, uri.port)

http.start do |h|
  response = h.request(request)
  JSON.parse(response.body, quirks_mode: true)
end
