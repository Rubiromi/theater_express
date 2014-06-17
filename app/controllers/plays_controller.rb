class PlaysController < ApplicationController
  # before_action :find_play

  def index
    @theater = Theater.find(params[:theater_id])
    @plays = @theater.plays
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
    @play = Play.new
  end

  def edit
  end

  private

  # def find_play
  #   @play = Play.find(params[:play_id])
  # end

end
