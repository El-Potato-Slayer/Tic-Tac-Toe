class TicTacToe
  attr_reader :player1, :player2, :board
  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def print_board()
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
    has_won = false

    while !draw? && !has_won
      current_player = @move_count.even? ? player1 : player2

      row = get_input(current_player, 'row').to_i
      next unless valid_input?(row)

      column = get_input(current_player, 'column').to_i
      next unless valid_input?(column)

      if board.move_valid?(row - 1, column - 1)
        board.apply_coords(row - 1, column - 1, current_player.sign)
        @move_count += 1
        puts @move_count
      end

      print_board
      has_won = diagonal?(current_player.sign) || axial?(current_player.sign)
    end
    puts draw? ? "It's a draw" : "#{current_player.name} has won"
  end

  def get_input(player, coordinate)
    print "#{player.name} enter a #{coordinate}: "
    Integer(gets) rescue nil
  end

  def valid_input?(input)
    valid = input >= 1 && input <= 3 # checks whether input is between 1 and 3 inclusively
    puts 'invalid input' unless valid
    valid
  end

  def draw?
    @move_count == 9
  end

  def axial?(sym)
    board.matrix.each_with_index do |row, i|
      vert_flag = 0
      return true if row.all?(sym) # checks horizontal

      row.each_with_index do |_col, j|
        vert_flag += 1 if board.matrix[j][i] == sym # checks vertical
        return true if vert_flag == 3
      end
    end
    false
  end

  def diagonal?(sym)
    diag1_flag = 0
    diag2_flag = 0

    board.matrix.each_with_index do |row, i|
      diag1_flag += 1 if board.matrix[i][i] == sym # checks diag from left to right
      diag2_flag += 1 if board.matrix[i][row.length - 1 - i] == sym # checks diag from right to left
      return true if diag1_flag == 3
      return true if diag2_flag == 3
    end
    false
  end
end
