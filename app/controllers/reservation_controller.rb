class ReservationController < ApplicationController
  #before_action :authenticate_user!
  #before_action :set_reservation, only: [:show]

  def show
    puts "PARAMS"
    puts params.inspect
    @hospice =  Hospice.find(params[:id])
  end
end