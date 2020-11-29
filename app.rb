require 'sinatra'
require 'sinatra/json'
require './game.rb'
require_relative './schema.rb'

class GameApp < Sinatra::Base
  games = [
    Game.new(1, 'Juan', 'María', 'IN_PROGRESS'),
    Game.new(2, 'Carlos', 'Juana', 'FINISHED'),
    Game.new(3, 'Lorena', 'Pedro', 'CREATED')
  ]

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
    puts "\n\n\n\n\n params[:query]: #{body["query"]} \n\n\n\n\n"
    result = GameAppSchema.execute(
      body["query"],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end
end
