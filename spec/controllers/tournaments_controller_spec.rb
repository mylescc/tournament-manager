require 'rails_helper'

RSpec.describe TournamentsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    let(:tourny) { create :tournament }

    it "returns http success" do
      get :show, { id: tourny.id }
      expect(response).to have_http_status(:success)
    end
  end

end
