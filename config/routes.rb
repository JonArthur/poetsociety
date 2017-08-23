Rails.application.routes.draw do
  devise_for :users
  resources :poems
  root "poems#index"
end
