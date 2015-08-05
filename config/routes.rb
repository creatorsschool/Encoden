Rails.application.routes.draw do

	resources :courses do
		resources :chapters do
			resources :lessons
		end
	end

	resources :users
	resources :resources, only: [:destroy]

root to: 'pages#index'
end
