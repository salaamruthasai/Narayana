class StudentsController < ApplicationController
  def index
    @students=Student.all
    render json: @students ,status: 200
  end

  def show
    @student=Student.find(params[:id])
    if @student
    render json: @student ,status: 200
    else
      render json: {error: "Record Not found"}
    end
  
  end

  def create
    @student=Student.new(name: stu_params[:name],section: stu_params[:section])
    if @student.save
      render json: @student ,status: 200
    else
      render json: {error: "Enter a valid data"}
    end

  end

  def update
    @student=Student.find(params[:id])
    if @student
       @student.update(name: params[:name],section: params[:section])
       render json: @student ,status: 200
    end
    

    
  end

  def destroy
    @student=Student.find(params[:id])
    if @student
      @student.destroy
      render json: {message: "Successfully deleted"}
    else
      render json: {error: "please enter a valid id "}
    
    end
  end


  private 
  def stu_params
    params.require(:student).permit(:name,:section)
  end
end
