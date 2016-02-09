class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_collections, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy, :authenticate_edit]
  before_action :authenticate_edit, only: [:edit]
  respond_to :html, :json

  def index
    @recipes = Recipe.last(20).reverse
    @courses = Course.all
    @cuisines = Cuisine.all
    @preferences = Preference.all
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.create(recipe_params)
    respond_with @recipe
  end

  def show
    @favorite = Favorite.where("user_id = ? AND recipe_id = ?", current_user.id, @recipe.id)
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
    #respond_with @recipe
  end

  def destroy
    @recipe.destroy
    flash[:notice] = "#{@recipe.name} was terminated."
    redirect_to user_path(current_user)
  end

  private
  def set_collections
    @cuisines = Cuisine.all
    @courses = Course.all
    @difficulties = Difficulty.all
    @preferences = Preference.all
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def authenticate_edit
    redirect_to root_path, alert: 'Access Denied' unless current_user == @recipe.user
  end

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine_id, :course_id,
                                   :preference_id, :difficulty_id, :portion,
                                   :cooking_time, :ingredient, :directions)
  end
end
