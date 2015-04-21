require 'rails_helper'

describe Tournament, :type => :model do
  let(:tournament) { create :tournament }

  describe '#matches' do
    it 'should have an array of matches attached to it' do
      2.times { create :match, tournament: tournament } 
      expect(tournament.matches.count).to eq 2
    end
  end

  describe '#players' do
    it 'should list all unique player via matches' do
      myles = create :player, name: 'Myles'
      freddie = create :player, name: 'Freddie'
      3.times { create :match, tournament: tournament, winner: myles, loser: freddie }

      expect(tournament.players.count).to eq 2
    end
  end
end
