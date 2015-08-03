Rails.application.routes.draw do

	resources :courses do
		resources :chapters do
			resources :lessons
		end
	end
	root to: 'pages#index'

end
