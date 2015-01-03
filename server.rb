require 'sinatra'
require 'sinatra/reloader'
require 'yaml'

file_contents = YAML.load_file 'content.yml'

get '/' do
	@content = file_contents
	erb :index
end

get '/resume' do
	@content = file_contents
	erb :resume
end

get '/projects' do
	@content = file_contents
	erb :projects
end

get '/photos' do
	@content = file_contents
	erb :photos
end

get '/contact' do
	@content = file_contents
	erb :contact
end

get '/style.css' do
	scss :style
end