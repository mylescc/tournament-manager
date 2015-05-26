require 'rails_helper'

describe User, type: :model do
  let(:user) { create :user}

  describe '#validation' do
    it 'should validate presence of firstname and lastname' do
       p = build :user, firstname: nil, lastname: nil
       expect(p).not_to be_valid
       expect(p.errors[:firstname]).not_to be_empty
       expect(p.errors[:lastname]).not_to be_empty
    end
  end

  describe '#wins' do
    it 'should have an array of wins' do
      create :match, winner: user 
      expect(user.wins.count).to eq 1
    end
  end

  describe '#loses' do
    it 'should have an array of loses' do
      create :match, loser: user 
      expect(user.loses.count).to eq 1
    end
  end

  describe '#matches' do
    it 'should return all the wins and loses of the user' do
      create :match, loser: user 
      create :match, winner: user 
      expect(user.matches.count).to eq 2
    end
  end

  describe '#tournaments' do
    it 'should return all the unique tournaments a user has been in' do
      t1 = create :tournament
      t2 = create :tournament
      create :match, winner: user, tournament: t1
      create :match, loser: user, tournament: t2
      create :match, loser: user, tournament: t2
      expect(user.tournaments.count).to eq 2
      expect(user.tournaments.first).to be_a Tournament
    end
  end

  describe '#fullname' do
    it 'should aggregrate names together' do
      expect(user.fullname).to eq "#{user.firstname} #{user.lastname}" 
    end
  end
end
