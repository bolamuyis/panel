class StudentsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :admin_only, only: [:delete, :create, :new]

  def index
    @students = Student.all.order('created_at DESC')
  end
  def new
    @student = Student.new
  end
  def create
    Student.create(student_params)
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to students_path
  end
  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end
  private
  def student_params
    params.require(:student).permit(:firstname, :lastname, :age, :education)

  end
end
