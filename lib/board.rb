class Board
  attr_reader :matrix
  def initialize
    @matrix = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
    ]
  end

  def apply_coords(_row, _col)
    # applies coordinates of user input to 2D array
    puts 'applies coordinates'
  end

  def move_valid?
    # Figures if the coordinates player gives is allowed to be applied to board
    puts 'move is valid'
  end

  def print_board()
    # prints 2D array
    puts 'Displays board'
  end
end
