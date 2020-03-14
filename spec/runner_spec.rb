require 'rspec'
require_relative '../lib/board'
require_relative '../lib/tile'
require_relative '../lib/constant'
require_relative '../lib/pawn_mover'
require_relative '../lib/runner'
include Board


describe 'Runner' do

  let(:next_tile) {FactoryGirl.create :tile}
  let(:tile)  {FactoryGirl.create :tile}
  let(:board) {FactoryGirl.create :board}

  it 'should return true for all move' do
    PawnMover.any_instance.stub(:move).and_return(:tile)
    expect(Runner.run([0,0])).to eq(true)
  end

  it 'should return false for  move' do
    PawnMover.any_instance.stub(:move).and_return(nil)
    expect(Runner.run([0,0])).to eq(false)
  end
end
