class ChaptersController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def new
		@course = Course.find(params[:course_id])
		@courses = current_user.courses
	end

	def show
		@chapter = Chapter.find(params[:id])
		@courses = current_user.courses
	end

	def create
		@course = Course.find(params[:course_id])
		list = params["chapter_name"].zip(params["chapter_description"])
		list.each do |chapter|
			@course.chapters.create({
				name: chapter[0],
				description: chapter[1]
			})
		end
		flash[:success] = "You have added a new chapter!"
		redirect_to courses_path
	end

	def edit
		@courses = current_user.courses
		@chapter = Course.find(params[:course_id]).chapters.find(params[:id])
	end

	def update
		@course = Course.find(params[:course_id])
		@course.chapters.find(params[:id]).update(chapter_params)
		flash[:success] = "Chapter updated"
		redirect_to course_path(@course)
	end

	def destroy
		@course = Course.find(params[:course_id])
		@course.chapters.find(params[:id]).destroy
		flash[:notice] = "Chapter destroyed"
		redirect_to course_path(@course)
	end


	private

	def chapter_params
		params.require(:chapter).permit(:name, :description)
	end
end

