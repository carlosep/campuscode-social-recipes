class CoursesController < ApplicationController
  before_action :authenticate_admin, except: [:show]
  before_action :set_course, only: [:show]
  respond_to :html, :json
  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    respond_with @course
  end

  def show
    @recipes = Recipe.all
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name)
  end
end
