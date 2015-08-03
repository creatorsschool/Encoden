class LessonsController < ApplicationController

	def index
		@courses = current_user.courses # needed for sidebar
	end

	def show

		@lesson = current_user.courses.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
	end

	def edit
		@lesson = current_user.courses.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
	end

	def update
    Course.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id]).update(lesson_params)
    redirect_to course_chapter_lesson_path
	end

	def new
		Lesson.new
	end

	def create
    lesson = Course.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.create(lesson_params)
    redirect_to course_chapter_lesson_path(params[:course_id], params[:chapter_id], lesson)
	end

	def destroy

	end



	private

	def lesson_params
		params.require(:lesson).permit(:name, :description)
	end

end
