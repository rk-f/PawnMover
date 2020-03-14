require 'rspec'
require_relative '../lib/board'
require_relative '../lib/tile'
require_relative '../lib/constant'
require_relative '../lib/pawn_mover'
include Board

describe 'PawnMover' do

  context 'With valid Arguments' do
    it 'should return tile instance' do
      tile = Tile.new(3, 4)
      board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,0)}
      tile = PawnMover.new.move(board, tile)
      expect(tile.instance_of?(Tile)).to eq(true)
    end
  end

  context 'with Invalid Arguments' do
    it 'should return nil' do
      tile = Tile.new(20, 4)
      board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE,0)}
      tile = PawnMover.new.move(board, tile)
      expect(tile.instance_of?(Tile)).to eq(false)
      expect(tile).to be_nil
    end
  end
end