class VideoGamesController < ApplicationController
  # before_action :set_video_game, only: %i[ show edit update destroy ]

  def index
    @video_games = VideoGame.all
  end

  def create
    if current_user
      @video_game = VideoGame.new(video_game_params)
      @video_game.user = current_user
      @video_game.save
      if @video_game.save
        redirect_to video_games_path, notice: "Your game was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def new
    @video_game = VideoGame.new
  end

  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy
    redirect_to @users, notice: "Your game was successfully deleted.", status: :see_other
  end

  def update
    @video_game = VideoGame.find(params[:id])
    if @video_game.update(video_game_params)
      redirect_to @users, notice: "Your game was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end
end

private

  # def set_video_game
  #   @video_game = VideoGame.find(params[:id])
  # end


  def video_game_params
    params.require(:video_game).permit(:title, :description, :price, :category)
  end
