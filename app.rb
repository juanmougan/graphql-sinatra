require 'sinatra'
require 'sinatra/json'
require './game.rb'
require_relative './schema.rb'
require_relative './games.rb'
require 'rack/contrib'


class GameApp < Sinatra::Base
  use Rack::JSONBodyParser
  games = Games.all

  get '/' do
    'It Works!'
  end

  get '/games' do
    json games
  end

  get '/games/:id' do
    json games[params[:id].to_i - 1]
  end

  post '/graphql' do
    result = GameAppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end
end
