Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root 'recipes#index'
  resources :users, only:[:show]
  resources :recipes
  resources :cuisines
  resources :courses
  resources :preferences
  resources :favorites
end
