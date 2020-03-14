class PawnMover
  def move(board, tile)
    index = -1
    min_deg = BOARD_SIZE + 1
    next_row = nil
    next_col = nil
    degree = nil
    start = rand_start
    (0...VALID_MOVES_LIST.length).each do |count|
      i = (start + count) % VALID_MOVES_LIST.length
      next_row,next_col = tile.next_row_col(VALID_MOVES_LIST[i])
      if empty?(board, next_row, next_col) && (degree = degree(board, next_row, next_col)) < min_deg
        index = i
        min_deg = degree

      end

    end
    return nil if index == -1

    next_row,next_col = tile.next_row_col(VALID_MOVES_LIST[index])
    tile.update_board!(board, next_row, next_col)

    tile.update_next_point!(next_row, next_col)

    tile

  end


  def rand_start
    rand(100..1000) % VALID_MOVES_LIST.length
  end

end