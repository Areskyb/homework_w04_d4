require 'sinatra'
require 'sinatra/contrib/all' if development?

require_relative './models/film.rb'

also_reload('/models/*')

get '/films' do
@films = Film.all
erb(:index)
end

get '/films/:num' do

  @num = params[:num].to_i

  @fil = Film.film(@num)

  @film_name = @fil.title

  @film_price= @fil.price

  erb(:anchor_tags)
end
