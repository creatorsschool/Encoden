class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
	end

	def new

	end

	def create
		Course.create(post_params)
		redirect_to courses_path
	end

	private

	def post_params
		params.require(:course).permit(:name, :description, :duration, :price)
	end
end
