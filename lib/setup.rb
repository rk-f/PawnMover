class Setup
  def self.setup(args)
    if  !valid_start_pos(args)
      puts "Invalid Row and Col values"
      raise 'Invalid Argument'
    end

    tile = Tile.new(args[0].to_i, args[1].to_i)
    board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,0)}
    board[tile.row][tile.col] = 1

    [board,tile]
  end


  def self.valid_start_pos(parms)
    (0...BOARD_SIZE).include?(parms[0].to_i) && (0...BOARD_SIZE).include?(parms[1].to_i)
  end
end
