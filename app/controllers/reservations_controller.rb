class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    if current_user
      @reservation = Reservation.new(reservation_params)
      @reservation.user = current_user
      @video_game = VideoGame.find(params[:video_game_id])
      @reservation.video_game = @video_game
      if @reservation.save!
        redirect_to video_games_path, notice: "Your game was successfully reserved."
      else
        render "video_games/show", status: :unprocessable_entity
      end
    end
  end

  def new
    @reservation = Reservation.new
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to video_game_path status: :see_other
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to video_game_path, notice: "Your reservation was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

private

def reservation_params
params.require(:reservation).permit(:user_id, :video_game_id, :start_location, :end_location)
end
end
