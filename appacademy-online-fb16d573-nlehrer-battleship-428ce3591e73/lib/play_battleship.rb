require_relative 'player'
require_relative 'board'
require_relative 'battleship'

player = HumanPlayer.new
board = Board.new
game = BattleshipGame.new(player, board)
game.play_turn until game.game_over?
board.display
puts 'You found all the ships!'
