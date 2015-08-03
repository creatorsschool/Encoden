Rails.application.routes.draw do

	resources :courses do
		resources :chapters do
			resources :lessons
		end
	end
	resources :users
	root to: 'pages#index'

end
