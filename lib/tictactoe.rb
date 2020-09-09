class TicTacToe
  attr_reader :player1, :player2, :board
  @draw_counter 

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
    @draw_counter = board.matrix.length * board.matrix.length
  end

  def move_valid?(row, col)
    if board.matrix[row.to_i][col.to_i] == ' '
      @draw_counter -= 1
      return true
    end
    false
  end

  def game_board
    updated_board = ''
    Gem.win_platform? ? (system 'cls') : (system 'clear')
    @board.matrix.each_with_index do |row, i|
      row.each_with_index do |col, j|
        j < 2 ? updated_board += " #{col} |" : updated_board += " #{col} "
      end
      i < 2 && updated_board += "\n---+---+---\n"
    end
    return updated_board += "\n\n"
  end

  def draw?
    return true if @draw_counter.zero?
  end

  def won?(sym)
    axial?(sym) || diagonal?(sym)
  end

  private 
  def axial?(sym)
    board.matrix.each_with_index do |row, i|
      vert_flag = 0
      return true if row.all?(sym)

      row.each_with_index do |_col, j|
        vert_flag += 1 if board.matrix[j][i] == sym 
        return true if vert_flag == 3
      end
    end
    false
  end

  private 
  def diagonal?(sym)
    diag1_flag = 0
    diag2_flag = 0
    board.matrix.each_with_index do |row, i|
      diag1_flag += 1 if board.matrix[i][i] == sym 
      diag2_flag += 1 if board.matrix[i][row.length - 1 - i] == sym 
      return true if diag1_flag == 3
      return true if diag2_flag == 3
    end
    false
  end
end