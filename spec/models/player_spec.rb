require 'rails_helper'

describe Player, type: :model do
  let(:player) { create :player}

  describe '#wins' do
    it 'should have an array of wins' do
      create :match, winner: player
      expect(player.wins.count).to eq 1
    end
  end

  describe '#loses' do
    it 'should have an array of loses' do
      create :match, loser: player
      expect(player.loses.count).to eq 1
    end
  end

  describe '#matches' do
    it 'should return all the wins and loses of the player' do
      create :match, loser: player
      create :match, winner: player
      expect(player.matches.count).to eq 2
    end
  end

  describe '#tournaments' do
    it 'should return all the unique tournaments a player has been in' do
      t1 = create :tournament
      t2 = create :tournament
      create :match, winner: player, tournament: t1
      create :match, loser: player, tournament: t2
      create :match, loser: player, tournament: t2
      expect(player.tournaments.count).to eq 2
      expect(player.tournaments.first).to be_a Tournament
    end
  end
end
