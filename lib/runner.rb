require_relative 'setup'
require_relative 'tile'
require_relative 'pawn_mover'
require_relative 'constant'
require_relative 'board'

include Board

class Runner
    def self.run(args)
      board,tile = Setup.setup(args)
      p = PawnMover.new
      (0...(BOARD_SIZE * BOARD_SIZE-1)).each do |_i|
        next_tile = p.move(board, tile)
        return false if next_tile.nil?
      end

      print_board(board)
      true
    end

    def self.print_board(board)
      (0...BOARD_SIZE).each do |i|
        (0...BOARD_SIZE).each do |j|
          print "#{board[i][j]} \t\t"
        end
        puts "\n"
      end
    end

  end




until Runner.run(ARGV)
end
