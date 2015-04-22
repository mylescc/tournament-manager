require 'rails_helper'

describe MatchesController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    let(:match) { create :match }
    it "returns http success" do
      get :show, { id: match.id }
      expect(response).to have_http_status(:success)
    end
  end

end
