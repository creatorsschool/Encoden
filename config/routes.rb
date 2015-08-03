Rails.application.routes.draw do

	resources :courses
  resources :users
	root to: 'pages#index'

end
