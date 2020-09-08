class TicTacToe
  attr_reader :player1, :player2, :board
  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def player_move
    # Figures out which player should do their next move
    puts 'Player makes a move'
  end

  def print_board()
    # prints 2D array
    # puts 'Now, your move is displayed on the board'
    Gem.win_platform? ? (system 'cls') : (system 'clear')
    matrix.each_with_index do |row, i|
      row.each_with_index do |col, j|
        j < 2 ? print(" #{col} |") : print(" #{col} ")
      end
      i < 2 && puts("\n---+---+---")
    end
    puts ''
  end

  def draw?
    #figures out whether players have drawn
  end

  def won?
    #logic to whether player has won
  end

  def current_player
  end
end
