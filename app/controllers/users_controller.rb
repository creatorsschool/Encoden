class UsersController < ApplicationController

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.update(params[:id], user_params)
		redirect_to courses_path
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

end

