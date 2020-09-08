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
    @current_player = nil
    while @move_count < 10 && !won?
      @current_player = @move_count.even? ? player1 : player2
      print "#{@current_player.name} Enter a row: "
      row = gets.chomp.to_i
      next unless valid_input?(row)

      print 'Enter a column: '
      column = gets.chomp.to_i
      next unless valid_input?(column)

      if board.move_valid?(row - 1, column - 1)
        board.apply_coords(row - 1, column - 1, @current_player.sign)
        @move_count += 1
      end
      print_board
    end
    game_result
  end

  def game_result
    puts 'Result:'
    if won?
      puts "#{@current_player.name} has won"
    else
      puts 'Its a draw'
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
    wining_combo = [[[0, 0], [0, 1], [0, 2]],
                    [[1, 0], [1, 1], [1, 2]],
                    [[2, 0], [2, 1], [2, 2]],
                    [[0, 0], [1, 0], [2, 0]],
                    [[0, 1], [1, 1], [2, 1]],
                    [[0, 2], [1, 2], [2, 2]],
                    [[0, 0], [1, 1], [2, 2]],
                    [[0, 2], [1, 1], [2, 0]]]

    wining_combo.detect do |combo|
      @board.matrix[combo[0][0]][combo[0][1]] == @board.matrix[combo[1][0]][combo[1][1]] &&
        @board.matrix[combo[1][0]][combo[1][1]] == @board.matrix[combo[2][0]][combo[2][1]] &&
        @board.matrix[combo[0][0]][combo[0][1]] != ' '
    end
  end

  def current_player; end
end
