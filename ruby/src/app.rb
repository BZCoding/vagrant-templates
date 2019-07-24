require 'bundler/setup'
require 'sinatra'
require "sinatra/json"

port = ENV['PORT'] || 5000
puts "STARTING SINATRA on port #{port}"
set :port, port
set :bind, '0.0.0.0'

get '/' do
  json({"Hello" => "World!"})
end
