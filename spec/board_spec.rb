require 'rspec'
require_relative '../lib/board'
require_relative '../lib/constant'
include Board
describe 'Board' do

  context 'empty and degree' do
    it "Should return true and has degree" do
      board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,0)}
      expect(empty?(board, 5,5)).to eq(true)
      expect(degree(board, 5,5)).to eq(8)
    end

    it "Should return false and no degree" do
      board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,6)}
      expect(empty?(board, 3,2)).to eq(false)
      expect(degree(board, 3,2)).to eq(0)
    end

end
end