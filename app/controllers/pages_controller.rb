class PagesController < ApplicationController

	def index
    if signed_in?
      redirect_to courses_path
    end
	end

end

