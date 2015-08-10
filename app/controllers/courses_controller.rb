class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def show
		@courses = Course.all
		@course = @courses.find(params[:id])
		@chapters = @course.chapters.order_by_position
	end

	def edit
		@courses = Course.all
		@course = current_user.courses.find(params[:id])
	end

	def update
		Course.find(params[:id]).update(course_params)
		flash[:success] = "Course updated"
		redirect_to courses_path
	end

	def new
		@courses = Course.all
		@course = Course.new
	end

	def create
		current_user.courses.create(course_params)
    flash[:success] = "You have added a new course, hurray!"
    redirect_to courses_path
	end

	def destroy
		Course.find(params[:id]).destroy
		flash[:notice] = "Course destroyed"
		redirect_to courses_path
	end


	private

	def course_params
		params.require(:course).permit(:name, :description, :duration, :price)
	end
end
