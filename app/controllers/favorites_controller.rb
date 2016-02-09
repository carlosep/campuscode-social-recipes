class FavoritesController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  before_action :set_favorite, only: [:show]
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

  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end
end
