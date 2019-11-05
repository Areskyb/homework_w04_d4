require 'sinatra'
require 'sinatra/contrib/all' if development?

require_relative './models/film.rb'

also_reload('/models/*')

get '/films' do
@films = Film.all
erb(:index)
end

get '/films/:num' do

  @films = Film.all
  @num = params[:num].to_i
  erb(:anchor_tags)
end
