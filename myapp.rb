# myapp.rb
require 'sinatra'
require 'json'

before do
    request.body.rewind
    @request_payload = JSON.parse request.body.read
  end
post '/test2' do
  puts @request_payload['name']
end