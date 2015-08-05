Rails.application.routes.draw do

	resources :courses do
		resources :chapters do
			resources :lessons
		end
	end

	resources :users, only: [:edit, :update]
	resources :resources, only: [:destroy]

root to: 'pages#index'
end
