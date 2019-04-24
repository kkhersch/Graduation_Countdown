class StudentsController < ApplicationController
  def new
    @student = Student.new
  end
  
  def index
    @student = Student.all
  end
  
  def create
    @workflow = CreatesStudent.new(
    days_until_graduation: params[:student][:days_until_graduation],
    credits: params[:student][:credits],
    declared_major: params[:student][:declared_major])
    @workflow.create
    redirect_to students_path
  end
end
