class SchoolClassesController < ApplicationController
  def index
    @all_school_classes = SchoolClass.all
  end

  def new
    @new_school_class = SchoolClass.new 
  end

  def create
    newly_created_school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(newly_created_school_class)
  end

  def show
    @school_class_to_show = SchoolClass.find(params[:id])
  end

  def edit
    @school_class_to_edit = SchoolClass.find(params[:id])
  end

  def update
    school_class_to_update = SchoolClass.find(params[:id])
    school_class_to_update.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(school_class_to_update)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args) 
  end

end
