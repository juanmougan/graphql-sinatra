require 'graphql'
require_relative './base_mutation.rb'
require_relative './games.rb'
require_relative './game.rb'

class Mutations::CreateGame < Mutations::BaseMutation
  description 'Creates a game'
  
  # input arguments for the mutation
  argument :first_player, String, required: false
  argument :second_player, String, required: false
  
  #field :game, Game, null: true
  field :success, Boolean, null: true
  field :errors, [String], null: false

  # function to execute on mutation
  # TODO this is falling back to the defaults
  def resolve(first_player:, second_player:)
    puts "Got first_player: #{first_player} and second_player: #{second_player}"
    game = Games.add(first_player, second_player)
    # No DB, shouldn't fail 🤷‍♂️
    return {
      #game: game,
      success: true,
      errors: []
    }
  end
end
