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
    puts 'Now, your move is displayed on the board'
  end
end
