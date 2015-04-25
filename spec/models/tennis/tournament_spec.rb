require 'rails_helper' 

describe Tennis::Tournament, type: :model do
  let(:tournament) { create :tennis_tournament }

  describe '#tournament_type' do
    it 'should return tennis' do
      expect(tournament.tournament_type).to eq 'tennis'
    end
  end
end
