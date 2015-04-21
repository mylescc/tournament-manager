class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def new
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def destroy
  end
end
