require 'graphql'
require_relative './game_resource.rb'

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :games, [Types::Game], null: false do
    description 'Get all the games'
  end

  def games
    Game.all
  end
end
