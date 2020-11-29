require_relative './base_enum.rb'

# Maybe I could use symbols, and map them like this
# value "CREATED", value: :created
class Types::GameStatus < Types::BaseEnum
  value "CREATED", "Player 1 created the Game"
  value "IN_PROGRESS", "Player 2 joined"
  value "FINISHED", "Game is over"
end
