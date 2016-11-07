class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
    @reservation = Reservation.new
    @bed = params[:bed_id]
  end

  def edit
  end

  def create       
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'A reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:bed_id, :user_id, :reserve_date, :reopen_date)
    end
end
