class V1::CoursesController < ApplicationController

  def index
    @courses = Course.all.order(:title)
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      head :created
    else
      render json: { error: @course.errors.full_messages.first }, status: 422
    end
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      head :ok
    else
      render json: { error: @course.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    head :ok
  end

  private

  def course_params
    params.permit(:title, :description, :price, :active)
  end

end