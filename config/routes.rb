Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root 'recipes#index'
  resources :recipes
  resources :cuisines
end
