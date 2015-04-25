require 'rails_helper'

describe Tennis::Match, :type => :model do
  describe '#validation' do
    it 'should validate that the score is a tennis score' do
      t_match = build :tennis_match
      expect(t_match).not_to be_valid
      expect(t_match.errors.messages[:score]).not_to be_empty
    end
  end
end
