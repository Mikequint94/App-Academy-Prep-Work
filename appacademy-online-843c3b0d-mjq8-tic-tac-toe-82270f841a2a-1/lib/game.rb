require_relative 'board'
require_relative 'human_player'
require_relative 'computer_player'

class Game

  attr_accessor :current_player, :board, :player_one, :player_two

  def initialize (player_one, player_two)
    @board = Board.new
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
  end

  def board
    @board
  end

  def play
    @current_player.display(@board)

    until @board.over?
      play_turn
    end

  end

  def play_turn
    @board.place_mark(current_player.get_move, current_player.mark)
    switch_players!
  end

  def switch_players!
    if @current_player == player_one
      @current_player = player_two
    else
      @current_player = player_one
    end
  end

end

#game = Game.new("mike", "comp")
#board = Board.new
#game.play_turn
