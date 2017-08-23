Rails.application.routes.draw do
  resources :poems
  root "poems#index"
end
