require 'rails_helper'

describe Tennis::Game, :type => :model do

  describe '#for' do
    let(:p1) { create :player } 
    let(:p2) { create :player } 
    let!(:g1) { create :tennis_game, player: p1} 
    let!(:g2) { create :tennis_game, player: p2} 
    it 'should return only the games for a certain player' do
      expect(Tennis::Game.for(p1).count).to eq 1
    end

  end
end
