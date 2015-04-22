require 'rails_helper'

describe ApplicationHelper, type: :helper do

  describe '#nav_icon' do
    it 'should return a string with the icon and name put in, in an html safe way' do
      expect(nav_icon('trophy', 'player')).to eq "<i class=\"icon player\"></i> trophy"
    end
  end

  describe '#nav_active_item' do
    it 'should return a string "item" if controller doesnt match check' do
      params[:controller] = 'players'
      expect(nav_active_item('matches')).to eq 'item'
    end

    it 'should return a string "item active" if controller does match check' do
      params[:controller] = 'matches'
      expect(nav_active_item('matches')).to eq 'item active'
    end
  end

end
