Rails.application.routes.draw do

	resources :courses
	root to: 'pages#index'


	get '/dashboard', to: 'pages#dashboard'

end
