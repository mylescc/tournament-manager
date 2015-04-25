require 'rails_helper'

describe Match, :type => :model do
  let(:match) { create :match }

  describe '#for' do
    let!(:tournament) { create :tournament, matches: [ match ] }
    let!(:match2) { create :match }
    it 'should return only matches for a certain tournament' do
      expect(Match.all.count).to eq 2
      expect(Match.for(tournament).count).to eq 1
    end
  end

  describe '#winner' do
    it 'should have a winner which is a Player' do
      match.update_attributes(winner: create(:player))
      expect(match.winner).to be_a Player
    end
  end

  describe '#loser' do
    it 'should have a loserwhich is a Player' do
      match.update_attributes(loser: create(:player))
      expect(match.loser).to be_a Player
    end
  end

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
