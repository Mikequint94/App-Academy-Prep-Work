class Board
  attr_reader :grid

  def initialize(grid = self.class.default_grid)
    @grid = grid
    populate_grid
  end

  def self.default_grid
    Array.new(10) { Array.new(10) }
  end

  def display
    @grid.each do |row|
      puts row.map { |col| [nil, :s].include?(col) ? '_' : col }.join(' ')
    end
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def []=(pos, sym)
    @grid[pos[0]][pos[1]] = sym
  end

  def count
    @grid.map { |row| row.count(:s) }.inject(:+)
  end

  def empty?(pos = nil)
    pos.nil? ? count.zero? : self[pos].nil?
  end

  def full?
    count == @grid.length**2
  end

  def place_random_ship
    raise 'Full board' if full?
    loop do
      pos = Array.new(2) { (0..@grid.length - 1).to_a.sample }
      if empty?(pos)
        self[pos] = :s
        break
      end
    end
  end

  def populate_grid
    10.times { place_random_ship }
  end

  def won?
    empty?
  end
end
