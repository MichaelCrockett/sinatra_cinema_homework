require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './models/film'
also_reload('./models/*')

get '/films' do
  @films = Film.all
erb( :'films/index' )
end

get '/films/:film_id' do
  @film = Film.find_by_id(params[:film_id].to_i)
  erb(:'films/show')
end
