# Pseudo DAO
class Games
  @@games = [
    Game.new(1, 'Juan', 'María', 'IN_PROGRESS'),
    Game.new(2, 'Carlos', 'Juana', 'FINISHED'),
    Game.new(3, 'Lorena', 'Pedro', 'CREATED')
  ]
  
  def self.all
    @@games 
  end

  def self.add(first_player, second_player)
    id = @@games.size + 1
    game = Game.new(id, first_player, second_player, 'IN_PROGRESS')
    @@games << game
    game
  end
end
