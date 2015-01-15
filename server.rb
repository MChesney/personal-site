require 'sinatra'
require 'sinatra/reloader'
require 'yaml'

get '/' do
	erb :index
end

get '/style.css' do
	scss :style
end