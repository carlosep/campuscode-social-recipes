class ApplicationController < ActionController::Base
  before_action :set_locale, :set_globals
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_admin
    unless current_user.try(:admin?)
      redirect_to root_path, alert: 'Access Denied'
    end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def set_globals
    @recipes = Recipe.last(20).reverse
    @courses = Course.all
    @cuisines = Cuisine.all
    @preferences = Preference.all
    @most_favorited = Hash[most_favorites.sort_by { |_k, v| v }
                      .reverse.first 3]
  end

  def most_favorites
    temp = {}
    Recipe.all.each do |r|
      temp[r.id] = r.favorites.size
    end
    temp
  end
end
