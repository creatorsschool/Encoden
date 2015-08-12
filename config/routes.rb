Rails.application.routes.draw do
  get 'courses/students', to: 'courses#students#show', as: :courses_students
  resources :courses do
		resources :chapters do
      post :update_row_order, on: :member
			resources :lessons do
        post :update_row_order, on: :member
      end
		end
	end

  namespace :students do
    resources :courses
  end

	resources :users, only: [:edit, :update]
	resources :resources, only: [:destroy]
  resources :courses do
    resources :payments, only: [:new, :create]
  end

root to: 'pages#index'
end
