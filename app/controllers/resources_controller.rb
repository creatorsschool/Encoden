class ResourcesController < ApplicationController

 def index
    @resources = Resource.all
  end

 def create
    @resource = Resource.new(file_name: params[:file])
    if @resource.save!
      respond_to do |format|
        format.json{ render :json => @resource }
      end
    end
  end


  def destroy
    resource = Resource.find(params[:id])
    resource.destroy
    redirect_to course_chapter_lesson_path(resource.lesson.chapter.course, resource.lesson.chapter, resource.lesson)
  end

end