require 'rails_helper'

describe TournamentsController, :type => :controller do
    let(:tournament) { create :tournament }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do

    it "returns http success" do
      get :show, { id: tournament.id }
      expect(response).to have_http_status(:success)
    end
  end

end