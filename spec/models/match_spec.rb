require 'rails_helper'

describe Match, :type => :model do
  let(:match) { create :match }

  describe '#tournament' do
    let!(:tournament) { create :tournament }
    before do
      match.update_attributes(tournament: tournament)
    end

    it 'should belong to a tournament' do
      expect(match.tournament).to eq tournament
    end
  end

  describe '#players' do
    it 'should return an array of all players' do
      match.winner = create(:player, name: 'myles')
      match.loser = create(:player, name: 'freddie')
      expect(match.players.count).to eq 2
      expect(match.players.first).to be_a Player
    end
  end
end
