class SearchController < ApplicationController
  def index
    if !params[:search].blank?
      @courses = Course.where('name LIKE ?', "%#{params[:search]}%")
    else
      @courses = []
    end
    render json: @courses
  end
end
