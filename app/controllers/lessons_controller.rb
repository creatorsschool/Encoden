class LessonsController < ApplicationController

	def index
		@courses = current_user.courses # needed for sidebar
	end

	def show
		@course = current_user.courses
		@course = current_user.courses.find(params[:id])
	end

	def edit
		@lesson = current_user.courses.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
	end

	def update
    Course.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id]).update(lesson_params)
    redirect_to course_chapter_lesson_path
	end

	def new
		@lesson = Lesson.new
	end

	def create

	end

	def destroy

	end



	private

	def lesson_params
		params.require(:lesson).permit(:name, :description)
	end

end
