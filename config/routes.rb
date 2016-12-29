Rails.application.routes.draw do
	resources :users
	resources :pills
	resources :boxes

	namespace :api do
	  resources :pills
	end

	get 'pills/:id/remove' =>  'pills#remove', as: :remove_pill
	patch  '/pills/:id'    =>  'pills#remove'
	put    '/pills/:id'    =>  'pills#remove'

	resources :pills do
		get "delete"
	end


	#signin and sign out paths
	get 'sign_in' => 'sessions#new', as: :sign_in
	post 'sign_in' => 'sessions#create'
	delete 'sign_in' => 'sessions#delete', as: :end_session
	get 'sign_out' => 'sessions#delete', as: :sign_out

	root to: 'pills#index'


end
