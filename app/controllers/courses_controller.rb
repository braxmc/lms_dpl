class CoursesController < ApplicationController
  before_action: 

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to course_path(@course.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to course_path
  end

  private

  def set_course
    @course = course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name)
  end


end
