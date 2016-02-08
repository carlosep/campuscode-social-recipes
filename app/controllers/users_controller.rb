class UsersController < ApplicationController
  respond_to :html, :json

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = Recipe.all
  end
end
