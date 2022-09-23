class Public::DressesController < ApplicationController

  def show
    @dress = Dress.find(params[:id])
    #@season = Season.find(params[:season_id])
  end

  def index
    @dresses = Dress.all
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user_id = current_user.id
    if @dress.save
      redirect_to user_path(@dress.user), notice: "You have created book successfully."
    else
      @dresses = Dress.all
      render 'index'
    end
  end

  def edit
    @dress = Dress.find(params[:id])
  end

  def update
    @dress = Dress.find(params[:id])
    if @dress.update(dress_params)
      redirect_to dress_path(@dress), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
    @dress = Dress.find(params[:id])
    @dress.destroy
    redirect_to user_path(@dress.user)
  end

  private

  def dress_params
    params.require(:dress).permit(:image, :category, :caption, :season_id)
  end

  def ensure_correct_user
    @dress = Dress.find(params[:id])
    unless @dress.user == current_user
      redirect_to public_dresses_path
    end
  end
end