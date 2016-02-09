class FavoritesController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  before_action :set_favorite, only: [:show]
  before_action :find_favorite, only: [:destroy]
  respond_to :html, :json
  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      redirect_to :back
    else
      flash[:warning]  = 'Something is very wrong here.'
      @errors = @favorite.errors
      render :index
    end
  end
  # def create
  #   @favorite = Favorite.create(favorite_params)
  #   respond_with @favorite, location: -> {redirect_to :back}
  # end

  def destroy
    @favorite.destroy
    redirect_to :back
  end

  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def find_favorite
    @favorite = Favorite.find(params[:favorite])
  end

  def favorite_params
    params.require(:favorite).permit(:id, :user_id, :recipe_id)
  end
end
