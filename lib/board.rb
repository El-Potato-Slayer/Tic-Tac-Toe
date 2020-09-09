class Board
  attr_reader :matrix
  def initialize
    @matrix = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
  end

  def apply_coords(row, col, sym)
    @matrix[row][col] = sym
  end
end
