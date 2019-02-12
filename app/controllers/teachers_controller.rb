class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end
  def create
    Teacher.create(teacher_params)
    redirect_to teachers_path
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end
  def update
    teacher = Teacher.find(params[:id])
    teacher.update(teacher_params)
    redirect_to teachers_path
  end
  def destroy
    teacher = Teacher.find(params[:id])
    teacher.destroy
    redirect_to teachers_path
  end
  private
  def teacher_params
    params.require(:teacher).permit(:firstname, :lastname, :age, :salary, :education)
  end
end