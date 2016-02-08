class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_collections, only: [:new, :create]
  before_action :set_recipe, only: [:show]
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
