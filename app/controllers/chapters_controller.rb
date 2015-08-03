class ChaptersController < ApplicationController

  def new
    Chapter.new
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  def create
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.create(chapter_params)
    redirect_to course_path(@course)
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

