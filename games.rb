# Pseudo DAO
class Games
  def self.all
    [
      Game.new(1, 'Juan', 'María', 'IN_PROGRESS'),
      Game.new(2, 'Carlos', 'Juana', 'FINISHED'),
      Game.new(3, 'Lorena', 'Pedro', 'CREATED')
    ]
  end
end
