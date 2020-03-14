require 'rspec'
require_relative '../lib/tile'
require_relative '../lib/constant'
describe 'tile' do

  context 'tiles' do
    it "update next point to 8 & 9" do
      tile = Tile.new(1,2)
      tile.update_next_point!(8,9)
      expect(tile.row).to eq(8)
      expect(tile.col).to eq(9)

    end

    it "update board with value 3" do
      board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,0)}
      tile = Tile.new(1,2)
      board[tile.row][tile.col] = 2
      tile.update_board!(board,8,9)
      expect(board[8][9]).to eq(3)
    end

  end
  end