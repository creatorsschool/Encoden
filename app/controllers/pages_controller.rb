class PagesController < ApplicationController

	# clearance
	# only require login in dashboad
	before_action :require_login, only: [:dashboard]

	def index

	end


	def dashboard
		render layout:"admin"
	end

end

