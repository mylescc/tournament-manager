require 'rails_helper'

describe Tennis::Score, :type => :model do
  let(:score) { create :tennis_score }

  describe '#games_in_set' do
    let(:player) { create :user}
    let(:game1) { create :tennis_game, player: player }
    let(:set) { create :tennis_set, games: [game1] }

    it 'should return the number of games a player won in a set' do
      score.sets << set 
      expect(score.games_in_set(1, player)).to eq 1
    end

    it 'should return 0 if the set does not exist' do
      expect(score.games_in_set(3, player)).to eq 0
    end
  end
end
