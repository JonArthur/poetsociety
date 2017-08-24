Rails.application.routes.draw do
  get 'users/view'

  devise_for :users
  resources :poems do
  	resources :comments
  end
  resources :users, only: [:show]
  root "poems#index"
end
