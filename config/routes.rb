Rails.application.routes.draw do

	resources :courses do
    resources :chapters
  end
root to: 'pages#index'
end
