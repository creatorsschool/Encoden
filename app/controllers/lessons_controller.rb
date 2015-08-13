class LessonsController < ApplicationController

	def index
		@courses = current_user.courses # needed for sidebar
	end

	def show
		@courses = Course.all
		@chapter = @courses.find(params[:course_id]).chapters.find(params[:chapter_id])
		@lesson = @courses.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
	end

	def update_row_order
		@lesson = current_user.courses.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
		# @lesson.update row_order: lesson_params[:row_order_position]
		@lesson.row_order_position = lesson_params[:row_order_position]
		@lesson.save
		render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
	end

	def edit
		@courses = current_user.taught_courses
		@lesson = @courses.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
	end

	def update
		lesson = Course.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id])
		if params[:resource]
			lesson.resources.create(resource_params)
		else
			lesson.update(lesson_params)
		end
		flash[:success] = "Lesson updated"
		redirect_to course_chapter_lesson_path
	end

	def new
		@courses = current_user.courses
		Lesson.new
	end

	def create
		lesson = Chapter.find(params[:chapter_id]).lessons.create(lesson_params)
		flash[:success] = "Lesson created!"
		redirect_to course_chapter_lesson_path(params[:course_id], params[:chapter_id], lesson)
	end

	def destroy
		@lesson = Course.find(params[:course_id]).chapters.find(params[:chapter_id]).lessons.find(params[:id]).destroy
		flash[:notice] = "Lesson destroyed"
		redirect_to course_chapter_path(params[:course_id], params[:chapter_id])
	end


	private

	def lesson_params
		params.require(:lesson).permit(:name, :description, :row_order_position, :chapter_id)
	end

	def resource_params
		params.require(:resource).permit(:file)
	end

end
