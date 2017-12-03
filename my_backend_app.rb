# myapp.rb
require 'sinatra'
require 'json'

# configure Sinatra
configure do
  set :port, 8082
end

# enable debug logging and expose the access to the request object
before do
  logger.level = 0
  request.body.rewind
end

# simple post blocking
post '/test2' do
  @request_payload = JSON.parse request.body.read
  puts @request_payload['name']
  @request_payload['name']
end

# simple get blocking
get '/' do
  puts 'Service is running'
  sleep 10
  puts 'Service is running after sleep'
  'Service is running'
end
