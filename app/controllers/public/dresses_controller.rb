class Public::DressesController < ApplicationController
  def new
  end

  def crete
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dress_params
    params.require(:dress).permit(:image, :season, :caption)
  end


end
