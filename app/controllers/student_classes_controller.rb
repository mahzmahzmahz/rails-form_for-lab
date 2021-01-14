class StudentClassesController < ApplicationController
  def index
    @all_student_classes = StudentClass.all
  end

  def show
    @student_class_to_show = StudentClass.find(params[:id])
  end

  def edit
    @student_class_to_edit = StudentClass.find(params[:id])
  end

  def update
    student_class_to_update = StudentClass.find(params[:id])
    student_class_to_update.update(student_class_params(:student_id, :school_class_id, :current))
    redirect_to student_class_path(student_class_to_update)
  end


  def new
    @new_student_class = StudentClass.new
  end

  def create
    newly_created_student_class = StudentClass.create(student_class_params(:student_id, :school_class_id))
    newly_created_student_class.update(current: true)
    redirect_to student_path(newly_created_student_class.student)
    #redirect_to student_path(student_class_params(:student_id)[:student_id])
  end

  def destroy
    @student_class_to_destroy = StudentClass.find(params[:id])
    @student_class_to_destroy.destroy
    redirect_to student_path(@student_class_to_destroy.student)
  end

  private

  def student_class_params(*args)
    params.require(:student_class).permit(*args)
  end

end
