class LaddersController < ApplicationController

  def index
    @ladders = Ladder.all
  end

  def show
    @ladder = Ladder.find(params[:id])
  end

  def new 
    @ladder = Ladder.new
  end

  def create
   
  end
end
