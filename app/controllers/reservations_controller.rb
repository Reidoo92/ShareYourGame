class ReservationsController < ApplicationController

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to desired_path, notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  def new
    @reservation = Reservation.new
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update
  end
end

private

def reservation_params
params.require(:reservation).permit(:user_id, :video_game_id, :start_reservation, :end_reservation)
end
