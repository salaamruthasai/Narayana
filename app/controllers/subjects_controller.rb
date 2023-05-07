class SubjectsController < ApplicationController
  def index
    @id=Lecturer.find(1)
    @subject=@id.subjects

    render json: @subject ,status: 200
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
