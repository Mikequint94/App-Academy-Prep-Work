class Board

  attr_reader :grid, :marks

  def initialize (grid=[
[nil, nil, nil],
[nil, nil, nil],
[nil, nil, nil]
])
    @grid = grid
  #  @marks = [:X, :O]
  end


  def grid
    @grid
  end

  def place_mark(position, mark)
      @grid[position[0]][position[1]] = mark
  end

  def empty?(position)
    @grid[position[0]][position[1]] == nil
  end

  def winner
    if @grid[0][0] == :X && @grid[0][1] == :X && @grid[0][2] == :X
      return :X
    elsif @grid[1][0] == :X && @grid[1][1] == :X && @grid[1][2] == :X
      return :X
    elsif @grid[2][0] == :X && @grid[2][1] == :X && @grid[2][2] == :X
      return :X
    elsif @grid[0][0] == :X && @grid[1][1] == :X && @grid[2][2] == :X
      return :X
    elsif @grid[0][2] == :X && @grid[1][1] == :X && @grid[2][0] == :X
      return :X
    elsif @grid[0][0] == :X && @grid[1][0] == :X && @grid[2][0] == :X
      return :X
    elsif @grid[0][1] == :X && @grid[1][1] == :X && @grid[2][1] == :X
      return :X
    elsif @grid[0][2] == :X && @grid[1][2] == :X && @grid[2][2] == :X
      return :X
    end
    if @grid[0][0] == :O && @grid[0][1] == :O && @grid[0][2] == :O
      return :O
    elsif @grid[1][0] == :O && @grid[1][1] == :O && @grid[1][2] == :O
      return :O
    elsif @grid[2][0] == :O && @grid[2][1] == :O && @grid[2][2] == :O
      return :O
    elsif @grid[0][0] == :O && @grid[1][1] == :O && @grid[2][2] == :O
      return :O
    elsif @grid[0][2] == :O && @grid[1][1] == :O && @grid[2][0] == :O
      return :O
    elsif @grid[0][0] == :O && @grid[1][0] == :O && @grid[2][0] == :O
      return :O
    elsif @grid[0][1] == :O && @grid[1][1] == :O && @grid[2][1] == :O
      return :O
    elsif @grid[0][2] == :O && @grid[1][2] == :O && @grid[2][2] == :O
      return :O
    end
  end

  def over?
    @grid.flatten.count(nil) == 0 || winner
  end

end
