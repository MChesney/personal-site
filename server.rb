require 'sinatra'
require 'sinatra/reloader'
require 'yaml'

file_contents = YAML.load_file 'content.yml'

get '/' do
	@content = file_contents
	erb :index
end

get '/experience' do
	@content = file_contents
	erb :experience
end

get '/education' do
	@content = file_contents
	erb :education
end

get '/skills' do
	@content = file_contents
	erb :skills
end

get '/awards' do
	@content = file_contents
	erb :awards
end

get '/style.css' do
	scss :style
end