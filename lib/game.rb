class Game
  def initialize
  end

  def attack(opponent)
    opponent.receive_damage
  end
end
