Rails.application.routes.draw do

	resources :courses
	root to: 'pages#index'

end
