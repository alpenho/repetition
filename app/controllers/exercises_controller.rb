class ExercisesController < ApplicationController
  before_action :check_logged_in

  def index
    @exercises = ::Exercise.all
  end

  def new
    @exercise = ::Exercise.new
  end

  def create
    @exercise = ::Exercise.new(exercise_params)
  end

  def edit
    @exercise = ::Exercise.find(params[:id])
  end

  def update
    @exercise = ::Exercise.find(params[:id])
    @exercise.attributes = exercise_params
  end

  def destroy
    @exercise = ::Exercise.find(params[:id])
    @exercise.destroy
  end

  private

  def check_logged_in
    if !logged_in?
      flash[:notice] = "Please log-in first"
      redirect_to login_path
    end
  end

  def exercise_params
    params.require(:exercise).permit(:title, :description, questions_attributes: [:content, :answer])
  end
end
