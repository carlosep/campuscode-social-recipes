Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt/ do
    devise_for :users, :controllers => {registrations: 'registrations'}
    root 'recipes#index'
    get '/:locale' => 'recipes#index'
    resources :users, only:[:show]
    resources :recipes
    resources :cuisines, only:[:new, :create, :show]
    resources :courses, only:[:new, :create, :show]
    resources :preferences, only:[:new, :create, :show]
    resources :favorites, only:[:new, :create, :destroy]
  end
end
