class SchoolClassesController < ApplicationController
  
  def create
    @class = SchoolClass.new(school_class_params(:title, :room_number))
    @class.save
    redirect_to school_class_path(@class)
  end
  
  def show
    @class = SchoolClass.find(params[:id])
  end
  
  def new
    @class = SchoolClass.new
  end
  
  def edit
	  @class = SchoolClass.find(params[:id])
	end
  
  
  

  
  
  
  
  
  
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
  
end