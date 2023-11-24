class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @video_games = VideoGame.all
  end
end
  