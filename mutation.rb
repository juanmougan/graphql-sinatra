require 'graphql'
require_relative './create_game.rb'

#class MutationType < Mutations::BaseMutation
class MutationType < Types::BaseObject
  description "The mutation root of this schema"

  field :createGame, mutation: Mutations::CreateGame, null: false
end
