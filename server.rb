require 'sinatra'
require 'sinatra/reloader'
require 'yaml'

get '/' do
	@content = YAML.load_file 'content.yml'
	erb :index
end

get '/style.css' do
	scss :style
end