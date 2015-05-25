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
      myles = create :user
      freddie = create :user
      3.times { create :match, tournament: tournament, winner: myles, loser: freddie }

      expect(tournament.players.count).to eq 2
    end
  end

  describe '#ranked_players' do
    let(:tom) { create :user}
    let(:dick) { create :user}
    let(:harry) { create :user}

    it 'should return an array of players with the player with the most wins at the top, least at bottom' do
      3.times { create :match, tournament: tournament, winner: tom, loser: dick }
      2.times { create :match, tournament: tournament, winner: dick, loser: harry }
      1.times { create :match, tournament: tournament, winner: harry, loser: tom }
      expect(tournament.ranked_players).to be_a Array
      expect(tournament.ranked_players.first).to eq tom
      expect(tournament.ranked_players.last).to eq harry 
    end
  end
end
