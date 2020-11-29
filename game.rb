class Game
  attr_accessor :id, :first_player, :second_player, :status

  def initialize(id, first_player, second_player, status)
    @id = id
    @first_player = first_player
    @second_player = second_player
    @status = status
  end
end
