class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new()
    @appointment.name = params['name']
    @appointment.phone = params[:phone]
    @appointment.category = Doctor.find(params[:category]).category
    @appointment.select_date = params[:select_date]
    @appointment.select_time = params[:select_time]
    @appointment.end_time = params[:end_time]
    @appointment.name = params[:name]
    @appointment.email = params[:email]
    @appointment.message = params[:message]
    @appointment.doctor_id = params[:category]
    @appointment.patient_id = current_user.id
    if @appointment.save
      redirect_to patients_path
    end
  end

  def show
    
  end

  private
  def create_params
    params.require(:appointment).permit(:name, :category, :phone, :email, :select_date, :select_time, :end_time, :message)
  end
end
