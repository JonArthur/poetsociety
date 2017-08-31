Rails.application.routes.draw do
  get 'users/view'

  devise_for :users
  resources :searches
  resources :poems do
  	resources :comments
  	member do
    	put "like", to: "poems#upvote"
   	 	put "dislike", to: "poems#downvote"
 	end
  end



  resources :users, only: [:show]
  root "poems#index"
end
