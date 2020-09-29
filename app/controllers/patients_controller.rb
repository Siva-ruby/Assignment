class PatientsController < ApplicationController
  def index
    @doctors = Doctor.all
  end
end
