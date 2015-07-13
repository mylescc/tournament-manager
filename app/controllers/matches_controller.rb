class MatchesController < ApplicationController
  before_action :require_login, only: [:new]
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def new

  end

  def create

  end
end
