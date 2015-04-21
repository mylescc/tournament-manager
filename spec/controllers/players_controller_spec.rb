require 'rails_helper'

describe PlayersController, :type => :controller do
  let(:player) { create :player }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, { id: player.id }
      expect(response).to have_http_status(:success)
    end
  end

end
