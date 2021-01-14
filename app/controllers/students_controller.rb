class StudentsController < ApplicationController
  def index
    @all_students = Student.all 
  end

  def new
    @new_student = Student.new
  end

  def create
    new_student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(new_student)
  end


  def edit
    @student_to_edit = Student.find(params[:id])
  end

  def update
    student_to_update = Student.find(params[:id])
    student_to_update.update(student_params(:first_name, :last_name))
    redirect_to student_path(student_to_update)
  end


  def show
    @student_to_show = Student.find(params[:id])
  end

  def delete
    Student.destroy(params[:id])
    redirect_to students_path
  end


  private 

  def student_params(*arg)
    params.require(:student).permit(*arg)
  end


end
