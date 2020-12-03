require 'graphql'
require_relative './create_game.rb'

#class MutationType < GraphQL::Schema::Object
#class MutationType < Types::BaseObject
class Types::Mutation < Types::BaseObject
  description "The mutation root of this schema"

  field :createGame, mutation: Mutations::CreateGame
end
