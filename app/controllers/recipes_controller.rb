class RecipesController < ApplicationController
  before_action :set_collections, only: [:new]
  before_action :set_recipe, only: [:show]
  respond_to :html, :json
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
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
