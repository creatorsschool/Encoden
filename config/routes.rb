Rails.application.routes.draw do

	resources :courses do
		resources :chapters do
			resources :lessons
		end
	end

  post "/courses/1/chapters/new" do
    Chapter.create({
      name: params[:chapter_name],
      description: params[:chapter_description]
      })
  end

	resources :users
	resources :resources, only: [:destroy]

root to: 'pages#index'
end
