Rails.application.routes.draw do

  resources :courses do
		resources :chapters do
      post :update_row_order, on: :collection
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
