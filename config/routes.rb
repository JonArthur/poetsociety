Rails.application.routes.draw do
  get 'users/view'

  devise_for :users
  resources :poems
  resources :users, only: [:show]
  root "poems#index"
end
