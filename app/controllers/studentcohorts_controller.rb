class StudentcohortsController < ApplicationController
  def index
    @student_cohorts = Student.all 
  end
  def new
    @student_cohort = Student_cohort.new
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