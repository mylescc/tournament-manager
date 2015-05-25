require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user) { create :user}

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, { id: user.id }
      expect(response).to have_http_status(:success)
    end
  end

end
