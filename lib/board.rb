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
    # applies coordinates of user input to 2D array

    @matrix[row][col] = sym
  end

  def move_valid?(row, col)
    # Figures if the coordinates player gives is allowed to be applied to board
    puts 'This is a winning'
    @matrix[row][col] == ' '
  end

  def print_board()
    # prints 2D array
    puts 'Displays board'
  end
end
