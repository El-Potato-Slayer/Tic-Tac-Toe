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
    @board.matrix.each_with_index do |row, i|
      row.each_with_index do |col, j|
        j < 2 ? print(" #{col} |") : print(" #{col} ")
      end
      i < 2 && puts("\n---+---+---")
    end
    puts ''
  end

  def play_game
    @move_count = 0
    current_player = nil
    while @move_count < 10
      current_player = @move_count.even? ? player1 : player2
      print "#{current_player.name} Enter a row: "

      row = gets.chomp.to_i
      next unless valid_input?(row)

      print 'Enter a column: '
      column = gets.chomp.to_i
      next unless valid_input?(column)

      if board.move_valid?(row - 1, column - 1)
        board.apply_coords(row - 1, column - 1, current_player.sign)
        @move_count += 1
      end
      print_board
      puts 'Its a draw' if draw?
    end
  end

  def valid_input?(input)
    valid = input >= 1 && input <= 3
    puts 'invalid input' unless valid
    valid
  end

  def draw?
    # figures out whether players have drawn
    @move_count == 9
  end

  def won?
    # logic to whether player has won
  end

  def current_player; end
end
