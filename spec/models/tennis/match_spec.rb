require 'rails_helper'

describe Tennis::Match, :type => :model do
  let(:match) { create :tennis_match }

  it 'should attache a tennis score on creation' do
     m = build :tennis_match
     expect(m.score).to be_nil
     m.save!
     expect(m.score).to be_a Tennis::Score
  end

  describe '#match_type' do
    it 'should return tennis' do
      expect(match.match_type).to eq 'tennis'
    end
  end
end
