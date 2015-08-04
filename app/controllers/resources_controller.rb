class ResourcesController < ApplicationController
  
  def destroy
    resource = Resource.find(params[:id])
    resource.destroy
    redirect_to course_chapter_lesson_path(resource.lesson.chapter.course, resource.lesson.chapter, resource.lesson)
  end

end