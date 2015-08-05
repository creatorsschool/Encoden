Rails.application.routes.draw do

  resources :courses do
		resources :chapters do
			resources :lessons
		end
	end

  namespace :students do
    resources :courses
  end

	resources :users, only: [:edit, :update]
	resources :resources, only: [:destroy]

root to: 'pages#index'
end
