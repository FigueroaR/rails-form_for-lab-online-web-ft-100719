class SchoolClassesController < ApplicationController

  def index 
    @class = SchoolClass.all
  end

  def new 
    @class = SchoolClass.new
  end 

  def create
    #byebug
    @class = SchoolClass.create(room_number: params[:school_class][:room_number], title: params[:school_class][:title])
    redirect_to school_class_path(@class)
  end 
      
  def show 
    @class = SchoolClass.find(params[:id])
  end 
        
        
  def edit 
    @class = SchoolClass.find(params[:id])
  end
          
          
  def update
    #binding.pry
    @class = SchoolClass.find(params[:id])
    @class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    @class.save
    redirect_to school_class_path(@class)
  end
end
