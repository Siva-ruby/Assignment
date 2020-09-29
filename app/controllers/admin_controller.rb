class AdminController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(create_params)

    if @doctor.save
      redirect_to admin_index_path
    else
      render 'new'
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])

    if @doctor.update(create_params)
      redirect_to admin_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to admin_index_path
  end


  private
  def create_params
    params.require(:admin).permit(:name, :category, :phone_no, :email)
  end
end
