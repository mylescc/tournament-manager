class TournamentsController < ApplicationController

  def index
    @tennis_tournaments = Tennis::Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end
end
