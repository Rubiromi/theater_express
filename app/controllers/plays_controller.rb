class PlaysController < ApplicationController
  # before_action :find_play

  def index
    @plays = Play.all
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
    @play = Play.new
  end

  def edit


  private

  # def find_play
  #   @play = Play.find(params[:play_id])
  # end

end
