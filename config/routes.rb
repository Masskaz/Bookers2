Rails.application.routes.draw do



	get '/top' => 'root#top'

	devise_for :users

	root'root#top'

	resources :users, only: [:show, :index, :edit, :create, :update]
	resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
