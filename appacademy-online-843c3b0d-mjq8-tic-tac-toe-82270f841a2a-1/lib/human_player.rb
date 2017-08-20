class HumanPlayer

  attr_reader :name, :board
  attr_accessor :mark

  def initialize(name)
    @name = name
    @mark = :X
  end

  def name
    @name
  end

  def mark
    @mark
  end

  def display (board)
    puts board.grid
  end

  def get_move
    puts "Where do you want to move in the form '0, 0'?:\n"
    move = gets.chomp
    pos1 = move[0].to_i
    pos2 = move[-1].to_i
    pos = [pos1,pos2]
  end
end
