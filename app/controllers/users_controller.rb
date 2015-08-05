class UsersController < Clearance::UsersController

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.update(params[:id], user_params)
		redirect_to courses_path
	end

end

