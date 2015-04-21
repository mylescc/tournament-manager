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
end
