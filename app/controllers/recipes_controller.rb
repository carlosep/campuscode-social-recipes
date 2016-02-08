class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_collections, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
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
  end

  def edit
  end

  def update
    @recipe = current_user.recipes.update(recipe_params)
    respond_with @recipe
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

  def recipe_params
    params.require(:recipe).permit(:name, :cuisine_id, :course_id,
                                   :preference_id, :difficulty_id, :portion,
                                   :cooking_time, :ingredient, :directions)
  end
end
