class ChaptersController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def new
		@course = Course.find(params[:course_id])
	end

	def show
		@chapter = Chapter.find(params[:id])
	end

	def create
		@course = Course.find(params[:course_id])
		params["chapter_name"].zip(params["chapter_description"])
			@course.chapters.create(
			{
			name: params[:chapter_name],
			description: params[:chapter_description]
			})
		redirect_to courses_path
	end

	def edit
		@chapter = Course.find(params[:course_id]).chapters.find(params[:id])
	end

	def update
		@course = Course.find(params[:course_id])
		@course.chapters.find(params[:id]).update(chapter_params)
		redirect_to course_path(@course)
	end

	def destroy
		@course = Course.find(params[:course_id])
		@course.chapters.find(params[:id]).destroy
		redirect_to course_path(@course)
	end


	private

	def chapter_params
		params.require(:chapter).permit(:name, :description)
	end
end

