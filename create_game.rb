require 'graphql'
require_relative './base_mutation.rb'
require_relative './games.rb'

class Mutations::CreateGame < Mutations::BaseMutation
  description 'Creates a game'
  
  # input arguments for the mutation
  argument :first_player, String, required: true
  argument :second_player, String, required: true
  
  field :success, Boolean, null: false
  field :errors, [String], null: false

  # function to execute on mutation
  def resolve(first_player:, second_player:)
    puts "Got first_player: #{first_player} and second_player: #{second_player}"
    Games.add(first_player, second_player)
    # No DB, shouldn't fail 🤷‍♂️
    {
      success: true,
      errors: []
    }
  end
end
