class TheatersController < ApplicationController
  # before_action :find_theater

  def index
    @theaters = Theater.search(params[:search])
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new(theater_params)

    if @theater.save
      redirect_to :theater
    else
      redirect_to :new
    end
  end

  private

  def theater_params
    params.require(:theater).permit(:name, :location, :telephone_number, :url, :business_hour)

  end
  #
  # def find_theater
  #   @theater = Theater.find(params[:theater_id])
  # end

end
