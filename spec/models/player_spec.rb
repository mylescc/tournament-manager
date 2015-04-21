require 'rails_helper'

describe Player, type: :model do
  let(:player) { create :player}

  describe '#matches' do
    it 'should have many matches' do
      expect(player.matches).to be_empty
    end
  end
end
