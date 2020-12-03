require 'graphql'
require_relative 'base_object'
require_relative './game_status.rb'

class Types::Game < Types::BaseObject
#class Types::Game < GraphQL::Schema::Object
  description 'Resembles a Game Object Type'

  field :id, ID, null: false
  field :first_player, String, null: false
  field :second_player, String, null: false
  field :status, Types::GameStatus, null: false
end
