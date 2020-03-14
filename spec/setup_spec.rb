require 'rspec'
require_relative '../lib/setup'
require_relative '../lib/constant'
require_relative '../lib/tile'
require_relative '../lib/board'

describe 'Setup' do

  context 'valid arguments' do
    it "Should return true" do
      board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,0)}
      tile =Tile.new(0,0)
      board[tile.row][tile.col] = 1
      expect(Setup.setup([0, 0])).equal?([board,tile])
    end

    it "Should return false" do
      expect{Setup.setup([31, 4])}.to raise_error(/Invalid Argument/)
    end

  end
end