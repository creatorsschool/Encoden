class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
	end

	def new
		@course = Course.new
	end

	def create
	 Course.create(course_params)
		redirect_to courses_path
	end

	private

	def course_params
		params.require(:course).permit(:name, :description, :duration, :price)
	end
end
