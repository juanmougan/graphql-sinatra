require 'sinatra'
require 'sinatra/json'
require './game.rb'
require_relative './schema.rb'
require_relative './games.rb'

class GameApp < Sinatra::Base
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
    body = JSON.parse request.body.read
    result = GameAppSchema.execute(
      body["query"],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end
end
