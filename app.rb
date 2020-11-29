require 'sinatra'
require 'sinatra/json'
require './game.rb'

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
end
