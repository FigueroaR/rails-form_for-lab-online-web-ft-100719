class StudentsController < ApplicationController
  
  def index 
    @students = Student.all 
  end
  
  def new 
    @student = Student.new 
  end
  
  def create
    #binding.pry
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end 
      
  def show 
    #binding.pry
    @student = Student.find_by(params[:id])
  end 
        
        
  def edit 
    #binding.pry
    @student = Student.find_by(params[:id])
    
  end
        
  def update
    #binding.pry
    @student = Student.find_by(params[:id])
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    @student.save
    redirect_to student_path(@student)
  end
end
