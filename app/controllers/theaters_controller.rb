class TheatersController < ApplicationController
  # before_action :find_theater

  def index
    @theaters = Theater.all
    # @theaters = Theater.search(params[:search])
  end

  def show
    @theater = Theater.find(params[:id])

  end

  def new
    @theater = Theater.new
  end

  private
  #
  # def find_theater
  #   @theater = Theater.find(params[:theater_id])
  # end

end
