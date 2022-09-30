class Admin::SeasonsController < ApplicationController

  def new
    @season = Season.new
  end

  def create
    @season = Season.new(season_params)
    @season.save
  end

  private

  def season_params
    params.require(:season).permit(:seasonal)
  end



end
