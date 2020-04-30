class Game
  attr_reader :player1, :player2, :turn, :opponent

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @turn = @player1
    @opponent = @player2
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def switch_turn
    if @turn == @player1
      @turn = @player2
      @opponent = @player1
    else
      @turn = @player1
      @opponent = @player2
    end
  end
end
