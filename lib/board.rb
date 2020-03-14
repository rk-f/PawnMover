module Board
  def empty?(board, row, col)
    limits(row, col) && (board[row][col] == 0)
  end

  def degree(board, row, col)
    count = 0
    (0...VALID_MOVES_LIST.length).each do |list|
      count += 1 if empty?(board, row + list[0], col + list[1])
    end
    count
  end

  def limits(row, col)
    ((row >= 0 && col >= 0) && (row < BOARD_SIZE && col < BOARD_SIZE))
  end
end
