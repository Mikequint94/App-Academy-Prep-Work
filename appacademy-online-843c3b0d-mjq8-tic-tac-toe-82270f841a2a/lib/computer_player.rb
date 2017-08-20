class ComputerPlayer

  attr_accessor :mark, :name, :board

  def initialize (name)
    @name = name
    #@board = board
    @mark = :O
  end

  def display(board)
    @board = board
  end

  def mark
    @mark
  end

  def get_move
    avail_moves = []
    (0..2).each do |row|
      (0..2).each do |column|
        avail_moves << [row, column] if board.empty?([row, column])
      end
    end
    if winning_move(avail_moves)
      winning_move(avail_moves)
    else
      avail_moves.shuffle[0]
    end
  end

  def winning_move(avail_moves)
    avail_moves.each do |move|
      board.place_mark(move, mark)
      if board.winner == mark
        board.place_mark(move, nil)
        return move
      end
      return false
    end

  end
end
