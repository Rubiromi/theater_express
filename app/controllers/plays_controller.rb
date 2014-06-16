class PlaysController < ApplicationController
  before_action :find_theater

  def index
    @plays = Play.all
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit


  private

  def find_theater
    @theater = Theater.find(params[:theater_id])
  end

end
