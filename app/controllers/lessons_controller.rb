class LessonsController < ApplicationController

	def index
		@lesson = current_user.lessons
	end

	def show
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

