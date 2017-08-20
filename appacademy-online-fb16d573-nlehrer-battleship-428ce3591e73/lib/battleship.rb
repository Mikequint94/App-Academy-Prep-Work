class BattleshipGame
  attr_reader :board, :player

  def initialize(player, board)
    @player = player
    @board = board
  end

  def attack(pos)
    case @board[pos]
    when nil
      @board[pos] = :o
    when :s
      @board[pos] = :x
    when :o, :x
      puts 'Already guessed.'
    end
  end

  def count
    @board.count
  end

  def game_over?
    @board.won?
  end

  def play_turn
    @board.display
    attack(@player.get_play)
  end
end
