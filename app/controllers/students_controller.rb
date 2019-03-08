class StudentsController < ApplicationController
  def new
  end

  def create
    session[:student_number] = params[:student][:student_number]
    redirect_to new_location_path
  end

end
