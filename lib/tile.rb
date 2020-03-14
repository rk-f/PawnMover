class Tile
  attr_accessor :row, :col

  def initialize(row, col)
    @row = row
    @col = col
  end

  def update_next_point!(next_row, next_col)
    self.row = next_row
    self.col = next_col
  end

  def update_board!(board, next_row, next_col)
    board[next_row][next_col] = board[row][col] + 1
  end

  def next_row_col(array)
     [row + array[0], col + array[1]]
  end

end