class CoursesController < ApplicationController

	def index
		@courses = current_user.courses
	end

	def show
		@course = current_user.courses.find(params[:id])
	end

	def new
		@course = Course.new
	end

	def create
	 current_user.courses.create(course_params)
		redirect_to courses_path
	end

	private

	def course_params
		params.require(:course).permit(:name, :description, :duration, :price)
	end
end
