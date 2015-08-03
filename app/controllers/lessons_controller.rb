class LessonsController < ApplicationController

	def index
		@courses = current_user.courses # needed for sidebar
	end

	def show
		@course = current_user.courses
		@course = current_user.courses.find(params[:id])
	end

	def edit

	end

	def update

	end

	def new
		@lesson = Lesson.new
	end

	def create

	end

	def destroy

	end

end

