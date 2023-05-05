class LecturersController < ApplicationController
  def index
    @lecturer=Lecturer.all
      render json: @lecturer ,status: 200
    end

  def show
    @lecturer=Lecturer.find(params[:id])
    if @lecturer
      render json: @lecturer ,status: 200
    else
      render json: {error: "Not Found"}
    end
  end

  def destroy
    @lecturer=Lecturer.find(params[:id])
   
    if @lecturer
      @lecturer.destroy
      render json: {message: "Record Deleted Successfully"}
    else
      render json: {error:"Record Not Found"}
    end
  end

  def update
    @lecturer=Lecturer.find(params[:id])
    if @lecturer
      @lecturer.update(name: params[:name],subject: params[:subject])
      render json: "updated Successfully"
    else
      render json: {error: "updation failed"}
    end
  end

  def create
    @lecturer=Lecturer.new(
      name: lect_params[:name],
      subject: lect_params[:subject]
    )
    if @lecturer.save
      render json: @lecturer ,status: 200
    else
      render json: {error: "Error creating"}
    end


  end


  private 
   def lect_params
    params.require(:lecturer).permit(:name,:subject)
   end


end
