class Board
  attr_reader :matrix
  def initialize
    @matrix = [
      ['O', ' ', ' '],
      [' ', 'X', ' '],
      [' ', ' ', 'O']
    ]
  end
  # def initialize(pl)

  # end
end