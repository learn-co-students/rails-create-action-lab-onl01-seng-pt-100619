class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save

    #each route will automatically check for a matching view..
    # since we don't need a view for create, we must redirect
    # after we are done saving the post... in order to avoid errors.
    
    redirect_to student_path(@student)
  end

end
